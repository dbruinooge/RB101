def minilang(string)
  register = 0
  stack = []
  commands = string.split
  commands.each do |command|
    # Further exploration: detect empty stack 
    if ['POP', 'MOD', 'DIV', 'MULT', 'SUB', 'ADD'].include?(command)
        return "Error: EmptyStackException" if stack.empty?
    end
    if command.to_i.to_s == command
      register = command.to_i
    elsif command == 'PUSH'
      stack << register
    elsif command == 'ADD'
      register += stack.pop
    elsif command == 'SUB'
      register -= stack.pop
    elsif command == 'MULT'
      register *= stack.pop
    elsif command == 'DIV'
      register /= stack.pop
    elsif command == 'MOD'
      register %= stack.pop
    elsif command == 'POP'
      register = stack.pop
    elsif command == 'PRINT'
      puts register
    # Further exploration: detecting invalid commands
    else
      return "Error: Invalid token"
    end
  end
  nil
end

# Further exploration
p minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')
p minilang('CHEESE')
p minilang('POP')
