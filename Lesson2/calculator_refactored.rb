require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
# puts MESSAGES.inspect

def prompt(message)
  Kernel.puts("=> #{message}")
end

def float?(num)
  num.to_f.to_s == num
end
def integer?(num)
  num.to_i.to_s == num
end

def number?(num)
  integer?(num) || float?(num) 
end

def operation_to_message(op)
 word = case op
          when '1'
            'Adding'
          when '2'
            'Subtracting'
          when '3'
            'Multiplying'
          when '4'
            'Dividing'
        end
  
  x = 'random line of code'

  word
end

prompt(MESSAGES['welcome'])
name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hello #{name}")

loop do # main loop
  number1 = nil
  loop do
    prompt(MESSAGES['first_number'])
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt(MESSAGES['hmm'])
    end
  end

  number2 = nil

  loop do
    prompt(MESSAGES['second_number'])
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt(MESSAGES['hmm'])
    end
  end
  
  prompt(MESSAGES['operator_prompt'])
  
  operator = nil
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['choose'])
    end
  end

  prompt(operation_to_message(operator) + MESSAGES['two'])

  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
           end
           
           prompt("The result is #{result}")

  prompt(MESSAGES['again?'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

  prompt(MESSAGES['thanks'])