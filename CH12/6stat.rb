File.size("./1io.rb")          # => 668
FileTest.size("./2io.rb")      # => 1388
File::Stat.new("./3exception.rb") # => #<File::Stat dev=0x801, ino=13644618, mode=0100664, nlink=1, uid=1000, gid=1000, rdev=0x0, size=199, blksize=4096, blocks=8, atime=2021-10-03 22:42:12.560234977 +0900, mtime=2021-09-11 19:01:18.159803986 +0900, ctime=2021-09-11 19:01:18.159803986 +0900>

# many query methods

FileTest.exist?("/usr/local/src/ruby/README") # => false
FileTest.directory?("/home/users/dblack/info") # => false
FileTest.file?("/home/users/dblack/info")      # => false
FileTest.symlink?("/home/users/dblack/info")   # => false

FileTest.readable?("/tmp")      # => true
FileTest.writable?("/tmp")      # => true
FileTest.executable?("/home/users/dblack/setup") # => false

File::Stat.new("./1io.rb")      # => #<File::Stat dev=0x801, ino=13662710, mode=0100664, nlink=1, uid=1000, gid=1000, rdev=0x0, size=668, blksize=4096, blocks=8, atime=2021-10-03 22:16:17.318917318 +0900, mtime=2021-10-03 22:16:17.31091716 +0900, ctime=2021-10-03 22:16:17.31091716 +0900>

File.open("./1io.rb") { |f| f.stat } # => #<File::Stat dev=0x801, ino=13662710, mode=0100664, nlink=1, uid=1000, gid=1000, rdev=0x0, size=668, blksize=4096, blocks=8, atime=2021-10-03 22:16:17.318917318 +0900, mtime=2021-10-03 22:16:17.31091716 +0900, ctime=2021-10-03 22:16:17.31091716 +0900>

File::Stat.instance_methods(false).sort                # => [:<=>, :atime, :birthtime, :blksize, :blockdev?, :blocks, :chardev?, :ctime, :dev, :dev_major, :dev_minor, :directory?, :executable?, :executable_real?, :file?, :ftype, :gid, :grpowned?, :ino, :inspect, :mode, :mtime, :nlink, :owned?, :pipe?, :rdev, :rdev_major, :rdev_minor, :readable?, :readable_real?, :setgid?, :setuid?, :size, :size?, :socket?, :sticky?, :symlink?, :uid, :world_readable?, :world_writable?, :writable?, :writable_real?, :zero?]
