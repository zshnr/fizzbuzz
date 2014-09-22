require 'FizzBuzz'
describe FizzBuzz  do
	
	let(:fizzbuzz) { FizzBuzz.new }

	it "knows when a number is divisible by 3" do
		expect(fizzbuzz.is_divisible_by_three?(3)).to be true
	end

	it "knows when a number is divisible by 5" do
		expect(fizzbuzz.is_divisible_by_five?(5)).to be true
	end

	it "knows when a number is divisible by 15" do
		expect(fizzbuzz.is_divisible_by_fifteen?(15)).to be true
	end

	it "only works with number" do
		expect{fizzbuzz.is_divisible_by_three?("three")}.to raise_error("RuntimeError")
	end


end