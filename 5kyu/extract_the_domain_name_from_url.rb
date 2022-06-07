=begin
Kata link: https://www.codewars.com/kata/514a024011ea4fb54200004b
Write a function that when given a URL as a string, parses out just the domain name and returns it as a string.
For example:
domain_name("http://github.com/carbonfive/raygun") == "github"
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

Note: do this without using external libraries!
=end

require 'uri'
def domain_name(url)
	domain = URI.parse(url)
	domain = URI.parse("http://#{url}") if domain.scheme.nil?

	domain = domain.host.split(".")
	domain.pop
	domain.reverse.find { |elem| elem.length >= 3 }
end
