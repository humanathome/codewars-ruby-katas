=begin
Kata link: https://www.codewars.com/kata/56743fd3a12043ffbb000049
Write a function, learn_word(word) which is a method of the Robot object.
The function should report back whether the word is now stored, or if the robot already knows the word.
Case shouldn't matter. Only alpha characters are valid. There's also a little trick here. Enjoy!

Example:

vicky = Robot.new
vicky.learnWord('hello') -> 'Thank you for teaching me hello'
vicky.learnWord('abc') -> 'Thank you for teaching me abc'
vicky.learnWord('HeLLo') -> 'I already know the word hello'
vicky.learnWord('wow!') -> 'I do not understand the input'

vicky = Robot.new
vicky.learnWord("hello") -> "Thank you for teaching me hello"
vicky.learnWord("abc") -> "Thank you for teaching me abc"
vicky.learnWord("hELlo") -> "I already know the word hello"
vicky.learnWord("wow!") -> "I do not understand the input"
=end

class Robot
	def initialize
		@dictionary = %w[thank you for teaching me i already know the word do not understand input]
	end

	def learn_word(word)
		return "I do not understand the input" if word.to_s.match(/[^a-zA-Z]/) || word.empty?

		if @dictionary.include?(word.downcase)
			 "I already know the word #{word}"
		else
			@dictionary << word
			 "Thank you for teaching me #{word}"
		end
	end
end
