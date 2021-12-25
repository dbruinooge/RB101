def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

bar(foo)

# The last line calls the bar method and passes foo as an argument.
# To evaluate foo, we need to look at the foo method.
# The foo method appears to always return "yes". The parameter doesn't seem to do anything.
# So "yes" is passed to the bar method. The ternary expression evaluates to false and
# "no" is returned.

# So in the end, the return value is "no".
