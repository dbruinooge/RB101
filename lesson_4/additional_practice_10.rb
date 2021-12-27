munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, features|
  case features["age"]
  when 0..17
    features["age_group"] = "kid"
  when 18..64
    features["age_group"] = "adult"
  when 65..nil
    features["age_group"] = "senior"
  end
end

p munsters

# I initially used #merge! here, but after seeing the LS solution I realized I could just use regular hash assignment.