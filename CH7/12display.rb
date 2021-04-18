p "Hello".display
# => Hellonil

fh = File.open("/tmp/display.out", "w")
"Hello".display(fh)
fh.close
puts(File.read("/tmp/display.out"))

# You can redirect the output of display
