def convert_abbrev_word(choice)
  case choice
    when 'r' then 'rock'
    when 'l' then 'lizard'
    when 'sp' then 'spock'
    when 'p' then 'paper'
    when 'sc' then 'scissors'
    else
      return choice
    end
  end