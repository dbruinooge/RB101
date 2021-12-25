if false
  greeting = "hello world"
end

greeting

# What do you expect to happen when the greeting variable is referenced in the last line of the code below?

# Line 2 isn't executed because of "if false". Therefore greeting is not initialized.
# Line 5 references greeting but no such method or variable exists. So I think Ruby gives us an error.

# After running the program and reading the solution: this was unexpected. The if block initializes the variable as nil even though the if block wasn't executed. So line 5 returns nil.