f = File.open("/tmp")
f.gets                          # =>
# ~> -:2:in `gets': Is a directory @ io_fillbuf - fd:7 /tmp (Errno::EISDIR)
# ~> 	from -:2:in `<main>'
