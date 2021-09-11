File.open("/var/root")          # =>
# ~> -:1:in `initialize': No such file or directory @ rb_sysopen - /var/root (Errno::ENOENT)
# ~> 	from -:1:in `open'
# ~> 	from -:1:in `<main>'

# on Linux, the "not directory" error si represented by the C macro ENOTDIR, which is defined as the number 20. Ruby's Errno class wraps these error-to-number mappings in a bundle of exception classes.
