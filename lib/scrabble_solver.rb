class Scrabble
  def initialize(word)
    @word = word
  end

  def points
    letter_value = { 
      'A' => 1
     } 
  end

  def score
    sum = 0
     if @word.nil? 
      sum = 0
     else 
      points.each { |letter, value|
      sum += @word.upcase.scan(letter).count * value
      }
     end
    sum
  end
end