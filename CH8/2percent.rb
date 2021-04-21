puts %q{You needn't escape apostrophes when using %q.}

p %q-A string-
p %Q/Another string/
p %[Yet another string]
p [%q Hello! ]

p [%q Hello\ there! ]
%q-Better escape the \- inside this string!-

p %Q[I can put [] in here unescaped.]
p %q(I have to escape \( if I use it alone in here.)
p %Q(And the same goes for \).)
