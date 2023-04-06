# Read in txt file and create array with all the words
word_list = []
File.open("words.txt", "r") do |file|
  file.each_line do |word|
    word_list << word.chomp.slice(0..-1)
  end
end

# Generate a random word
n = word_list.length
game_word = word_list[rand(0..n)]

# Asking user for guesses
while true
  puts "WORDLE CLONE APP"
  puts "Enter your guess:"
  input = gets.chomp.downcase
  valid_word = false
  word_list.each do |word|
    if word == input
      valid_word = true
    end
  end
  if valid_word
    break
  else
    puts "Word not in list"
  end
end

# Users guesses
user_guesses = []
user_guesses << input
p user_guesses

# This will change color of text
# puts "\e[31mThis text will be red.\e[0med"
