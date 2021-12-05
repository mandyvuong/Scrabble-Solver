class Scrabble
  def initialize(word)
    @word = word
    @sum = 0
  end

  def score
    score_calculation
    @sum
  end

  private

  def score_calculation
    points if !@word.nil? 
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

      letter_value.each { |letter, value|
      @sum += @word.upcase.scan(letter).count * value
      }
  end
end