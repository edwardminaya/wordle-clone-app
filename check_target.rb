class CheckTarget
  def check_guess(target, guess)
    target_copy = target.chars.map { |char| guess.include?(char) ? char : nil }

    # Compare each character of guess with target_copy and update result array
    result = ""
    if target == guess
      result = true
      return result
    end
    guess.chars.each_with_index do |char, i|
      if char == target[i]
        result += "\e[32m#{char}\e[0m"
        target_copy[i] = nil # Set to nil to avoid counting duplicates
      elsif target_copy.include?(char)
        result += "\e[33m#{char}\e[0m"
        target_copy[target_copy.index(char)] = nil # Set to nil to avoid counting duplicates
      else
        result += "#{char}"
      end
    end

    return result
  end
end
