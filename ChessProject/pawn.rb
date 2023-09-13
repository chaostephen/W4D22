require_relative "Board"
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