class WordList
  def word_list(file)
    word_list = []
    File.open(file, "r") do |line|
      line.each_line do |word|
        word_list << word.chomp.slice(0..-1)
      end
    end
    return word_list
  end

  def generate_word(word_list)
    n = word_list.length
    target = word_list[rand(0..n)]
    return target
  end
end
