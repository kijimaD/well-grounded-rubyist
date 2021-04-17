$gvar = "I'm a global!"
local_var = "local var"
class C
  def examine_global
    puts $gvar # I'm a global!
    # puts local_var # undefined error
  end
end

c = C.new
c.examine_global

p $0
p $$
p $:

require "English"
p $IGNORECASE
p $PID
p $LOAD_PATH
