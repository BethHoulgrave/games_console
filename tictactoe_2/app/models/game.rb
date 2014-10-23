class Game < ActiveRecord::Base
    attr_accessible :game_complete, :game_title, :player_1, :player_2, :user_id

    # belongs_to :player_1, class_name: 'User'
    # belongs_to :player_2, class_name: 'User'

    has_many :moves

  WINNING_MOVES = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [6, 4, 8], [6, 4, 2]]

  def build_board
    @board = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
    self.moves.each do |move|
      @board[move.cell] = move.symbol
    end
    @board
  end


  #.any? iterates through each SINGLE value (so ignores that values are in arrays)
  def check_win?
    @board = build_board
    result = WINNING_MOVES.any? do |winning_solution| 
      result1 = winning_solution[0]
      result2 = winning_solution[1]
      result3 = winning_solution[2]

      @board[result1] != nil && @board[result1] == @board[result2] && @board[result2] == @board[result3]
    end

  end


end
