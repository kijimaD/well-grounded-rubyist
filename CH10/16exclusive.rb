# p325

class String
  def ^(key)
    kenum = key.each_byte.cycle                           # => #<Enumerator: #<Enumerator: "secret!":each_byte>:cycle>, #<Enumerator: #<Enumerator: "secret!":each_byte>:cycle>
    each_byte.map { |byte| byte ^ kenum.next }.pack("C*") # => "=\f\x00\x17E\x18H\a\x11\x0F\x17E\aU\x01\f\r\x15K", "Nice little string."
  end
end

# p326
str = "Nice little string."
key = "secret!"
x = str ^ key                   # => "=\f\x00\x17E\x18H\a\x11\x0F\x17E\aU\x01\f\r\x15K"
orig = x ^ key                  # => "Nice little string."
