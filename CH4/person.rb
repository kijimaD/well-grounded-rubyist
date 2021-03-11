class Person
  def self.method_missing(m, *args)
    method = m.to_s
    if method.start_with?("all_with_")
      # Handle request here
    else
      super
    end
  end
end
