require 'yaml'
MESSAGES = YAML.load_file('car_loan_calculator.yml')

# Methods
def prompt(msg)
  puts "=> #{msg}"
end

def prompt_message(msg)
  prompt(MESSAGES[msg])
end

def valid_integer?(num)
  (num.to_i.to_s == num)
end

# include trailing zeros when inputting APR
require 'bigdecimal'
def valid_float?(num)
  float = BigDecimal(num)
  float.positive? && true
rescue ArgumentError
  false
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

def prompt_user_loan_amount
  loop do
    prompt_message('loan')
    loan_amount = gets().chomp()
    if valid_integer?(loan_amount) && loan_amount.to_i > 0
      clear_screen(0.5)
      return loan_amount
    else
      prompt_message('loan_error')
      clear_screen(2.0)
    end
  end
end

def prompt_user_loan_term_years
  loop do
    prompt_message('years')
    loan_term_years = gets().chomp()
    if valid_integer?(loan_term_years) && loan_term_years.to_i >= 0
      clear_screen(0.5)
      return loan_term_years
    else
      prompt_message('loan_term_error')
      clear_screen(2.0)
    end
  end
end

def prompt_user_loan_term_months
  loop do
    prompt_message('months')
    loan_term_months = gets().chomp()
    if valid_integer?(loan_term_months) && loan_term_months.to_i >= 0
      return loan_term_months
    else
      prompt_message('loan_term_error')
      clear_screen(1.5)
    end
  end
end

def prompt_user_apr
  loop do
    prompt_message('APR')
    apr = gets().chomp()
    if valid_float?(apr)
      clear_screen(0.5)
      return apr
    else
      prompt_message('apr_error')
      clear_screen(1.5)
    end
  end
end

def display_data(amount, term, apr, monthly)
  prompt(MESSAGES['output1'] + " $#{amount}")
  prompt(MESSAGES['output2'] + " #{term}")
  prompt(MESSAGES['output3'] + " #{apr}%")
  prompt(MESSAGES['output4'] + " $#{monthly.round(2)}")
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

  # Final Remarks
  prompt_message('final')
  input = gets().chomp().downcase()
  break unless input.start_with?('y')
end

clear_screen(0.5)
prompt_message('goodbye')
