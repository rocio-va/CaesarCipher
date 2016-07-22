require "pry"

def solve_cipher(word)
	word.downcase
	#la función char, devuelve un array de caracteres
	word_array = word.chars
	new_array = []
	#"a".ord = 97 "z".ord = 122
	word_array.each do |item|
		if (item.ord == 97)
			item = 122.chr
			new_array.push item
		else
			item = (item.ord - 1).chr
			new_array.push item
		end
	end
	new_array.join

end

puts "Tell me one word."
word = gets.chomp
puts solve_cipher(word)

binding.pry