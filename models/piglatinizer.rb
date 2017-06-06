class PigLatinizer

  def piglatinize(word)
    vowels = ["a", "e", "i", "o", "u"]

    if vowels.include?(word[0].downcase)
      word << "way"
    else
      rest_of_word = ""
      while !vowels.include?(word[0])
        rest_of_word << word[0]
        word = word.split("")[1..-1].join
      end
      word + rest_of_word + 'ay'
    end
  end

  def to_pig_latin(string)
    string.split.map { |word| piglatinize(word) }.join(" ")
  end

end
