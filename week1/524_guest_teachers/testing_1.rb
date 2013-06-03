class String
	def unique_word_count
		array_of_individual_words = words_from_string(self)
		count_unique_words_in_arr
 	end

	def word_frequency_count
	end

	private
	def words_from_string(original_string)
		original_string.downcase.scan(/[\w']+/)
	end

	def count_unique_words_in_array(original_array_of_words)
		original_array_of_words.uniq.count
	end

end