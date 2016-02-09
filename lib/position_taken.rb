def position_taken?(board, index)
  # basic solution:

  # taken = nil
  # if (board[index] ==  " " || board[index] == "" || board[index] == nil)
  #   taken = false
  # else
  #   taken = true
  # end
  # taken

  # advanced solution w/ ternary operator
  # (board[index] ==  " " || board[index] == "" || board[index] == nil) ?
  #  false : true
  #  BOTH ABOVE SOLUTIONS ARE MORE ACCURATELY: "POSITION_EMPTY?"
  #  THIS IS "POSITION_TAKEN?":
  (board[index] ==  "X" || board[index] == "O") ? true : false

end
