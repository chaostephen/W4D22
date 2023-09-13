require_relative "Board"

class Piece
    attr_reader :pos
    def initialize(board,color,pos)
        @board=board
        @color=color
        @pos=pos
    end
    def moves
        move = []
            
    end
 
    def empty?
    end
    def valid_moves
    end
    def pos=(val)
    end
    def Symbol
    end

    def inspect
        'P'
    end

    def to_s
        "Px"
    end 

    private
    def move_into_check?(end_pos)
    end
    
end

class Pawn < Piece
    def symbol

    end

    def moves

    end

    private
    def at_start_row?
        if row == 1 or row == 6
            return true
        end
        false
    end
    def forward_dir
        row,col = self.pos
        if pos[row+1][col]==nil
            return 1
        else
            return -1
        end
        
    end
    def forward_steps
    end
    def side_attacks
        row,col=self.pos
        if pos[row+1][col+1]!= nil
            return 1
        else
            return -1
        end
    end
end