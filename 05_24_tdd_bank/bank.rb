class Bank

	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def open_account(client_name, balance)
		account = {}
		account[:name] = client_name
		account[:balance] = balance
		@accounts =[]
		@accounts << account

		return account
	end

	def deposit(account_name, amount)
		@accounts.each do |account|
			if account[:name] == account_name
					account[:balance] += amount
			end
		end
	end
end