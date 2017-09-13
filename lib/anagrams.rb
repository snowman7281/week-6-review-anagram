class AnagramsChecker

  attr_accessor(:word1, :word2)

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def is_anagram?
    if @word1.include?("a") || @word1.include?("e") || @word1.include?("i") || @word1.include?("o") || @word1.include?("u") || @word2.include?("a") || @word2.include?("e") || @word2.include?("i") || @word2.include?("o") || @word2.include?("u")
      # if(word1.downcase.chars.length == word2.downcase.chars.length)
      if @word1.downcase.split('').sort.join == @word2.downcase.split('').sort.join
        return "These words are anagrams!"
      # elsif @word1.downcase.chars.length == @word2.downcase.chars.length && @word1.downcase.split('').sort.join == @word2.downcase.split('').sort.join
      else
        return "These words are not anagrams they are antigram!"
      end
    else
      return "This is not a real word. Enter a word with a vowel to make it valid"
    end
  end

  def spaces_and_punc?
     @word1.delete("/[.,\/#!$%\^&\*;:'{}=\-_`~()]/g").delete("/\s{2,}/g").delete("[0-9]")
     @word2.delete("/[.,\/#!$%\^&\*;:'{}=\-_`~()]/g").delete("/\s{2,}/g").delete("[0-9]")
  end


  def is_palindrome?
    if @word1.include?("a") || @word1.include?("e") || @word1.include?("i") || @word1.include?("o") || @word1.include?("u") || @word2.include?("a") || @word2.include?("e") || @word2.include?("i") || @word2.include?("o") || @word2.include?("u")
      if @word1 == @word1.reverse && @word2 == @word2.reverse && @word1 == @word2
        return @word1
      else
        return "This is not a palindrome"
      end
    else
      return "This is not a real word. Enter a word with a vowel to make it valid"
    end
  end
end
