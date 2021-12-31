def get_grade(s1, s2, s3)
  average = (s1 + s2 + s3) * 1.0 / 3
  if average >= 90
    'A'
  elsif average >= 80
    'B'
  elsif average >= 70
    'C'
  elsif average >= 60
    'D'
  else
    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
