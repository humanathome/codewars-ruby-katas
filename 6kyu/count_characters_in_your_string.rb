# Kata link: https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1
# The main idea is to count all the occurring characters in a string.
# If you have a string like 'aba', then the result should be {'a': 2, 'b': 1}.
# If the string is empty the result should be empty object literal, {}.

def count_chars(str)
	freq_hash = Hash.new(0)
	str.chars.each { |letter| freq_hash[letter] += 1 }
	freq_hash
end

# another solution:
# def count_chars(str)
# 	str.chars.group_by(&:itself).transform_values(&:count)
# end

# another solution using Enumerable#tally (requires Ruby version >= 2.7):
# def count_chars(str)
# 	str.chars.tally
# end
