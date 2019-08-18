# require modules here

require 'yaml'

def load_library(file_path)
  emoticons = YAML.load_file(file_path) 
  dictionary = {'get_meaning' => {}, 'get_emoticon' => {}}
  
  emoticons.map do |meaning, faces|
    english_emoticon = faces[0]
    japanese_emoticon = faces[1]
    dictionary['get_meaning'][japanese_emoticon] = meaning
    dictionary['get_emoticon'][english_emoticon] = japanese_emoticon
  end
    
  return dictionary
end

def get_japanese_emoticon(file_path, emoticon)
  dictionary = load_library(file_path)
  dictionary[get_emoticon].fetch(emoticon, "go fish")
  
end

def get_english_meaning
  # code goes here
end

