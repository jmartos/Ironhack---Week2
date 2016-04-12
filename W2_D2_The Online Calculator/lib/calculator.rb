require "rubygems"
require "rspec"

class Calculator

  def self.operator operation, first, second
    case operation
      when "addition"
        self.sum(first,second)
      when 'substract'
        self.substract(first,second)
      when 'multiply'
        self.multiply(first,second)
      when 'divide'
        self.divide(first,second)
    end 
  end

  def self.sum first, second
   first + second
  end

  def self.substract first, second
   first - second
  end

  def self.multiply first, second
   first * second
  end

  def self.divide first, second
   first / second
  end

  def self.save result
    IO.write('public/result.txt',result)
  end

end


