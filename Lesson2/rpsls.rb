require 'yaml'
MESSAGES = YAML.load_file('rpsls.yml')

MOVES = {
  'rock' => { abbreviation: 'r', beats: ['scissors', 'lizard'] },
  'lizard' => { abbreviation: 'l', beats: ['spock', 'paper'] },
  'spock' => { abbreviation: 'sp', beats: ['scissors', 'rock'] },
  'paper' => { abbreviation: 'p', beats: ['spock', 'rock'] },
  'scissors' => { abbreviation: 'sc', beats: ['paper', 'lizard'] }
}

def prompt(message)
  puts("=> #{message}")
end

def prompt_message(message)
  prompt(MESSAGES[message])
end

def validate_user_choice_word(choice)
  if MOVES.keys.include?(choice)
    true
  end
end

def validate_user_choice_abbrev(choice)
  if MOVES.values.any? { |key| key[:abbreviation] == choice }
    true
  end
end

def prompt_choice
  loop do
    prompt("Choose One: #{MOVES.keys.join(', ')}")
    choice = gets.chomp.downcase
    if validate_user_choice_word(choice) || validate_user_choice_abbrev(choice)
      return choice
    else
      prompt_message('full_abbrev')
      next
    end
  end
end

def convert_abbrev_word(choice)
  case choice
  when 'r' then 'rock'
  when 'l' then 'lizard'
  when 'sp' then 'spock'
  when 'p' then 'paper'
  when 'sc' then 'scissors'
  else
    choice
  end
end

def win?(player, computer)
  if MOVES[player][:beats].include?(computer)
    prompt("Round Won! You chose #{player}; Computer chose #{computer}")
  elsif MOVES[computer][:beats].include?(player)
    prompt("Round Lost! You chose #{player}; Computer chose #{computer}")
  else
    prompt("Tied Round! You chose #{player}; Computer chose #{computer}")
  end
end

def keep_score(wins, losses, tie, player, computer)
  if MOVES[player][:beats].include?(computer)
    wins += 1
  elsif MOVES[computer][:beats].include?(player)
    losses += 1
  else
    tie += 1
  end
  return wins, losses, tie
end

def clear_screen(num)
  sleep(num)
  system('clear')
end

def prompt_ready?
  prompt_message('ready_1')
  clear_screen(3)
  prompt_message('ready_2')
  clear_screen(3)
  prompt_message('ready_3')
  clear_screen(2)
  prompt_message('ready_4')
end

def display_results(wins, losses, tie)
  clear_screen(2.75)
  <<-MSG
  -----SCORE_BOARD-----
  USER WINS: #{wins}
  ---------------------
  COMPUTER WINS: #{losses}
  ---------------------
  TIES: #{tie}
  ---------------------
MSG
end

def print_final_msg(user, computer)
  if user == 3
    clear_screen(3)
    prompt_message('final_1')
  elsif computer == 3
    clear_screen(3)
    prompt_message('final_2')
  end
end

def reset_counter(win_count, loss_count, tie_count)
  win_count = 0
  loss_count = 0
  tie_count = 0
  return win_count, loss_count, tie_count
end

user_wins = 0
user_losses = 0
ties = 0

system('clear')
prompt_ready?()

loop do
  puts display_results(user_wins, user_losses, ties)
  user_choice = prompt_choice()
  comp_choice = MOVES.keys.sample.to_s

  user_choice = convert_abbrev_word(user_choice)
  win?(user_choice, comp_choice)

  user_wins, user_losses, ties = keep_score(user_wins, user_losses, ties, user_choice, comp_choice)

  print_final_msg(user_wins, user_losses)

  if user_wins == 3 || user_losses == 3
    prompt_message('final_3')
    input = gets.chomp
    clear_screen(2)
    break unless input.start_with?('y')
    user_wins, user_losses, ties = reset_counter(user_wins, user_losses, ties)
  end
end
