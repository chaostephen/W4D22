require_relative "Piece"
class Board

    # have color of the pieces that occupy row 0-1(white)
    # row 6-7 (black)
    #populate board with blank pieces
    #move piece from 1 location to other
    def initialize
        @grid=Array.new(8) {Array.new(8,nil)}
        populate
    end

    def populate
        @grid.each_with_index do |row, i|
            if [0,1].include?(i)
                row.map!.with_index {|ele,j| Piece.new(self, :white, [i,j])} 
            elsif [6,7].include?(i)
                row.map!.with_index {|ele,j| Piece.new(self, :black, [i,j])} 
            end
            
        end
    end

     def [](pos)
        row, col = pos
        @grid[row][col]
    end
    def []=(pos, val)
        row, col=pos
        @grid[row][col]=val
    end

    def checkmate?(color)
        return false unless in_check?(color)
        pieces.select {|p| }

    def move_piece(start_pos,end_pos)
        rows, cols = end_pos
        return false if rows > 7 || rows < 0 || cols > 7 || cols < 0
         row, col = start_pos
        return false if row > 7 || row < 0 || col > 7 || col < 0
        
        # 1. find the piece at start position
        #2. move the piece to the end posision
        if !self.start_pos.nil?
            temp_start_pos = self.start_pos
        end
        if !self.end_pos.nil?
            self.end_pos = temp_start_pos
            self.start_pos = nil
        end
    end


   
end