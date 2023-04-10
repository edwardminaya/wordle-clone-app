require "./word_list.rb"
require "./guesses.rb"

file = WordList.new
word_list = file.word_list("words.txt")
target = file.generate_word(word_list)

# check users guess against choosen word
def check_users_guess(array, input, target)
  array_game = game_word.split("")
  array_input = input.split("")
  game_input = array_game.zip(array_input)
  word = []
  game_input.each do |pair|
    x = []
    if pair[0] == pair[1]
      x << pair[1]
      x << "yes"
      word << x
    elsif game_word.index(pair[1]) != nil
      x << pair[1]
      x << "close"
      word << x
    else
      x << pair[1]
      x << "no"
      word << x
    end
  end
  array << word
  puts "----------"
end

# Display Entries
def display(entries)
  entries.each do |word|
    string = ""
    word.each do |letter|
      if letter[1] == "yes"
        string += "\e[32m#{letter[0]}\e[0m"
      elsif letter[1] == "close"
        string += "\e[33m#{letter[0]}\e[0m"
      else
        string += letter[0]
      end
    end
    puts string
  end
end

# Asking user for guesses
all_entries = []
while true
  input = Guesses.new.prompt(word_list)
  if input[1]
    all_entries << input[0]
  end
  # word_list.each do |word|
  #   if word == input
  #     valid_word = true
  #     check_users_guess(all_entries, input, target)
  #     display(all_entries)
  #   end
  # end
  # if valid_word && all_entries.length == 5
  #   break
  # end
end
puts game_word
