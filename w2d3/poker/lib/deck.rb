require_relative "card"


class Deck
  attr_reader :cards

  SUITS = [:heart, :spade, :diamond, :clover].freeze
  VALUES = ('2'..'10').to_a + ['J','Q','K','A']
  
  def initialize
    @cards = []
    setup_suit
  end

  def setup_suit
    SUITS.each do |suit|
      VALUES.each do |value|
        cards << Card.new(value, suit)
      end
    end
  end

  def shuffle
    self.cards.shuffle
  end
end