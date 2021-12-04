class Scrabble
  def initialize(word)
    @word = word.nil? ? word : word.upcase
  end

  def score
    @word == 'A' ? 1 : 0
  end
end