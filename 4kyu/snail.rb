=begin
Kata link: https://www.codewars.com/kata/521c2db8ddc89b9b7a0000c1
Snail Sort
Given an n x n array, return the array elements arranged from outermost elements to the middle element, traveling clockwise.

array = [[1,2,3],
         [4,5,6],
         [7,8,9]]

snail(array) #=> [1,2,3,6,9,8,7,4,5]

NOTE: The idea is not to sort the elements from the lowest value to the highest;
the idea is to traverse the 2-d array in a clockwise snail shell pattern.
=end

def snail(array)
	res = []

	while array.length > 0
		res << array.shift
		array.each { |subarray| res << subarray.pop }
		res << array.pop.reverse unless array.size == 0
		array.reverse.each { |subarray| res << subarray.shift }
	end

	res.flatten.compact
end
