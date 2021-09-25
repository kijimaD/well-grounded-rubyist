system("date")                  # => true
$?                              # => #<Process::Status: pid 195093 exit 0>
Thread.new { system("datee"); $? }.join # => #<Thread:0x000055ec8be6e358 -:3 dead>
$?                                      # => #<Process::Status: pid 195093 exit 0>

# main thread $? is unchanged

# >> 2021年  9月 25日 土曜日 11:23:06 JST
