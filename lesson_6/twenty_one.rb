CARD_VALUES = { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
                '7' => 7, '8' => 8, '9' => 9, '10' => 10, 'Jack' => 10,
                'Queen' => 10, 'King' => 10, 'Ace' => 11 }

# add constant LIMMIT = 21

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
  dealer_hand
end

def deal_card!(deck, hand)
  card = deck.sample
  hand << card
  deck.delete_at(deck.index(card))
end

def display_game_state(d_hand, p_hand)
  puts "Dealer has: #{d_hand[0]} and unknown card"
  puts "Player has: #{p_hand}"
end

def calculate_score(hand)
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
  calculate_score(hand) > 21
end

deck = initialize_deck
player_hand = initialize_player(deck)
dealer_hand = initialize_dealer(deck)

loop do
  # display method, player turn method, dealer turn method
  system 'clear'
  display_game_state(dealer_hand, player_hand)
  puts "Player score: #{calculate_score(player_hand)}"
  break if busted?(player_hand)
  puts "Hit?"
  choice = gets.chomp
  break if choice == 'n'
  deal_card!(deck, player_hand)
end

puts "Player busted!" if busted?(player_hand)
