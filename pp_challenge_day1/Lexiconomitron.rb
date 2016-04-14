require "rubygems"
require "rspec"

class Lexiconomitron
  def eat_t(sentence)
    sentence.gsub(/[tT]/,"")
  end

  def shazam(words)
    aux = words.map {|word| eat_t(word.reverse)}
    
  end
end
# Lexiconomitron.new.shazam(["atbc","def"])