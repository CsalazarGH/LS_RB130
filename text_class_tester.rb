require 'minitest/autorun'
require_relative 'text_class'



class TextClassTester < Minitest::Test
  def setup
    @file = File.open('swap_text.txt')
  end

  def test_word_count
    text_to_test = Text.new(@file.read)
    assert_equal(72, text_to_test.word_count)
  end

  def teardown
    @file.close
  end
end