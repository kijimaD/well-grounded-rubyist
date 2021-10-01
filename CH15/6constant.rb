class C
  def self.const_missing(const)
    puts "#{const} is undefined-setting it to 1."
    const_set(const, 1)
  end
end

C::A # !> possibly useless use of :: in void context
# >> A is undefined-setting it to 1.
