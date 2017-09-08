public def is_anagram?(word1, word2)
  (word1.downcase.chars - word2.downcase.chars).length.zero? ? "These words are anagrams!" : "These words are not anagrams!"
end

public def is_palindrome?(word)
  word = word.reverse
end
