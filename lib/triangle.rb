require 'pry'

class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  attr_reader :side1, :side2, :side3


  def initialize(side1, side2, side3)
    @side1=side1
    @side2=side2
    @side3=side3
    @sides=[]
    if @side1 <= 0
      raise TriangleError
    elsif @side2 <= 0
      raise TriangleError
    elsif @side3 <= 0
      raise TriangleError
    end
    @sides << @side1
    @sides << @side2
    @sides << @side3
  end

  def kind
    if @sides.max >= @sides.sum/2.0
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length ==2
      :isosceles
    else @sides.uniq.length ==3
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Your sides are crazy AF bro"
    end
  end

end
