include "Slideable"
require_relative "Piece"
class Bishop < Piece
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
    DIAGONAL_DIRS

end
