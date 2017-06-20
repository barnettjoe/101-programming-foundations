OPS = {'ADD' => '+', 'SUB' => '-', 'MULT' => '*', 'DIV' => '/' , 'MOD' => '%'}

def empty_stack
  puts "ERROR: STACK IS EMPTY"
end

def minilang(command)
  stack = []
  reg = 0
  input = command.split
  input.each do |x|
    if x.to_i.to_s == x
      reg = x.to_i
    elsif OPS.keys.include? x 
      stack.empty? ? empty_stack : (reg = reg.send(OPS[x], stack.pop))
    else
      case x
      when 'PUSH' then stack.push(reg)
      when 'POP' then stack.empty? ? empty_stack : reg = stack.pop
      when 'PRINT' then puts reg
      else
        puts "ERROR: COMMAND #{x} NOT RECOGNIZED"
      end
    end
  end
end

minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT SUB PUSH 3 ADD DIV PRINT')
