p array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

class PlayingCard
  SUITS = %w{ clubs diamonds hearts spades }
  RANKS = %w{ 2 3 4 5 6 7 8 9 10 J Q K A }
  class Deck
    attr_reader :cards
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

deck = PlayingCard::Deck.new()
p deck.cards

p [1, 2, 3, 4].inject(0) { |acc, n| acc + n}

[1, 2, 3, 4].inject(0) do |acc, n|
  puts "adding #{acc} and #{n}...#{acc + n}"
  acc + n
end

[1, 2, 3, 4].inject(0) do |acc, n|
  puts "adding #{acc} and #{n}...#{acc + n}"
  acc + n
  1 # need to end with accumulator
end
