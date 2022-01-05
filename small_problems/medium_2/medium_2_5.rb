def invalid_triangle?(s1, s2, s3)
  sorted_sides = [s1, s2, s3].sort
  sorted_sides.any? { |side| side <= 0 } ||
  (sorted_sides[0] + sorted_sides[1]) <= sorted_sides[2]
end

def equilateral?(s1, s2, s3)
  s1 == s2 && s2 == s3
end

def isosceles?(a, b, c)
  (a == b || a == c || b ==c ) && (a != b || a != c || b != c)
end

def scalene?(s1, s2, s3)
  s1 != s2 && s1 != s3 && s2 != s3
end

def triangle(s1, s2, s3)
  result = ''
  return :invalid if invalid_triangle?(s1, s2, s3)
  result = :equilateral if equilateral?(s1, s2, s3)
  result = :isosceles if isosceles?(s1, s2, s3)
  result = :scalene if scalene?(s1, s2, s3)
  result
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
