# Kata link: https://www.codewars.com/kata/5266876b8f4bf2da9b000362
# Implement the function which takes an array containing the names of people that like an item.
# It must return the display text as shown in the examples:

=begin
likes [] -- must be "no one likes this"
likes ["Peter"] -- must be "Peter likes this"
likes ["Jacob", "Alex"] -- must be "Jacob and Alex like this"
likes ["Max", "John", "Mark"] -- must be "Max, John and Mark like this"
likes ["Alex", "Jacob", "Mark", "Max"] -- must be "Alex, Jacob and 2 others like this"
For 4 or more names, the number in 'and 2 others' simply increases.
=end

def likes(names)
	case names.size
		when 0
			"No one likes this."
		when 1
			"#{names.first} likes this."
		when 2
			"#{names.first} and #{names.last} like this."
		when 3
			"#{names[0]}, #{names[1]} and #{names.last} like this."
		else
			"#{names[0]}, #{names[1]} and #{names.size - 2} others like this."
	end
end
