public def is_anagram?(word1, word2)

  if(word1.include?("a") || word1.include?("e") || word1.include?("i") || word1.include?("0") || word1.include?("u"))
    if(word1.downcase.chars.length == word2.downcase.chars.length)
      return "These words are anagrams!"
    else
      return "These words are not anagrams they are antigram!"
    end
  else
    puts "This is not a real word. Enter a word with a vowel to make it valid"
  end
end

public def is_palindrome?(word1)
  if(word1.include?("a") || word1.include?("e") || word1.include?("i") || word1.include?("0") || word1.include?("u"))
    word1 = word1.reverse
  else
    puts "This is not a real word. Enter a word with a vowel to make it valid"
  end
end
