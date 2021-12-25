def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# How could the following method be simplified without changing its return value?

# If we just write one line: color == "blue" || color == "green"
# then that line will be evaluated and the result (true or false) will be returned by the method.
# There is no need for a conditional and for explit true/false returns.
