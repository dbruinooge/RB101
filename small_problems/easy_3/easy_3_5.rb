def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power(num, power)
  result = 1
  power.times { result = multiply(result, num) }
  result
end

p square(5) == 25
p square(-8) == 64

p power(3, 3) == 27
p power(6, 4) == 1296
