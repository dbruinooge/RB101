VALID_CHOICES = %w(rock paper scissors lizard Spock)
VICTORY_CONDITIONS = { rock: ['scissors', 'lizard'],
                       scissors: ['paper', 'lizard'],
                       paper: ['rock', 'Spock'],
                       lizard: ['Spock', 'paper'],
                       spock: ['rock', 'scissors'] }
def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  VICTORY_CONDITIONS[first.downcase.to_sym].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

player_wins = 0
computer_wins = 0

loop do
  choice = ''
  prompt("Rock, scissors, paper, lizard, spock: best out of 3 wins the match!")
  loop do
    prompt("Choose one: (r)ock, (s)cissors, (p)aper, (l)izard, (S)pock")
    choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(choice.downcase)
      break
    else
      case choice
      when 'r'
        choice = 'rock'
        break
      when 'p'
        choice = 'paper'
        break
      when 's'
        choice = 'scissors'
        break
      when 'l'
        choice = 'lizard'
        break
      when 'S'
        choice = 'Spock'
        break
      end
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)
  puts

  player_wins += 1 if win?(choice, computer_choice)
  computer_wins += 1 if win?(computer_choice, choice)

  if player_wins == 3
    prompt("Player wins the match, #{player_wins} to #{computer_wins}!")
    break
  elsif computer_wins == 3
    prompt("Computer wins the match, #{computer_wins} to #{player_wins}!")
    break
  end

  prompt("Current score: Player #{player_wins}, Computer #{computer_wins}")

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
  player_wins = 0
  computer_wins = 0
end

prompt("Thank you for playing. Goodbye!")
