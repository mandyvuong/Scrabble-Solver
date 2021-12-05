class Scrabble
  def initialize(word)
    @word = word
  end

  def score
    sum = 0
     if @word.nil? 
      sum = 0
     else 
      @word.upcase.split('').each {|w| w == 'A' ? sum += 1 : sum+=0 }
     end
    sum
  end
end