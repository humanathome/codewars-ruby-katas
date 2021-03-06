=begin
Kata link: https://www.codewars.com/kata/578aa45ee9fd15ff4600090d
You have an array of numbers.
Your task is to sort ascending odd numbers but even numbers must be on their places.
Zero isn't an odd number and you don't need to move it. If you have an empty array, you need to return it.

Example:
sort_array([5, 3, 2, 8, 1, 4]) == [1, 3, 2, 8, 5, 4]
=end

def sort_array(source_array)
	odds = source_array.select(&:odd?).sort
	source_array.map { |num| num.even? ? num : odds.shift }
end
