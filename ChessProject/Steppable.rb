module Steppable
    attr_reader :KING_DIRS, :KNIGHT_DIRS
    def valid_moves?
        KING_DIRS =[
            [0,1],[0,-1],[1,0],[-1,0],[1,1],[-1,-1],[1,-1],[-1,1]
    ].freeze
        KNIGHT_DIRS =[
            [1,2],[2,1],[-2,1],[1,-2],[-2,-1],[-1,-2],[2,-1],[-1,2]
    ].freeze
    end
    def moves
        all_moves = []
        row, col = self.pos
            if self.class == 'Knight'
                self.KNIGHT_DIRS.each |dir|
                cur_x, cur_y =row + dir[0], col + dir[1]
                all_moves << [cur_x,cur_y] if valid_pos(cur_x,cur_y) == true
            else
                self.KING_DIRS.each |dir|
                cur_x, cur_y = row + dir[0], col + dir[1]
                all_moves << [cur_x,cur_y] if valid_pos(cur_x,cur_y) == true
            end
            end
        
        loop do
            pos = [cur_x,cur_y]

            break unless board.valid_pos?(pos)

            if board.empty?(pos)
            moves << pos 
            else
                moves<<pos if board[pos].color !=color
                break
            end
        end
        all_moves
    end
    
      private
    
      def move_diffs
        raise NotImplementedError
      end
    end
    
end