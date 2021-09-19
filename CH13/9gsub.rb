class String
  alias __old_gsub_bang__ gsub!
  def gsub!(*args, &block)
    __old_gsub_bang__(*args, &block)
    self
  end
end

# how to change core ruby functionality
