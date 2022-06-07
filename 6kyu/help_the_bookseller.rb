=begin
Kata link: https://www.codewars.com/kata/54dc6f5a224c26032800005c
A bookseller has a book collection containing book codes followed by a space and a positive integer which indicates
the quantity of books of this code in stock.
Each book has a code of 3, 4, 5 or more characters, but only the first letter defines the book category.
Example:
book_collection = ["ABART 20", "CDXEF 50", "BKWRK 25", "BTSQZ 89", "DRTYM 60"]
find_categories = ["A", "B", "C", "W"]

Your task is to find the quantity for each category and return the string in this format:
"(A : 20) - (B : 114) - (C : 50) - (W : 0)"
where 20 is the sum of category A, 114 the sum corresponding to "BKWRK" and "BTSQZ", 50 corresponding to "CDXEF"
and 0 to category 'W' since there are no book codes beginning with 'W'.
=end

def stock_list(book_collection, find_categories)
	book_collection.map!(&:split)
	codes = Hash[find_categories.map { |cat| [cat, 0] }]

	find_categories.each do |code|
		book_collection.each { |book_code, quantity| codes[book_code[0]] += quantity.to_i if book_code[0] == code }
	end
	codes.values.sum == 0 ? "" : codes.map { |k,v| "(#{k} : #{v})"}.join(" - ")
end
