require "/Users/apple/IRONHACK/SEMANA02/day03/PasswordChecker/lib/passwordchecker.rb"

describe "password" do
	it "length" do
		password="password"
		email=""
		expect(PasswordChecker.new(email, password).check_password).to eq(true)
	end

	it "length" do
		password="pass"
		email=""
		expect(PasswordChecker.new(email, password).check_password).to eq(false)
	end

	it "contains letter" do
		password="password"
		email=""
		expect(PasswordChecker.new(email, password).check_contain_letter).to eq(true)
	end
		it "contains letter" do
		password="1"
		email=""
		expect(PasswordChecker.new(email, password).check_contain_letter).to eq(false)
	end

		it "contains number" do
		password="234"
		email=""
		expect(PasswordChecker.new(email, password).check_contain_number).to eq(true)
	end

		it "contains number" do
		password="password"
		email=""
		expect(PasswordChecker.new(email, password).check_contain_number).to eq(false)
	end

		it "contains symbol" do
		password="password"
		email=""
		expect(PasswordChecker.new(email, password).check_contain_symbol).to eq(false)
	end
end

