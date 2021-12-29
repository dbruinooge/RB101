def print_in_box(message)
  length = message.length
  if length > 76
    message = word_wrap(message)
    length = max_length(message)
  end
  
  horizontal_rule = "+#{'-' * (length + 2)}+"
  empty_line = "|#{' ' * (length + 2)}|"
  
  puts horizontal_rule
  puts empty_line
  
  if message.kind_of?(Array)
    message.each do |line|
      spaces = 1 + ((length - line.length) / 2)
      puts "|#{" " * spaces}#{line}#{" " * (length - line.length - spaces + 2)}|"
    end
  else
    puts "| #{message} |"
  end

  puts empty_line
  puts horizontal_rule
end

def word_wrap(message)
  wrapped_message = message.dup
  message_array = []
  limit = 76
  while wrapped_message.length > limit
    position = limit
    loop do
      if wrapped_message[position] == ' '
        message_array << wrapped_message.slice!(0..(position)).rstrip!
        break
      end
      position -= 1
    end
  end
  message_array
end

def max_length(message_array)
  length = message_array[0].length
  message_array.each do |message|
    if message.length > length
      length = message.length
    end
  end
  length
end

# def truncate(message)
#   truncated_message = message.dup
#   while truncated_message.length > 76
#     truncated_message.chop!
#   end
#   truncated_message
# end
