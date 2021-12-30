# def fizzbuzz(startnum, endnum)
#   startnum.upto(endnum) do |times|
#     if times % 5 == 0 && times % 3 == 0
#       print "FizzBuzz"
#     elsif times % 5 == 0
#       print "Buzz"
#     elsif times % 3 == 0
#       print "Fizz"
#     else
#       print times
#     end
#     print ", " if times != endnum
#   end
# end

# Using concatenation

def fizzbuzz(startnum, endnum)
  fbstring = ''
  startnum.upto(endnum) do |times|
    if times % 5 == 0 && times % 3 == 0
      fbstring << "FizzBuzz"
    elsif times % 5 == 0
      fbstring << "Buzz"
    elsif times % 3 == 0
      fbstring << "Fizz"
    else
      fbstring << times.to_s
    end
    fbstring << ", " if times != endnum
  end
  puts fbstring
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
