class PlayingCard
  SUITS = %w{ clubs diamonds hearts spades }
  RANKS = %w{ 2 3 4 5 6 7 8 9 10 J Q K A }
  class Deck
    def cards
      @cards.to_enum
    end
    def initialize(n=1)
      @cards = []
      SUITS.cycle(n) do |s|
        RANKS.cycle(1) do |r|
          @cards << "#{r} of #{s}"
        end
      end
    end
  end
end

deck = PlayingCard::Deck.new
p deck.cards
# deck.cards << "Joker!!"
# undefined method `<<' for #<Enumerator:0x0000562eb9e58808> (NoMethodError)

# enumeratorはオブジェクトで、状態を持つ。
