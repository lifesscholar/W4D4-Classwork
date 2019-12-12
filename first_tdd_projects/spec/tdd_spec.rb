require "rspec"
require "tdd"

describe "first tdd project" do

    describe "#my_uniq" do
        it "returns only unique values of an array" do
            expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
        end

    end

    describe "#two_sum" do
      it "returns pairs of indices whose element's pairs sum zero" do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
      end
    end

    describe "#my_transpose" do
        it "coverts between row oriented and column oriented representations" do
            expect(my_transpose([
                [0, 1, 2],
                [3, 4, 5],
                [6, 7, 8]
              ])).to eq([[0, 3, 6],
                         [1, 4, 7],
                         [2, 5, 8]])
        end
    end

    describe "#stock_picker" do 
        # it "takes in an array" do
        #     subject(:stock_picker) {stock_picker(arg)}
        #     expect(arg).to be_a(Array)
        # end
        stocks = stock_picker([200,300,400,300,400])
        it "returns pair of indices" do 
          expect(stocks.length).to be(2)
        end

        it "the first value being less than the second value" do 
          expect(stocks.first).to be < stocks.last
        end

        it "returns indices of elements that have the greatest difference" do 
          expect(stocks).to eq([0,2])
        end
    end



end