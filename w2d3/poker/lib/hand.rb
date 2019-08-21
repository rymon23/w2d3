require "deck"

class Hand
  attr_reader :card_set, :deck

  def initialize(deck)
    @card_set = []
    @deck = deck
  end

  # def has_pair?

  #   self.card_set.select do |card|
  #     if 
  #   end
  # end

end