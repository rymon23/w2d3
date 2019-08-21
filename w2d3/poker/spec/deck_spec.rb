require "rspec"
require "deck.rb"


describe Deck do
  subject(:test_deck) { Deck.new }

    it "should hold 52 cards" do
      expect(test_deck.cards.length).to eq(52)
    end

    it "should hold 13 cards for each suit" do
      hearts = test_deck.cards.select {|card| card.suit == :heart }
      expect(hearts.length).to eq(13) 
    end

    it "cards array should contain class instances of card" do
      expect(test_deck.cards.all? {|card| card.class == Card }).to eq(true)
    end
end
