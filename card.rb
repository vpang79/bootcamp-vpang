class Card
  attr_accessor :rank, :suit
  
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "The #{self.rank} of #{self.suit}."
  end
  
  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck
    def initialize
      @cards = []
      @cards << Card.new(10, :spades)
      @cards << Card.new(9, :diamonds)
      @cards << Card.new(3, :clubs)
      @cards << Card.new('Ace', :hearts)
    end
    
    def shuffle
      @cards.shuffle!
    end
    
    def deal
      card = @cards.shift
      card.output_card
    end
end

deck = Deck.new
deck.shuffle
deck.deal

