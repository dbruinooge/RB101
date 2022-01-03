CARDS = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
CARD_SUITS = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
CARD_VALUES = { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
                '7' => 7, '8' => 8, '9' => 9, '10' => 10, 'Jack' => 10,
                'Queen' => 10, 'King' => 10, 'Ace' => 11 }

LIMIT = 21
DEALER_STANDS = 17
INITIAL_BANKROLL = 1000

def joinor(hand, delimiter=', ', word='and')
  if hand.size == 2
    hand.join(" #{word} ")
  else
    hand = hand.dup
    hand[-1] = "#{word} #{hand.last}"
    hand.join(delimiter)
  end
end

def initialize_deck
  CARDS.product(CARD_SUITS).shuffle.map do |subarr|
    { value: subarr[0], suit: subarr[1] }
  end
end

def initialize_player(deck)
  player_hand = []
  2.times { deal_card!(deck, player_hand) }
  player_hand
end

def initialize_dealer(deck)
  dealer_hand = []
  2.times { deal_card!(deck, dealer_hand) }
  dealer_hand.insert(-2, { value: "unknown card", suit: nil })
  dealer_hand
end

def deal_card!(deck, hand)
  hand << deck.pop
end

def hit?
  loop do
    puts "Hit? (y/n)"
    choice = gets.chomp.downcase
    return true if choice == 'y'
    return false if choice == 'n'
    puts "Invalid input."
  end
end

def player_takes_turn!(deck, d_hand, p_hand)
  display_game_state(d_hand, p_hand)
  while hit?
    deal_card!(deck, p_hand)
    display_game_state(d_hand, p_hand)
    break if busted?(p_hand)
  end
end

def dealer_takes_turn!(deck, d_hand, p_hand)
  d_hand.delete_at(1)
  return if busted?(p_hand)
  display_game_state(d_hand, p_hand)
  while total(d_hand) < DEALER_STANDS
    deal_card!(deck, d_hand)
    display_game_state(d_hand, p_hand)
    puts "Dealer draws #{d_hand[-1][:value]}. Press ENTER to continue.."
    gets
  end
end

def display_game_state(d_hand, p_hand)
  system 'clear'
  display_dealer(d_hand)
  puts "-----------------------------------------"
  display_player(p_hand)
  puts "========================================="
end

def display_dealer(d_hand)
  if d_hand.any? { |crd| crd[:value] == 'unknown card' }
    puts "Dealer has: #{joinor(d_hand[0..1].map { |crd| crd[:value] })}"
    puts "Dealer total: #{CARD_VALUES[d_hand[0][:value]]} + ?"
  else
    puts "Dealer has: #{joinor(d_hand.map { |crd| crd[:value] })}"
    puts "Dealer total: #{total(d_hand)}"
  end
end

def display_player(p_hand)
  puts "Player has: #{joinor(p_hand.map { |crd| crd[:value] })}"
  puts "Player total: #{total(p_hand)}"
end

def total(hand)
  total = 0
  hand.each { |card| total += CARD_VALUES[card[:value]] }
  aces = hand.select { |card| card[:value] == 'Ace' }.count
  while total > 21 && aces > 0
    total -= 10
    aces -= 1
  end
  total
end

def busted?(hand)
  total(hand) > LIMIT
end

def collect_bet(bankroll)
  bet = ''
  loop do
    puts "How much you would like to wager? "\
    "(min 1, max #{bankroll})"
    bet = gets.chomp.delete(',').delete_prefix('$')
              .delete_suffix("s").delete_suffix(" dollar").to_i
    break if (1..bankroll).include?(bet)
    puts "Invalid input."
  end
  bet
end

def settle_bet(winner, bankroll, bet)
  if winner.include?('Player wins!')
    bankroll + bet
  elsif winner.include?('Dealer wins!')
    bankroll - bet
  else
    bankroll
  end
end

def broke?(bankroll)
  bankroll <= 0
end

def again?(bankroll)
  puts "You have #{bankroll} dollars left."
  loop do
    puts "Do you want to play again? (y/n)"
    choice = gets.chomp.downcase
    return true if choice == 'y'
    return false if choice == 'n'
    puts "Invalid input."
  end
end

def result(d_hand, p_hand)
  if busted?(p_hand)
    "Player busted! Dealer wins!"
  elsif busted?(d_hand)
    "Dealer busted! Player wins!"
  elsif total(p_hand) > total(d_hand)
    "Player wins!"
  elsif total(d_hand) > total(p_hand)
    "Dealer wins!"
  else
    "It's a tie!"
  end
end

bankroll = INITIAL_BANKROLL

system 'clear'
puts ""
puts "Welcome to Twenty-One!"
puts
puts "You peek into your wallet and see "\
     "#{bankroll} dollars."
puts "The dealer is waiting."
puts "------------------------------------------------------"

loop do
  deck = initialize_deck
  player_hand = initialize_player(deck)
  dealer_hand = initialize_dealer(deck)

  bet = collect_bet(bankroll)
  player_takes_turn!(deck, dealer_hand, player_hand)
  dealer_takes_turn!(deck, dealer_hand, player_hand) if !busted?(player_hand)

  winner = result(dealer_hand, player_hand)
  bankroll = settle_bet(winner, bankroll, bet)
  puts winner
  break if broke?(bankroll) || !again?(bankroll)
end

if broke?(bankroll)
  puts "Clutching your empty wallet, you walk sadly towards the exit."
end

puts
puts "Thanks for playing Twenty-One!"
