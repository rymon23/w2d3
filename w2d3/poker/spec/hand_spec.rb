require 'rspec'
require 'hand.rb'

describe Hand do  
  subject
  describe '#initialize' do
    let(:test_hand) { Hand.new }

    it "should generate an array of exactly 5 cards" do
      expect(test_hand.card_set.length).to eq(5)
    end

    it "card set array should contain class instances of card" do
      expect(test_hand.cards_set.all? {|card| card.class == Card }).to eq(true)
    end
  end
end