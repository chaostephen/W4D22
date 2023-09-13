class Board
    def initialize
        @board=Array.new(8) {Array.new(8)}
    end

     def [](pos)
        row, col = pos
        @board[row][col]
    end
    def []=(pos, val)
        row, col=pos
        @board[row][col]=val
    end

    def move_piece(start_pos,end_pos)
        rows, cols = end_pos
        return false if rows > 7 || rows < 0 || cols > 7 || cols < 0
         row, col = start_pos
        return false if row > 7 || row < 0 || col > 7 || col < 0
    end
   
end