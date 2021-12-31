# My solution

# def swap_name(name)
#   arr = name.split
#   "#{arr[1]}, #{arr[0]}"
# end

# LS solution:
def swap_name(name)
  name.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
