public def is_anagram?(word1, word2)
  (word1.chars - word2.chars).length.zero? ? "Is a anagram!" : "Not a anagram!"
end

puts is_anagram?("bat", "tab")
puts is_anagram?("bat", "bta")
