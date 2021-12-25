answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# The output will be 34.
# answer gets passed to the mess_with_it method, but += is not mutating
# (and in fact integers are immutable)
# and therefore the value of answer is unaffected by the method call.
# the last line of the program then prints 42 minus 8, which is 34.