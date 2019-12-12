# three piles (arrays)

# move method, that moves the last element.arrays

# last in, first out. (stack)

# won? method: all the numbers are in one pile and they are in order
# order is [1, 2, 3, 4]
# need to look at each pile to determine if won? == true

require "rspec"
require "towers_of_hanoi"

describe TowersOfHanoi do

    subject(:game) {TowersOfHanoi.new}
    describe "#initialize" do
        it "creates three arrays" do
            expect(game.piles).to be_a(Array)
        end

        it "pile1 should be stacked in ascending order" do
            expect(game.piles[0]).to eq([1, 2, 3, 4])
        end

        it "pile2 and pile3 should start empty" do
            expect(game.piles[1]).to be_empty
            expect(game.piles[2]).to be_empty
        end
    end

    describe "#move" do
        # context "makes the proper move" do
            # a = game.piles
            # game.move([1,2])
            # b = game.piles
            
            # it "piles array is mutated" do
            #     a = game.piles
            #     game.move([1,2])
            #     b = game.piles
            # #   expect(a).to_not eq(b)
            # end

            it "removes the first element from the first array within piles" do
                game.move([1, 2])
              expect(game.piles[0]).to eq([2,3,4])
            end

            it "adds the element to the correct pile" do
                game.move([1, 2])
              expect(game.piles[1]).to eq([1])
            end
        # end
    end

    describe "#won?" do 
      it "returns false if the game is not won" do 
        expect(game.won?).to be false
      end

      it "returns true if second pile has all the pieces in ascending order" do 
        game.piles[1] = [1,2,3,4]
        expect(game.won?). to be true 
      end

      it "returns true if third pile has all the pieces in ascending order" do 
        game.piles[2] = [1,2,3,4]
        expect(game.won?). to be true 
      end

    end

    describe "play" do
        it "should repeat game until game.won? equals true" do

        end


    end

    # describe "get_player_move" do
        
    #     it "returns an array of two numbers" do
    #         expect(game.get_player_move.length).to be(2)
    #     end
        
    #     it "the two numbers cannot be the same" do
    #         expect(game.get_player_move.first).not_to eq(game.get_player_move.last)
    #     end
    # end

    # describe "#valid_moves?" do
    #     it "should return true if it is valid" do
    #         expect(valid_moves([1, 2])).to
    #     end

    #     it "should return false if it is not valid" do

    #     end
    # end

end

# allow(get_player_move).to receive(:gets).and_return(1)
#       name = get_player_move.gets
