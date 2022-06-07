=begin
Kata link: https://www.codewars.com/kata/54e6533c92449cc251001667
Implement the function unique_in_order which takes as argument a sequence and returns an array of items without
any elements with the same value next to each other, preserving the original order of elements.
For example:
unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
unique_in_order([1,2,2,3,3])       == [1,2,3]
=end

def unique_in_order(iterable)
	iterable = iterable.chars if iterable.is_a?(String)
	res = []
	iterable.each { |elem| res << elem unless res.last == elem }
	res
end

# solution that doesn't require populating a new array:
# def unique_in_order(iterable)
# 	(iterable.is_a?(String) ? iterable.chars : iterable).chunk(&:itself).map(&:first)
# end
