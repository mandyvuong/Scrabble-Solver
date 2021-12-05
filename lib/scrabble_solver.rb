class Scrabble
  def initialize(word)
    @word = word
  end

  def points
    letter_value = { 
      'A' => 1,
      'F' => 4
     } 
  end

  def score
    sum = 0
     if !@word.nil? 
      points.each { |letter, value|
      sum += @word.upcase.count(letter) * value
      }
     end
    sum
  end
end