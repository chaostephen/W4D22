include "Slideable"
require_relative "Piece"
class Queen < Piece
    attr_reader :color, :board, :pos
    def initialize(color,board,pos)
        super(color, board,pos)
        # @currentSymbol = color
        @otherSymbol = :b
        if currentSymbol==color
            currentSymbol=@otherSymbol
        else
            currentSymbol=color
        end
    end
    private
    HORIZONTAL_DIRS
    DIAGONAL_DIRS

end
