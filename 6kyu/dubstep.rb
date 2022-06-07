=begin
Kata link: https://www.codewars.com/kata/551dc350bf4e526099000ae5
Input:
A single non-empty string, consisting only of uppercase English letters, whose length doesn't exceed 200 characters,
for example: "WUBWUBIWUBAMWUBWUBX"
Output:
Return the words without the "WUB". Separate the words with a space.
Examples:
song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")  #  =>  "WE ARE THE CHAMPIONS MY FRIEND"
song_decoder("WUWUBUBWUBUWUB")	# => "WU UB U"
# song_decoder("AWUBBWUBCWUBD")		# => "A B C D"
=end

def song_decoder(song)
	song.gsub(/WUB/, " ").squeeze(" ").strip
end
