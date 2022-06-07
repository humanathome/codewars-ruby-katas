=begin
Kata link: https://www.codewars.com/kata/51b66044bce5799a7f000003
Create a RomanHelper class that can convert a roman numeral to and from an integer value.
It should follow the API demonstrated in the examples below.
Multiple roman numeral values will be tested for each helper method.

Modern Roman numerals are written by expressing each digit separately starting with the left most digit
and skipping any digit with a value of zero. In Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC.
2008 is written as 2000=MM, 8=VIII; or MMVIII. 1666 uses each Roman symbol in descending order: MDCLXVI.

Examples
RomanHelper.to_roman(1000) # should return 'M'
RomanHelper.from_roman('M') # should return 1000
Help
| Symbol | Value |
|----------------|
| I      |  1    |
| V      |  5    |
| X      |  10   |
| L      |  50   |
| C      |  100  |
| D      |  500  |
| M      |  1000 |
=end

class RomanHelper
	NUMERALS_HASH = { "W"=> 5000, "M"=>1000, "CM"=>900, "D"=>500, "CD"=>400, "C"=>100, "XC"=>90, "L"=>50,
										"XL"=>40, "X"=>10, "IX"=>9, "V"=>5, "IV"=>4, "I"=>1 }

	def self.to_roman(num)
		translated = ""
		return  NUMERALS_HASH.key(num) if NUMERALS_HASH.has_value?(num)

		NUMERALS_HASH.each do |roman_key, arabic_val|
			quotient, modulus = num.divmod(arabic_val)
			if quotient > 0
				translated << roman_key * quotient
				num = modulus
			end
		end
		translated
	end

	def self.from_roman(roman_input)
		return NUMERALS_HASH[roman_input] if NUMERALS_HASH.include?(roman_input)

		re = Regexp.new(NUMERALS_HASH.keys.join("|"))
		roman_input.scan(re).inject(0) { |number, letter| number + NUMERALS_HASH[letter] }
	end
end
