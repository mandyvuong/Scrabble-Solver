require 'scrabble_solver'

describe Scrabble do
  it 'returns score 0 as there is no word taken as an argument' do
    scrabble = Scrabble.new('')
    expect(scrabble.score).to eq 0
  end
  it 'returns score 0 since the word argument is format' do
    scrabble = Scrabble.new(" \t\n")
    expect(scrabble.score).to eq 0
  end
end