require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# Find the documentation for YAML::load_file.

# I see a "module YAML" page in the Ruby docs, but no mentions of class methods.
# There is a link to a yaml.org site but I don't see documentation there.
# There is also a link to documentation for "module Psych" which is a "YAML parser and emitter" and does have a class method "load_file".