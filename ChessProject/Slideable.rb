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
        raise NotImplementedError 

    end
    def grow_unblocked_moves_in_dir(dx,dy)
        moves = []
    # create an array to collect moves

    # get the piece's current row and current column
   row, col = self.pos
    counter = 2
    while row < 7 && row > 0 && col < 7 && col > 0
    if Board[row+dx, col+dy].nil?
        moves << [row+dx, col+dy] 
    dx * counter
    dy * counter
    elsif !Board[row+dx, col+dy].nil?
    counter += 1
    end
    moves


    # in a loop:
      # continually increment the piece's current row and current column to generate a new position
      # stop looping if the new position is invalid (not on the board); the piece can't move in this direction
      # if the new position is empty, the piece can move here, so add the new position to the moves array
      # if the new position is occupied with a piece of the opposite color, the piece can move here (to capture the opposing piece), so add the new position to the moves array
        # but, the piece cannot continue to move past this piece, so stop looping
      # if the new position is occupied with a piece of the same color, stop looping

    # return the final moves array

    # count += 1
    # HORIZONTAL_DIRS.each do |dir|
    #     if self.move_dirs.dir == true
    #         counter += 1
    #         dir * counter
    #     end
        end
    end
    


end