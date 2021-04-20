p String.instance_methods.sort

p Enumerable.instance_methods.sort

p "================"

# Filtered and selected method lists
# class's instance methods without those of the class's ancestors
p String.instance_methods(false).sort

# ================

"aaa".private_methods
"aaa".public_methods
"aaa".protected_methods
"aaa".singleton_methods

String.private_instance_methods
String.protected_instance_methods
String.public_instance_methods
