require_relative "Board"
module Slideable
    attr_reader :HORIZONTAL_DIRS, :DIAGONAL_DIRS
    def valid_moves?(pos)
        result = []
        HORIZONTAL_DIRS =[
            [0,1],[0,-1],[1,0],[-1,0]
    ].freeze
        DIAGONAL_DIRS =[
            [1.1],[-1,-1],[1,-1],[-1,1]
    ].freeze
    end
    def moves
        all_moves=[]
            # if Piece.pos.valid_moves?(null_piece) && valid_moves
            #     all_moves << Piece.pos
            # end
            self.move_dirs.each do |dir|
            all_moves << grow_unblocked_moves_in_dir(dir[0],dir[1])
            end
        all_moves
    end
    private
    def move_dirs
        raise NotImplementedError if valid_moves ==false

    end
    def grow_unblocked_moves_in_dir(dx,dy)
        # if the board is not nil, move the piece to that position
        if moves.each do |move|
            move
            # move to the opposite color piece
        end
        end
    end
    


end