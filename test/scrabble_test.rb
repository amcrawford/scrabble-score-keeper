gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_a_word
    assert_equal 9, Scrabble.new.score("amber")
  end

  def test_it_returns_0_for_empty_string
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 0, Scrabble.new.score("")
  end

  def test_it_returns_0_for_nil
    assert_equal 0, Scrabble.new.score(nil)
  end

  def test_it_returns_0_for_unknown_letters
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 0, Scrabble.new.score("+")
  end

  def test_it_does_not_count_spaces
    assert_equal 7, Scrabble.new.score("a bc")
  end
end
