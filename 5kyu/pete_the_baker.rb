=begin
Kata link: https://www.codewars.com/kata/525c65e51bf619685c000059
Write a function cakes(), which takes the recipe (object) and the in_stock ingredients (also an object)
and returns the maximum number of cakes Pete can bake (integer).
For simplicity there are no units for the amounts (e.g. 1lb of flour or 200g of sugar are simply 1 or 200).
Ingredients that are not present in the objects, can be considered as 0.

Examples:
// must return 2
cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5, milk: 200})

// must return 0
cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500, flour: 2000, milk: 2000})
=end

def cakes(recipe, in_stock)
	return 0 if (in_stock.keys & recipe.keys).length != recipe.keys.length

	cakes_baked = 0
	while in_stock.values.all?(&:positive?)
		recipe.each do |ingredient, amount|
			in_stock[ingredient] -= amount
		end
		break if in_stock.values.any?(&:negative?)
		cakes_baked += 1
	end
	cakes_baked
end

# one line solution: recipe.collect { | k, v | in_stock[k].to_i / v }.min
