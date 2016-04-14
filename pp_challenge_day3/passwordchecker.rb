class PasswordChecker
	def initialize (email, password)
		@password=password
		@email=email
	end

	def check_password
		if
		@password.length >= 7
		true
		else
		false
		end
	end 

	def check_contain_letter
		if 
			@password.match (/[a-zA-Z]/)
		true
		else
		false
		end

	end

	def check_contain_number
		if 
			@password.match (/[0-9]/)
		true
		else
		false
		end

	end

	def check_contain_symbol
		if 
			@password.match (/[+ - *]/)
		true
		else
		false
		end

	end
		
	
end
		