class Ticket
  VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]
  def initialize(venue, date)
    if VENUES.include?(venue)
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end
    @date = date
  end
end

class Ticket2
  VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]
end
puts Ticket2::VENUES
puts Math::PI
puts Math::E

# M-u

puts RUBY_VERSION
puts RUBY_PATCHLEVEL
puts RUBY_RELEASE_DATE
puts RUBY_VERSION
puts RUBY_COPYRIGHT
