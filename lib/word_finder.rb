require 'pry'

class WordFinder
  def words
    File.read('/usr/share/dict/words').split("\n")
  end

  def for_letters(letters)
    word_options = words.select{|word|
      word.chars.each do |letter|
        if letters.include?(letter.downcase)
        end
      end
    }
  end

end
