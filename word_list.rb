class WordList
  def initialize(file)
    @file = file
  end

  # Read txt file and generates a random word from list
  def generate_word
    word_list = []
    File.open(@file, "r") do |file|
      file.each_line do |word|
        word_list << word.chomp.slice(0..-1)
      end
    end

    n = word_list.length
    target = word_list[rand(0..n)]
    return target
  end
end
