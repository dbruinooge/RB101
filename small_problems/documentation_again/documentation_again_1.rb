# file::path is a class method and file#path is an instance method.
# I believe this means that file#path is called on an object that is a member of the File class.
#   Example: my_file.path => returns path of my_file as a string
# file::path would be called on the class itself.
#   Example: File.path("/dev/null") => returns "/dev/null"