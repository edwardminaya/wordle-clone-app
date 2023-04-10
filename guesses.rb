class Guesses
  def prompt(word_list)
    input = []
    puts "----------------Worlde Clone App----------------"
    puts "** You have 5 tries to guess the correct word **"
    puts "Please enter a word: "
    guess = gets.chomp.downcase
    valid_word = false
    word_list.each do |word|
      if word == guess
        valid_word = true
      end
    end
    input << guess
    input << valid_word
    return input
  end
end
