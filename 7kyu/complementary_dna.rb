=begin
Kata link: https://www.codewars.com/kata/554e4a2f232cdd87d9000038
Deoxyribonucleic acid (DNA) is a chemical found in the nucleus of cells and carries the "instructions" for the
development and functioning of living organisms.
In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G".
You have function with one side of the DNA, you need to get the other complementary side.
DNA strand is never empty or there is no DNA at all.

Examples:
dna_strand("ATTGC") should return "TAACG"
dna_strand("GTAT") should return "CATA"
=end

def dna_strand(dna)
	dna.tr("ATCG", "TAGC")
end
