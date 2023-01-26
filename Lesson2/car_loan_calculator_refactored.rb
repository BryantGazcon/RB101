=begin
INPUT
- loan amount
- APR
- loan duration

OUTPUT
- calculate monthly interest rate from APR
- loan duration total in months
- monthly payment rounded

RULES
- no negative numbers, 0 or greater only

ALGORITHM
- welcome user
- ask user for loan amount, verify it is valid number(greater than 0)
- ask user for APR, verify that is it valid number, can be 0 or greater
- ask for loan duration, how many years?(verify if valid, can be 0 or greater)
- then ask how many months(can be 0 or greater)
- either years is 0 or months but not both

=end

require 'yaml'
MESSAGES = YAML.load_file('car_loan_calculator.yml')

# Methods
def prompt(msg)
  puts "=> #{msg}"
end

def messages(msg, lang = 'en')
  MESSAGES[lang][msg]
end

def valid_integer?(num)
  (num.to_i.to_s == num) && (num.to_i >= 0)
end

# include trailing zeros when inputting APR
require 'bigdecimal'
def valid_float?(num)
  if valid_integer?(num)
    true
  else
    begin
      float = BigDecimal(num)
      float.positive? && true
    rescue ArgumentError
      false
    end
  end
end


def valid_number?(num)
  valid_integer?(num) || valid_float?(num)
end

def calculate_loan_term(years, months)
  (years.to_i * 12) + months.to_i
end

def calculate_monthly_interest(rate)
  (rate.to_f / 100) / 12
end

def calculate_monthly_payment(p, j, n)
  if j != 0
    (p.to_f * j.to_f) / (1 - (1 + j.to_f)**(-n))
  else
    p.to_f / n.to_f
  end
end

def clear_screen(num)
  sleep(num)
  system('clear')
end

prompt("For ENGLISH press 1, para ESPANOL oprima 2")
answer = gets().chomp()
if answer == '1'
  LANGUAGE = 'en'
else
  LANGUAGE = 'es'
end

loop do # Main Loop
  prompt(messages('welcome', LANGUAGE))
  clear_screen(1.5)

  # Loan Amount
  loan_amount = nil
  loop do
    prompt(messages('loan', LANGUAGE))
    loan_amount = gets().chomp()
    if valid_number?(loan_amount)
      clear_screen(0.5)
      break
    else
      prompt(messages('error', LANGUAGE))
    end
  end

  # Loan Term
  loan_term_years = nil
  loan_term_months = nil
  loop do
    prompt(messages('years', LANGUAGE))
    loan_term_years = gets().chomp()
    if valid_number?(loan_term_years)
      nil
    else
      prompt(messages('error', LANGUAGE))
    end

    prompt((messages('months', LANGUAGE)))
    loan_term_months = gets().chomp()
    if valid_number?(loan_term_months)
      break unless loan_term_years.to_i == 0 && loan_term_months.to_i == 0
    else
      prompt(messages('error', LANGUAGE))
    end
  end

  # APR
  clear_screen(0.5)
  apr = nil
  loop do
    prompt(messages('APR', LANGUAGE))
    apr = gets().chomp()
    if valid_number?(apr)
      clear_screen(0.5)
      break
    else
      prompt(messages('error', LANGUAGE))
    end
  end

  # Calculations
  loan_term = calculate_loan_term(loan_term_years, loan_term_months)

  monthly_interest_rate = calculate_monthly_interest(apr)

  monthly_payment = calculate_monthly_payment(loan_amount, monthly_interest_rate, loan_term)

  prompt(messages('output', LANGUAGE) + "$#{monthly_payment.round(2)}")

  # Final Remarks
  prompt(messages('final', LANGUAGE))
  input = gets().chomp().downcase()

  if LANGUAGE == 'en'
    break unless input.start_with?('y')
  else 
    break unless input.start_with?('s')
  end  
end 

clear_screen(0.5)
prompt(messages('goodbye', LANGUAGE))