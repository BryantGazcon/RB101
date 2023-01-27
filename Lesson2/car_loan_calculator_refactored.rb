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
  (num.to_i.to_s == num) #&& (num.to_i > 0)
end

# include trailing zeros when inputting APR
require 'bigdecimal'
def valid_float?(num)
  begin
      float = BigDecimal(num)
      float.positive? && true
    rescue ArgumentError
      false
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

def prompt_user_loan_amount()
  loop do
    prompt_message('loan')
    loan_amount = gets().chomp()
    if valid_integer?(loan_amount) && loan_amount.to_i > 0
      clear_screen(0.5)
      return loan_amount
      break
    else
      prompt_message('loan_error')
      clear_screen(2.0)
    end
  end
end

def prompt_user_loan_term_years()
  loop do
    prompt_message('years')
    loan_term_years = gets().chomp()
    if valid_integer?(loan_term_years) && loan_term_years.to_i >= 0
      clear_screen(0.5)
      return loan_term_years
      break
    else
      prompt_message('duration_error')
      clear_screen(2.0)
    end
  end
end

def prompt_user_loan_term_months()
   loop do
    prompt_message('months')
    loan_term_months = gets().chomp()
    if valid_integer?(loan_term_months) && loan_term_months.to_i >= 0
      return loan_term_months
      break unless loan_term_years.to_i == 0 && loan_term_months.to_i == 0
    else
      prompt_message('duration_error')
      clear_screen(1.5)
    end
  end
end

def prompt_user_apr()
  loop do
    prompt_message('APR')
    apr = gets().chomp()
    if valid_float?(apr)
      clear_screen(0.5)
      return apr
      break
    else
      prompt_message('apr_error')
      clear_screen(1.5)
    end
  end
end

def display_data(amount, term, apr, monthly)
  puts "Loan Amount: #{amount}"
  puts "Loan Term: #{term}"
  puts "APR: #{apr}"
  puts "Monthly Payment: #{monthly.round(2)}"
end

def prompt_message(word)
  prompt(messages(word, LANGUAGE))
end

prompt("For ENGLISH press 1, para ESPANOL oprima 2")
answer = gets().chomp()
if answer == '1'
  LANGUAGE = 'en'
else
  LANGUAGE = 'es'
end

loop do # Main Loop
  prompt_message('welcome')
  clear_screen(1.5)

  # Loan Amount

  loan_amount = prompt_user_loan_amount()

  # Loan Term
  loan_term_years = prompt_user_loan_term_years()
  loan_term_months = prompt_user_loan_term_months()
  
  # APR
  clear_screen(0.5)
  apr = prompt_user_apr()

  # Calculations
  loan_term = calculate_loan_term(loan_term_years, loan_term_months)

  monthly_interest_rate = calculate_monthly_interest(apr)

  monthly_payment = calculate_monthly_payment(loan_amount, monthly_interest_rate, loan_term)

  display_data(loan_amount, loan_term, apr, monthly_payment)
  #prompt(messages('output', LANGUAGE) + "$#{monthly_payment.round(2)}")

  # Final Remarks
  prompt_message('final')
  input = gets().chomp().downcase()

  if LANGUAGE == 'en'
    break unless input.start_with?('y')
  else
    break unless input.start_with?('s')
  end
end

clear_screen(0.5)
prompt_message('Goodbye')
