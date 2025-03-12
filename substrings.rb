def substrings(match_text, dictionary)
  dictionary.reduce(Hash.new(0)) do |result,word|
    match_text.downcase.split.each { |match_text_word| result[word] += 1 if match_text_word.include? word.downcase}
    result # Return the accumulator at the end of the block
  end
end