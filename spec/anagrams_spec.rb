require('anagrams')
require('rspec')

describe('#anagrams')do
  it("checking for any word")do
    expect(is_anagram?("bat","tab")).to(eq("These words are anagrams!"))
  end
  it("checking for any words that have capitals to equal to anagrams")do
    expect(is_anagram?("Bat","Tab")).to(eq("These words are anagrams!"))
  end
  it("checking for palindrome words")do
    expect(is_palindrome?("cat")).to(eq("tac"))
  end
end
