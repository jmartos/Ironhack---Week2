require '/Users/javi/Desktop/Ironhack/Week_2/Day_2/calculator/lib/calculator.rb'

describe Calculator do

  describe "operations" do
 
  it "sum" do
    first = rand(1000)
    second = rand(1000)
    expect(Calculator.sum(first, second)).to eq(first+second)
  end

  it "substract" do
    first = rand(1000)
    second = rand(1000)
    expect(Calculator.substract(first, second)).to eq(first-second)
  end

  it "multiply" do
    a = rand(1000)
    b = rand(1000)
    expect(Calculator.multiply(a,b)).to eq(a*b)
  end

  it "divide" do
    a = rand(1000)
    b = rand(1000)
    expect(Calculator.divide(a,b)).to eq(a/b)
  end
 end
end
