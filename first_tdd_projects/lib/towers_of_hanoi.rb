class TowersOfHanoi

    attr_reader :piles
    def initialize
        @piles = [[1, 2, 3, 4],[],[]]
    end

    def move(arr)
        selection1 = arr.first.to_i - 1
        piece = piles[selection1].shift
        selection2 = arr.last.to_i - 1
        piles[selection2].unshift(piece)
    end

    def play
        
    end

    def get_player_move
        move = []
        puts "enter the pile you want to take a piece from"
        player_input = gets.chomp
        move << player_input
        puts "enter the pile you want to add your piece to"
        player_input = gets.chomp
        move << player_input
        move
    end

    def won?
        return true if piles[1] == [1,2,3,4] || piles[2] == [1,2,3,4]
        false
    end

    


end