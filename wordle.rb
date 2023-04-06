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

# check users guess against choosen word
def check_users_guess(array, input, game_word)
  array_game = game_word.split("")
  array_input = input.split("")
  game_input = array_game.zip(array_input)

  hash = Hash.new
  game_input.each do |pair|
    if pair[0] == pair[1]
      hash[pair[1]] = "yes"
    elsif game_word.index(pair[1]) != nil
      hash[pair[1]] = "close"
    else
      hash[pair[1]] = "no"
    end
  end
  array << hash
end

# Asking user for guesses
while true
  puts "WORDLE CLONE APP"
  puts "Enter your guess:"
  input = gets.chomp.downcase
  valid_word = false
  word_list.each do |word|
    if word == input
      valid_word = true
      all_entries = []
      check_users_guess(all_entries, input, game_word)
      p all_entries
    end
  end
  if valid_word
    break
  else
    puts "\e[31mWord not in list\e[0m"
  end
end

# This will change color of text
# puts "\e[31mThis text will be red.\e[0med"
