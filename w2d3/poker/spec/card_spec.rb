require "rspec"
require "card.rb"


describe Card do
  subject(:test_card) { Card.new("7" ,:heart) }

  describe "#initialize" do
    it "initializes value as string" do
      expect(test_card.value).to eq("7")
    end

    it "initializes suit as symbol" do
      expect(test_card.suit).to eq(:heart)
    end

  end
end

