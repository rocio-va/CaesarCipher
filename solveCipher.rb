require "pry"

def solve_cipher(phrase, n)
	phrase.downcase!
	phrase.chomp(".")
	#la función char, devuelve un array de caracteres
	word_array = phrase.chars
	new_array = []
	#"a".ord = 97 "z".ord = 122
	word_array.each do |item|
		if (item == " ")
			new_array.push item
		elsif (item.ord + n < 97)
			item = 123 + (item.ord + n - 97)
			new_array.push item.chr
		elsif (item.ord + n > 122)
			item = 96 + (item.ord + n - 122)
			new_array.push item.chr
		else
			item = item.ord + n
			new_array.push item.chr
		end	
	end
	new_array.join
end

puts "Tell me something."
phrase = gets.chomp
puts "Tell me one number."
n = gets.chomp.to_i
puts solve_cipher(phrase, n)

binding.pry