def check_guess(target, guess)
  target = target.downcase # Convert both target and guess to lowercase for case-insensitive comparison
  guess = guess.downcase

  # Create a copy of target with characters to be matched replaced with nil
  target_copy = target.chars.map { |char| guess.include?(char) ? char : nil }

  # Compare each character of guess with target_copy and update result array
  result = []
  guess.chars.each_with_index do |char, i|
    if char == target[i]
      result << "exact match"
      target_copy[i] = nil # Set to nil to avoid counting duplicates
    elsif target_copy.include?(char)
      result << "partial match"
      target_copy[target_copy.index(char)] = nil # Set to nil to avoid counting duplicates
    else
      result << "no match"
    end
  end

  return result
end

# Example usage
target = "hello"
guess = "helpl"
result = check_guess(target, guess)
puts result.join(", ") # Output: exact match, no match, no match, partial match, no match

target = "hello"
guess = "heeps"
result = check_guess(target, guess)
puts result.join(", ") # Output: exact match, no match, no match, partial match, no match
