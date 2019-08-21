

require "rspec"
require "tdd.rb"

describe Array do
  subject(:arr) { [1, 2, 1, 3, 3] }
  
  describe "#my_uniq" do

    it "removes duplicates from arrays" do
      expect(arr.my_uniq).to eq([1,2,3])
    end
  end

  describe "#my_two_sum" do
    results = [-1, 0, 2, -2, 1].my_two_sum

    it "returns an array of pairs that sums to zero" do
      expect([-1, 0, 2, -2, 1].my_two_sum).to eq([[0,4], [2,3]])
    end

    it "smaller first elements come first" do 
      expect(results[0]).to eq([0,4])
    end
  end

  
end

  describe "#my_transpose" do
    # base_arr = [1,2,3]
    # zip_arr = 
    
    it "should zip arrays by index into base arr" do
      expect(my_transpose( [[0, 1, 2], [3, 4, 5], [6, 7, 8]] ) ).to eq( [[0, 3, 6], [1, 4, 7], [2, 5, 8]] )
    end
  end

  describe "#stock_picker" do
    it "outputs the most profitable pair of days" do
      expect(stock_picker( [1,4,3,6,65,6,5] )).to eq([0,4])
    end

    it "buy date before sell date" do
      result = stock_picker( [1,4,3,6,65,6,5] )
      expect(result[0]).to be < result[1]
    end

  end
