class Scrabble
  def initialize(word)
    @word = word
  end

  def points
    letter_value = { 
      /[AEIOULNRST]/ => 1, 
      /[DG]/ => 2, 
      /[BCMP]/ => 3, 
      /[FHVWY]/ => 4, 
      /[K]/ => 5, 
      /[JX]/ => 8, 
      /[QZ]/ => 10
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