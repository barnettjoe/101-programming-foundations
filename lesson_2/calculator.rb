# ask the user for two numbers
# ask the user for an operaon to perform
# perform the operation on the two numbers
# output the result

require 'yaml'

MESSAGES = YAML.load_file('calculator_messages.yml')

def message(msg, lang = 'de')
  MESSAGES[lang][msg]
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  word = case op
  when '1'
    message("a")
  when '2'
    message("s")
  when '3'
    message("m")
  when '4'
    message("d")
  end
  word
end

prompt(message("welcome"))
name = ''
loop do
  prompt(message("get_name"))
  name = Kernel.gets().chomp()
  break unless name == ''
end
prompt("#{message("hello")} #{name}!")
loop do # the main loop
  number1 = ''

  loop do
    prompt(message("num1"))
    number1 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else
      prompt(message("inval_num"))
    end
  end
  number2 = ''
  loop do
    prompt(message("num2"))
    number2 = Kernel.gets().chomp()
    if valid_number?(number2)
      break
    else
      prompt(message("inval_num"))
    end
  end
  operator = ''
  loop do
    prompt(message("op_prompt"))
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(message("inval_op"))
    end
  end
  prompt("#{operation_to_message(operator)} #{message("nums")}...")
  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number2.to_f() == 0.0 ? false : number1.to_f() / number2.to_f()
           end
  if result
    prompt("#{message("result")} #{result}")
  else
    prompt(message("zero_div_error"))
  end  
  prompt("#{message("again")} (#{message("y")} / #{message("n")})")
  answer = Kernel.gets().chomp()
  break unless answer.downcase == message("y")
end

prompt(message("thanks"))