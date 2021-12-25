count = 1

while count <= 99
  puts count if count % 2 == 1
  count += 1
end

# further exploration

99.times { |n| puts n + 1 if (n + 1).odd? }
