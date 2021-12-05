class Scrabble
  def initialize(word)
    @word = word
  end

  def points
    letter_value = { 
      /[AEIURST]/ => 1,
      'F' => 4,
      'Y' => 4,
      'K' => 5,
      'Q' => 10
     } 
  end

  def score
    sum = 0
     if !@word.nil? 
      points.each { |letter, value|
      sum += @word.upcase.scan(letter).count * value
      }
     end
    sum
  end
end