# Find the documentation for YAML::load_file.
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# load_file load a document from file located at filepath
# yaml is alias for psych class, so useful yaml documentation is within psych class