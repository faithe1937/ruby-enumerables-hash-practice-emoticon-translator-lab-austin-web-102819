# require modules here

require "yaml"

def load_library(file)
  emoticons = yaml.load_file(file)

new_hash = {
  'get_meaning' => {},
  'get_emoticon' => {}
}
  
emoticons.each do |key, value|
  new_hash['get_meaning'][value[1]] = key
  new_hash['get_emoticon'][value[0]] = emoticons[key][1]
end
new_hash
end 

def get_japanese_emoticon(file, emoticons)
  result = load_library(file)['get_emoticon'][emoticon]
  result ? result : "sorry, that emoticon was not found"
end

def get_english_meaning(file, emoticon)
  result = load_library(file)['get_meaning'][emoticon]
  result ? result : "sorry, that emoticon was not found"
end