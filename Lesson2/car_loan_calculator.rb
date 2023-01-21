require 'yaml'
MESSAGES = YAML.load_file('car_loan_calculator.yml')

def messages(msg, lang = 'en')
  MESSAGES[lang][msg]
end

def prompt(msg)
  puts("=> #{msg}")
end

prompt("For ENGLISH press 1, para ESPANOL oprima 2")
answer = gets().chomp()
if answer == '1'
  LANGUAGE = 'en'
else
  LANGUAGE = 'es'
end

loop do 
  prompt(messages('welcome', LANGUAGE))

  loan_amount = nil
  loop do
    prompt(messages('loan', LANGUAGE))
    loan_amount = gets().chomp()
  
    if loan_amount.empty? || loan_amount.to_i <= 0 
      prompt('error', LANGUAGE)
    else
      break
    end
  end

  loan_term_years = nil
  loop do 
    prompt(messages('years', LANGUAGE))
    loan_term_years = gets().chomp
    if loan_term_years.empty? || loan_term_years.to_i <= 0 
      prompt(messages('error', LANGUAGE))
    else
      break
    end
  end

  loan_term_months = nil
  loop do 
    prompt(messages('months', LANGUAGE))
    loan_term_months = gets().chomp()
    if loan_term_months.empty? || loan_term_months.to_i.to_s != loan_term_months
      prompt(messages('error', LANGUAGE))
    else
      break
    end
  end

  apr = nil
  loop do
    prompt(messages('APR', LANGUAGE))
    apr = gets().chomp()
    if apr.empty? || apr.to_f <= 0 
      prompt(messages('error', LANGUAGE))
    else
      break
    end
  end

  loan_term = (loan_term_years.to_i * 12) + loan_term_months.to_i

  monthly_interest_rate = (apr.to_f / 12) / 100

  monthly_payment = loan_amount.to_i * (monthly_interest_rate.to_f / (1 - (1 + monthly_interest_rate.to_f)**(-loan_term)))

  prompt(messages('output', LANGUAGE) + "$#{monthly_payment.round(1)}")

  prompt(messages('final', LANGUAGE))
  input = gets().chomp().downcase()
  break unless input.start_with?("y")
end