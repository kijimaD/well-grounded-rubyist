class C
  def method_missing(m, *args, &block)
    raise NameError, "What on earth do you mean by #{m}?"
  end
end

C.new.a

# ~> -:3:in `method_missing': What on earth do you mean by a? (NameError)
# ~> 	from -:6:in `<main>'
