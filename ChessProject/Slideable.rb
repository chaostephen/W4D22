require_relative "Board"

module Slideable
    attr_reader :HORIZONTAL_DIRS, :DIAGONAL_DIRS
    def valid_moves?(pos)
        result = []
        HORIZONTAL_DIRS =[
            [0,1],[0,-1],[1,0],[-1,0]
    ].freeze
        DIAGONAL_DIRS =[
            [1,1],[-1,-1],[1,-1],[-1,1]
    ].freeze
    end
    def moves
        all_moves=[]
            self.move_dirs.each do |dir|
            all_moves << grow_unblocked_moves_in_dir(dir[0],dir[1])
            end
        all_moves
    end
    private
    def move_dirs
        raise NotImplementedError 

    end
    def grow_unblocked_moves_in_dir(dx,dy)
        moves = []
   
        row, col = self.pos
        loop do
            cur_x, cur_y =row + dx, col + dy
            pos = [cur_x,cur_y]

            break unless board.valid_pos?(pos)

            if board.empty?(pos)
            moves << pos 
            else
                moves<<pos if board[pos].color !=color
                break
            end
        end
        moves
    end
end