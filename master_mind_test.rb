gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'master_mind_refactor'

class PositionCorrectTest < Minitest::Test

  def test_that_it_runs_bruh
    position = PositionCorrect.new(["r","r","r","r"])
    assert_equal "you have 1 positions correct and 1 colors correct", position.result
  end
  def test_that_it_runs_bruh_again
    position = PositionCorrect.new(["r","b","r","r"])
    assert_equal "you have 2 positions correct and 2 colors correct", position.result
  end

  def test_that_it_runs_bruh_bruh
    position = PositionCorrect.new(["y","r","b","g"])
    assert_equal "you have 0 positions correct and 4 colors correct", position.result
  end
end
