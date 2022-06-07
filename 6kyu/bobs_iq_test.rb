=begin
Kata link: https://www.codewars.com/kata/552c028c030765286c00007d
Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers
differs from the others. Bob observed that one number usually differs from the others in evenness.
To check his answers, he needs a program that among the given numbers finds one that is different in
evenness, and returns a position(index) of this number.
Examples:
iq_test("2 4 7 8 10") => 3 // Third number is odd, while the rest of the numbers are even
iq_test("1 2 1 1") => 2 // Second number is even, while the rest of the numbers are odd
Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)
=end

def iq_test(numbers)
	numbers = numbers.split.map(&:to_i)
	numbers.index(numbers.partition(&:even?).find(&:one?).first) + 1
end
