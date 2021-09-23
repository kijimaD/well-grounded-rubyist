def capture_block(&block)
  block.call
end
capture_block { puts "Inside the block" }
# Inside the block

p = Proc.new { puts "This proc argument will serve as a code block." }
capture_block(&p)
# This proc argument will serve as a code block.

# capture_block(&p) { puts "This is error" }
# -:11: both block arg and actual block given
