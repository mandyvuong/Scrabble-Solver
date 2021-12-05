class Scrabble
  def initialize(word)
    @word = word
  end

  def score
    letter_value = { 
      'A' => 1
     } 
    
    sum = 0
     if @word.nil? 
      sum = 0
     else 
      letter_value.each { |letter, value|
      sum += @word.upcase.scan(letter).count * value
      }
     end
    sum
  end
end