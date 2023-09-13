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

    end
    private
    def move_dirs
        raise NotImplementedError if valid_moves ==false

    end
    def grow_unblocked_moves_in_dir(dx,dy)
        
    end
    


end