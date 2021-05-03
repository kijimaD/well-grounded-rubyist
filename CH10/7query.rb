[1, 3, 5, 4, 2].max
p %w{ Ruby C APL Perl Smalltalk}.min
# Minumum and maximum are determined by the <=> logic.

p %w{ Ruby C APL Perl Smalltalk}.min { |a, b| a.size <=> b.size }
p %w{ Ruby C APL Perl Smalltalk}.min_by { |lang| lang.size }
p %w{ Ruby C APL Perl Smalltalk}.minmax
p %w{ Ruby C APL Perl Smalltalk}.minmax_by { |lang| lang.size }

# ================
class Die
  include Enumerable
  def each
    loop do
      yield rand(6) + 1
    end
  end
end

die = Die.new
# puts die.max # maximum value ever to be determined.

state_hash = { "New York" => "NY", "Maine" => "ME", "Alaska" => "AK", "Albama" => "AL" }
p state_hash.min
p state_hash.min_by { |name, abbr| name }
p state_hash.min_by { |name, abbr| abbr }
