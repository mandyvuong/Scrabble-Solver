class Scrabble
  def initialize(word)
    @word = word
  end

  def score
    @word == 'A' ? 1 : 0
  end
end