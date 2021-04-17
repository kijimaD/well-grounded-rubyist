module TextHandler
  class InvalidLineError < StandardError
  end
end

def line_from_file(filename, substring)
  fh = File.open(filename)
  line = fh.gets
  raise TextHandler::InvalidLineError unless line.include?(substring)
end

line_from_file("log.txt", "aaaa")
