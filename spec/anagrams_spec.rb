require('anagrams')
require('rspec')

describe(AnagramsChecker)

  describe('#is_anagram?')do
    it("checking for any word")do
      test_anagram = AnagramsChecker.new("cat","tac")
      expect(test_anagram.is_anagram?()).to(eq("These words are anagrams!"))
    end
    it("checking for any words that have capitals to equal to anagrams")do
      test_anagram = AnagramsChecker.new("Cat","Tac")
      expect(test_anagram.is_anagram?()).to(eq("These words are anagrams!"))
    end
    it("checking for any words that are antigrams.")do
      test_anagram = AnagramsChecker.new("hi","bye")
      expect(test_anagram.is_anagram?()).to(eq("These words are not anagrams they are antigram!"))
    end


  describe('#is_palindrome?')do
    it("checking for palindrome words")do
      test_anagram = AnagramsChecker.new("dad", "dad")
      expect(test_anagram.is_palindrome?()).to(eq("dad"))
    end
  end

  describe('#(spaces_and_punc?')do
    it("checking for any words with spaces or puncuations")do
      test_anagram = AnagramsChecker.new(" cat's/ * & ^% ", " & ^%cat' &^*^%$)*  s/ *    & ^% ")
      expect(test_anagram.spaces_and_punc?()).to(eq("cats"))
    end
  end

end
