require "./word_list.rb"
require "./guesses.rb"
require "./check_target.rb"

file = WordList.new
word_list = file.word_list("words.txt")
target = file.generate_word(word_list)

# GAME
all_entries = []
while true
  system("clear")
  all_entries.each do |word|
    puts word
  end
  input = Guesses.new.prompt(word_list)
  if input[1]
    check = CheckTarget.new
    result = check.check_guess(target, input[0])
    all_entries << result
  end

  if all_entries.length == 5
    break
  end
end
puts target
