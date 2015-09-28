gem 'minitest'
require './lib/word_finder'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WordFinderTest < Minitest::Test
  def test_it_returns_word_options_for_letter_set
    finder = WordFinder.new
    assert finder.for_letters(['r', 'u', 'n']).include?("run")
  end

  def test_it_returns_multiple_word_options_for_letter_set
    finder = WordFinder.new
    assert finder.for_letters(['r', 'u', 'n']).count > 1
  end

  def test_it_returns_word_with_letters_out_of_order
    finder = WordFinder.new
    assert finder.for_letters(['r', 'e', 'x', 'a', 'p', 't', 'o']).include?('aer')
  end

  def test_it_returns_multiple_words
    finder = WordFinder.new
    assert finder.for_letters(['r', 'e', 'x', 'a', 'p', 't', 'o']).include?('aer')
    assert finder.for_letters(['r', 'e', 'x', 'a', 'p', 't', 'o']).include?('toe')
  end

end
