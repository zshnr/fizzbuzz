require 'FizzBuzz'
describe FizzBuzz  do
	
	let(:fizzbuzz) { FizzBuzz.new }

	context "Knows when a number is divisible by" do
		it "3" do
			expect(fizzbuzz.is_divisible_by_three?(3)).to be true
		end

		it "5" do
			expect(fizzbuzz.is_divisible_by_five?(5)).to be true
		end

		it "15" do
			expect(fizzbuzz.is_divisible_by_fifteen?(15)).to be true
		end
	end

	context "Should say" do
		it "fizz when number is divisible by 3" do
			expect(fizzbuzz.say(3)).to eq ('Fizz')
		end

		it "buzz when number is divisible by 5" do
			expect(fizzbuzz.say(5)).to eq ('Buzz')
		end

		it "fizzbuzz when number is divisible by 15" do
			expect(fizzbuzz.say(15)).to eq ('FizzBuzz')
		end
	end	

	context "SHOULD ONLY WORK WITH A NUMBER" do
		it "only works with number" do
			expect{fizzbuzz.is_divisible_by_three?("three")}.to raise_error("RuntimeError")
		end
	end	
end