CARD_VALUES = { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
                '7' => 7, '8' => 8, '9' => 9, '10' => 10, 'Jack' => 10,
                'Queen' => 10, 'King' => 10, 'Ace' => 11 }

LIMIT = 21
DEALER_STANDS = 17

def joinor(arr, delimiter=', ', word='and')
  if arr.size == 2
    arr.join(" #{word} ")
  else
    cards = arr.dup
    cards[-1] = "#{word} #{arr.last}"
    cards.join(delimiter)
  end
end

def initialize_deck
  deck = []
  CARD_VALUES.keys.each do |key|
    4.times { deck << key }
  end
  deck
end

def initialize_player(deck)
  player_hand = []
  2.times { deal_card!(deck, player_hand) }
  player_hand
end

def initialize_dealer(deck)
  dealer_hand = []
  2.times { deal_card!(deck, dealer_hand) }
  dealer_hand.insert(-2, "unknown card")
  dealer_hand
end

def deal_card!(deck, hand)
  card = deck.sample
  hand << card
  deck.delete_at(deck.index(card))
end

def hit?
  loop do
    puts "Hit? (y/n)"
    choice = gets.chomp.downcase
    return true if choice.start_with?('y')
    return false if choice.start_with?('n')
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
  d_hand.delete('unknown card')
  display_game_state(d_hand, p_hand)
  while score(d_hand) < DEALER_STANDS
    deal_card!(deck, d_hand)
    display_game_state(d_hand, p_hand)
    puts "Dealer draws #{d_hand[-1]}. Press ENTER to continue.."
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
  if d_hand.any?('unknown card')
    puts "Dealer has: #{joinor(d_hand[0..1])}"
    puts "Dealer score: #{CARD_VALUES[d_hand[0]]} + ?"
  else
    puts "Dealer has: #{joinor(d_hand)}"
    puts "Dealer score: #{score(d_hand)}"
  end
end

def display_player(p_hand)
  puts "Player has: #{joinor(p_hand)}"
  puts "Player score: #{score(p_hand)}"
end

def score(hand)
  score = 0
  hand.each { |card| score += CARD_VALUES[card] }
  aces = hand.count('Ace')
  while score > 21 && aces > 0
    score -= 10
    aces -= 1
  end
  score
end

def busted?(hand)
  score(hand) > LIMIT
end

def result(d_hand, p_hand)
  if busted?(p_hand)
    "Player busted!"
  elsif busted?(d_hand)
    "Dealer busted!"
  elsif score(p_hand) > score(d_hand)
    "Player wins!"
  elsif score(d_hand) > score(p_hand)
    "Dealer wins!"
  else
    "It's a tie!"
  end
end

def again?
  puts "Do you want to play again? (y/n)"
  choice = gets.chomp
  return true if choice.downcase.start_with?('y')
  false
end

# gameplay loop
loop do
  deck = initialize_deck
  player_hand = initialize_player(deck)
  dealer_hand = initialize_dealer(deck)

  player_takes_turn!(deck, dealer_hand, player_hand)
  dealer_takes_turn!(deck, dealer_hand, player_hand) if !busted?(player_hand)

  display_game_state(dealer_hand, player_hand)
  puts result(dealer_hand, player_hand)
  break if !again?
end

puts "Goodbye!"

