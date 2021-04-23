p Symbol.instance_methods(false).sort
# [:<=>, :==, :===, :=~, :[], :capitalize, :casecmp, :casecmp?, :downcase, :empty?, :encoding, :end_with?, :id2name, :inspect, :intern, :length, :match, :match?, :next, :size, :slice, :start_with?, :succ, :swapcase, :to_proc, :to_s, :to_sym, :upcase]

sym = :david
p sym.upcase
p sym.succ
p sym[2] # return substring
p sym.casecmp(:david) # return substring

# symbol: 記号を文字列でドレスアップした整数のようなエンティティと考えるとよい
