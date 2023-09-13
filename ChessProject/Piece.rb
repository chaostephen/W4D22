require_relative "Board"

class Piece
    attr_reader :pos
    def initialize(board,symbol,pos)
        @board=board
        @color=symbol
        @pos=pos
    end
    def moves
        move = []
            
    end
 
    def empty?
        false
    end
    def valid_moves
        moves.reject{|end_pos|moves_into_check?(end_pos)}
    end
    def pos=(val)
    end
    def symbol
        raise NotImplementedError
    end

    def inspect
        'P'
    end

    def to_s
        "Px"
    end 

    private
    def move_into_check?(end_pos)
        test_board=board.dup
        test_board.move_piece!(pos,end_pos)
        test_board.in_check?(color)
    end
    
end
