class Triangle
  # write code here
  attr_reader :arg1, :arg2, :arg3

  def initialize(arg1, arg2, arg3)
    @arg1 = arg1
    @arg2 = arg2
    @arg3 = arg3
  end

  def kind
    valid_triangle
    if arg1 == arg2 && arg2 == arg3
      :equilateral
    elsif arg1 == arg2 || arg2 == arg3 || arg1 == arg3
      :isosceles
    else
      :scalene
    end
  end

  def greater_than_zero
    arg1 > 0 && arg2 > 0 && arg3 > 0
  end

  def triangle_inequality
    arg1 + arg2 > arg3 && arg1 + arg3 > arg2 && arg2 + arg3 > arg1
  end


  def valid_triangle 
    raise TriangleError unless greater_than_zero && triangle_inequality
  end

  class TriangleError < StandardError
  end

end
