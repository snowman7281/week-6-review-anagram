require('anagrams')
require('rspec')

describe('#is_anagram?')do
  it("checking for any word")do
    expect(is_anagram?("bat","tab")).to(eq("Is a anagram!"))
  end
end
