def triangle(n)
  spaces = n - 1
  stars = 1
  n.times do
    puts "#{' ' * spaces}#{'*' * stars}"
    spaces -= 1
    stars += 1
  end
end

def flipped_triangle(n)
  stars = n
  spaces = 0
  n.times do
    puts (' ' * spaces) + ('*' * stars)
    spaces += 1
    stars -= 1
  end
end

end

triangle(5)
puts
triangle(9)
puts
flipped_triangle(5)
puts
flipped_triangle(9)
