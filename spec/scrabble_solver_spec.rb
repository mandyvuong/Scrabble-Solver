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
  it 'returns score 0 since the word argument is nil' do
    scrabble = Scrabble.new(nil)
    expect(scrabble.score).to eq 0
  end
  it 'returns score 1 since the word argument is 1 letter uppercase' do
    scrabble = Scrabble.new('A')
    expect(scrabble.score).to eq 1
  end
  it 'returns score 1 since the word argument is 1 letter lowercase' do
    scrabble = Scrabble.new('a')
    expect(scrabble.score).to eq 1
  end
  it 'returns score 2 for word with 2 of the same letter' do
    scrabble = Scrabble.new('Aa')
    expect(scrabble.score).to eq 2
  end
  it 'returns score 4 for word with a different letter argument' do
    scrabble = Scrabble.new('f')
    expect(scrabble.score).to eq 4
  end
  it 'returns score 6 for word street' do
    scrabble = Scrabble.new('street')
    expect(scrabble.score).to eq 6
  end
  it 'returns score 22 for word quirky i.e. taking into account other letters' do
    scrabble = Scrabble.new('quirky')
    expect(scrabble.score).to eq 22
  end
  it 'returns score 41 for word OXYPHENBUTAZONE i.e. taking into account other letters' do
    scrabble = Scrabble.new('OXYPHENBUTAZONE')
    expect(scrabble.score).to eq 41
  end
end


