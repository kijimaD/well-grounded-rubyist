# add hook to return [] if no match (default nil)

class Regexp
  alias __old_match__ match
  def match(string)
    __old_match__(string) || []
  end
end
