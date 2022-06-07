=begin
Kata link: https://www.codewars.com/kata/53368a47e38700bd8300030d
Given: an array containing hashes of names
Return: a string formatted as a list of names separated by commas except for the last two names, which should be
separated by an ampersand.

Example:
list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

list([ {name: 'Bart'} ])
# returns 'Bart'
=end

def list(names)
	names_array = names.map { |names_hash| names_hash.values }.flatten
	names_array.size < 2 ? names_array.join : "#{names_array[0..-2].join(", ")} & #{names_array[-1]}"
end

# another solution:
# def list(names)
# 	last_name = names_array.pop
# 	return last_name.to_s if names_array.empty?
# 	"#{names_array.join(', ')} & #{last_name}"
# end
