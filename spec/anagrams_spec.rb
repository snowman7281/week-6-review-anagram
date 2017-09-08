require('anagrams')
require('rspec')

describe('#anagrams')do
  it("checking for any word")do
    expect(is_anagram?("cat","tac")).to(eq("These words are anagrams!"))
  end
  it("checking for any words that have capitals to equal to anagrams")do
    expect(is_anagram?("Cat","Tac")).to(eq("These words are anagrams!"))
  end
  it("checking for palindrome words")do
    expect(is_palindrome?("cat")).to(eq("tac"))
  end
  it("checking for any words that are antigrams.")do
    expect(is_anagram?("hi","bye")).to(eq("These words are not anagrams they are antigram!"))
  end
  it("checking for any words with spaces or puncuations")do
    expect(spaces_and_punc(" cat's/ * & ^% ")).to(eq("cats"))
  end
end
