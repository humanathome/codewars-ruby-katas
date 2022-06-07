=begin
Kata link: https://www.codewars.com/kata/54a91a4883a7de5d7800009c
Your job is to write a function which increments a string, to create a new string.

If the string already ends with a number, the number should be incremented by 1.
If the string does not end with a number. the number 1 should be appended to the new string.

Examples:
foo -> foo1
foobar23 -> foobar24
foo0042 -> foo0043
foo9 -> foo10
foo099 -> foo100

Attention: If the number has leading zeros the amount of digits should be considered.
=end

def increment_string(input)
	arr = input.split(/(\d+$)/)		# split using a regex(digits) as the delimiter, but keep the delimiter
	if arr.length > 1
		arr[1].succ!
		arr.join
	else
		(arr << 1).join
	end
end
