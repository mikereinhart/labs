require 'word_count'

describe String, "#unique_word_count"
	it "should return 1 when the string is one word long" do
		a_string = "ruby"
		word_count = a_string.unique_word_count
		word_count.should == 1
	end
end

describe 