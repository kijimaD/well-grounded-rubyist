class C
  def show_var
    @v = "I am an instance variable initialized to a string."
    puts @v # implication s not for a single object. C's instance. not for a single object.
  end
  @v = "Instance variables can appear anywhere...." # Class object C.
end

C.new.show_var # I am...

# both are named @v, but they aren't the same variable. They belong to different objects.
