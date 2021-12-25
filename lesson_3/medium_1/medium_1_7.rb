munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

p munsters

# Did the family's data get ransacked? Why or why not?

# Before I run the program, my guess is that yes, the data got ransacked.
# While += and = (assignment) are themselves non-mutating, in this case they are
# changing specific elements with the hash, so the hash gets mutated.
# This is like calling array[1] = 2. Although this expression reassigns index 1 of the array
# but does not mutate the object stored in that index, it does mutate the array itself.

# After running the program: The above appears to be confirmed.
