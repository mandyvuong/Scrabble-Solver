class Scrabble
  def initialize(word)
    @word = word
  end

  def score
    sum = 0
     if @word.nil? 
      sum = 0
     else
      a = 1 
      sum = @word.downcase.count('a') * a
     end
    sum
  end
end