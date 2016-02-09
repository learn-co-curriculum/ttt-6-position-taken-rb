require_relative '../lib/position_taken.rb'

describe '#position_taken? in lib/position_taken.rb' do
  it 'accepts a board and an index to check as arguments' do
    board = []
    index = 0

    expect{position_taken?(board, index)}.to_not raise_error
  end

  it 'returns false if the board has an empty string " " at the index given' do
    board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    index = 0

    expect(position_taken?(board, index)).to be(false)
  end

   it 'returns false if the board has an empty string "" at the index given' do
    board = ["", " ", " ", " ", " ", " ", " ", " ", " "]
    index = 0

    expect(position_taken?(board, index)).to be(false)
  end

  it 'returns false if the board has nil at the index given' do
    board = [nil, " ", " ", " ", " ", " ", " ", " ", " "]
    index = 0

    expect(position_taken?(board, index)).to be(false)

    index = 1
    expect(position_taken?(board, index)).to be(false)
  end

  it 'returns true if the board has a value of "X" or "O" at the index given' do
    board = ["X", " ", " ", " ", " ", " ", " ", " ", "O"]

    index = 0
    expect(position_taken?(board, index)).to be(true)

    index = 8
    expect(position_taken?(board, index)).to be(true)
  end
end
