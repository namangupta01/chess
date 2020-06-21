require 'player'

class ChessBoard

  attr_accessor :board, :player1, :player2, :turn

  def initialize
    player1 = Player.new 'Player1', 'white'
    player2 = Player.new 'Player2', 'black'

    8.times.each do |i|
      8.times.each do |j|
        board[i][j] = nil
      end
    end

    board[1][1] = Rook.new (player1)
    board[1][2] = Knight.new (player1)
    board[1][3] = Bishop.new (player1)
    board[1][4] = Queen.new (player1)
    board[1][5] = King.new (player1)
    board[1][6] = Bishop.new (player1)
    board[1][7] = Knight.new (player1)
    board[1][8] = Rook.new (player1)
    board[2][1] = Pawn.new (player1)
    board[2][2] = Pawn.new (player1)
    board[2][3] = Pawn.new (player1)
    board[2][4] = Pawn.new (player1)
    board[2][5] = Pawn.new (player1)
    board[2][6] = Pawn.new (player1)
    board[2][7] = Pawn.new (player1)
    board[2][8] = Pawn.new (player1)

    board[8][1] = Rook.new (player2)
    board[8][2] = Knight.new (player2)
    board[8][3] = Bishop.new (player2)
    board[8][4] = Queen.new (player2)
    board[8][5] = King.new (player2)
    board[8][6] = Bishop.new (player2)
    board[8][7] = Knight.new (player2)
    board[8][8] = Rook.new (player2)
    board[7][1] = Pawn.new (player2)
    board[7][2] = Pawn.new (player2)
    board[7][3] = Pawn.new (player2)
    board[7][4] = Pawn.new (player2)
    board[7][5] = Pawn.new (player2)
    board[7][6] = Pawn.new (player2)
    board[7][7] = Pawn.new (player2)
    board[7][8] = Pawn.new (player2)

    turn = player1
  end

  def move(piece, x1, y1, x2, y2)
    if x1 < 1 || x1 > 8 || y1 < 1 || y1 > 8 || x2 < 1 || x2 > 8 || y2 < 1 || y2 > 8
      puts 'Invalid Move'
      return
    end

    if board[x2][y2] != nil
      puts 'Invalid Move. Piece is already there'
      return
    end

    if piece.contantize != board[x1][y1].class
      puts 'Invalid Move. Piece location is wrong'
      return
    end

    if board[x1][y1].player != turn
      puts 'Wrong Player Moved the Piece'
    end

    all_locations = board[x1][y1].get_all_locations x1, y1


  end
end