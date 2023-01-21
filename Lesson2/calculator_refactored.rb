require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
# puts MESSAGES.inspect


def messages(message, lang = 'en')
  MESSAGES[lang][message]
end

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
            messages('a', LANGUAGE)
          when '2'
            messages('s', LANGUAGE)
          when '3'
            messages('m', LANGUAGE)
          when '4'
            messages('d', LANGUAGE)
        end
  
  x = 'random line of code'

  word
end

prompt("For ENGLISH press 1, para ESPANOL oprima 2 ")
input_initial = gets().chomp()
if input_initial == '2'
  LANGUAGE = 'es'
else
  LANGUAGE = 'en'
end

prompt(messages('welcome', LANGUAGE))
name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end

prompt("Hello #{name}")

loop do # main loop
  number1 = nil
  loop do
    prompt(messages('first_number', LANGUAGE))
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt(messages('hmm', LANGUAGE))
    end
  end

  number2 = nil

  loop do
    prompt(messages('second_number', LANGUAGE))
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt(messages('hmm', LANGUAGE))
    end
  end
  
  prompt(messages('operator_prompt', LANGUAGE))
  
  operator = nil
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('choose', LANGUAGE))
    end
  end

  prompt(operation_to_message(operator) + messages('two', LANGUAGE))

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
           
           prompt(messages('result', LANGUAGE) + " #{result}")

  prompt(messages('again?', LANGUAGE))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

  prompt(messages('thanks', LANGUAGE))