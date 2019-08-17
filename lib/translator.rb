# require modules here

require 'yaml'

def load_library(file_path)
  emoticons = YAML.load_file(file_path) 
  puts emoticons
  dictionary = {'get_meaning' => {}, 'get_emoticon' => {}}
  return dictionary
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

