# frozen_string_literal: true

# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(alpha, beta, gamma)
  raise TriangleError, 'all arguments must be grater than 0' \
    if alpha <= 0 || beta <= 0 || gamma <= 0

  temp = [alpha, beta, gamma].sort
  raise TriangleError, 'two sides added cannot be less than or equal to one side' \
    if temp[0] + temp[1] <= temp[2]

  if alpha == beta && beta == gamma
    :equilateral
  elsif alpha == beta || beta == gamma || alpha == gamma
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
