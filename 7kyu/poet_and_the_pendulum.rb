=begin
Kata link: https://www.codewars.com/kata/5bd776533a7e2720c40000e5
Given an array of n integers, arrange them in a way similar to the to-and-fro movement of a pendulum:
The smallest element of the array of integers, must come in center position of array.
The first higher number than the smallest one goes to the right.
The next higher number goes to the left and so on, in a manner similar to that of a pendulum.

examples:
pendulum ([6, 6, 8, 5, 10]) ==> [10, 6, 5, 6, 8]
pendulum ([-9, -2, -10, -6]) ==> [-6, -10, -9, -2]
pendulum ([11, -16, -18, 13, -11, -12, 3, 18 ]) ==> [13, 3, -12, -18, -16, -11, 11, 18]
=end

def pendulum(values)
	values.sort!
	final = []

	values.each_with_index do |val, idx|
		idx.odd? ? final.push(val) : final.unshift(val)
	end
	final
end
