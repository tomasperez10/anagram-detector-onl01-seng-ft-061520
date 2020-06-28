# Your code goes here!
class Anagram
  
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(words)
    matches = []
    word_array = @word.split("").sort
    words.each do |word|
      original = word.split("")
      sorted = word.split("").sort
      if sorted == word_array
        matches << original.join
      end
    end
    matches
  end
end
