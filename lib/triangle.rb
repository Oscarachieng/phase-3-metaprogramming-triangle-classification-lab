class Triangle
  # write code here

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  #defines Kind method
  def kind
    if @side1 == @side2 and @side1 == @side3 and @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    elsif  @side1 != @side2 and @side1 != @side3 and @side2 != @side3
        :scalene
    else 
      begin 
        raise TriangleError 
      rescue TriangleError => error
        puts error.message

      end
    end  
  end

  #define the TriangleError class
  class TriangleError < StandardError
    def message
     if @side1 < 0 or @side2 < 0 or @side3 < 0
       "Negative sizes provided, please put positive values"
     elsif @side1 == 0 or @side2 == 0 or @side3 == 0
        "No sides provided"
     else
        "Ensure eniquality are correct"
    end
  end
end
end
