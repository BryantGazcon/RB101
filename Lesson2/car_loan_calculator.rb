def prompt(msg)
  puts("=> #{msg}")
end
loop do 
  prompt("Welcome to the ONE and ONLY Car Loan Calculator")

  loan_amount = nil
  loop do
    prompt("Loan Amount:")
    loan_amount = gets().chomp()
  
    if loan_amount.empty? || loan_amount.to_i <= 0 
      puts "Not valid"
    else
      break
    end
  end

  loan_term_years = nil
  loop do 
    prompt("Loan Term (years): ")
    loan_term_years = gets().chomp
    if loan_term_years.empty? || loan_term_years.to_i <= 0 
      puts "Not valid"
    else
      break
    end
  end

  loan_term_months = nil
  loop do 
    prompt("Loan Term (months): ")
    loan_term_months = gets().chomp()
    if loan_term_months.empty? || loan_term_months.to_i.to_s != loan_term_months
      puts "Not valid"
    else
      break
    end
  end

  apr = nil
  loop do
    prompt("APR: ")
    apr = gets().chomp()
    if apr.empty? || apr.to_f <= 0 
      puts "Not Valid"
    else
      break
    end
  end

  loan_term = (loan_term_years.to_i * 12) + loan_term_months.to_i

  monthly_interest_rate = (apr.to_f / 12) / 100

  monthly_payment = loan_amount.to_i * (monthly_interest_rate.to_f / (1 - (1 + monthly_interest_rate.to_f)**(-loan_term)))

  puts("Your monthly payment is $#{monthly_payment.round(1)}")

  puts("Would you like to do another calculation? (Y for yes)")
  input = gets().chomp().downcase()
  break unless input.start_with?("y")
end