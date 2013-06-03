require_relative "bank"

describe Bank do
  describe '#new'	do
    it 'builds a new bank with a name' do
      bank = Bank.new('MyCiti')
      bank.should be_instance_of Bank
      bank.name.should == 'MyCiti'
    end
  end
end

describe '#open_account' do
  it 'opens a new account' do
    bank = Bank.new('MyCiti')
    account = bank.open_account('zlu', 500)
    account[:name].should == 'zlu'
  end

  it 'has an initial balance' do
    bank = Bank.new('MyCiti')
    account = bank.open_account('zlu', 500)
    account[:balance].should == 500
  end

  it 'opens two accounts' do
    bank = Bank.new('MyCiti')
    account1 = bank.open_account('zlu', 500)
    account2 = bank.open_account('omar', 5000)
    bank.accounts.size.should == 2
  end
end

describe '#deposit' do
  it 'adds money to account' do
    bank = Bank.new('MyCiti')
    zlu_account = bank.open_account('zlu', 500)
    bank.deposit('zlu', 250)
    zlu_account[:balance].should == 750
  end
end
