def minilang(string)
  stack = []
  register = 0
  array = string.split
  array.each do |instruction|
    case instruction
    when 'PUSH' then stack.push(register)
    when 'ADD' then register += stack.pop
    when 'SUB' then resgiter -= stack.pop
    when 'MULT' then register *= stack.pop
    when 'DIV' then register /= stack.pop
    when 'MOD' then register %= stack.pop
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    else              register = instruction.to_i
    end
  end
end

minilang('PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')

=begin
PROBLEM
- take a string
- convert it to series of instructions of various ways 
  to interact with stack and register
-

EXAMPLES


ALGORITHM
- 

CODE

=end