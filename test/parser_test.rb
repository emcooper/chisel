require 'minitest/autorun'
require 'minitest/pride'
require './lib/parser'

class ParserTest < Minitest::Test
  def test_it_initializes_with_line
    parser = Parser.new("# My Life in Desserts")
    
    assert_equal "# My Life in Desserts", parser.line
  end 
  
  def test_it_converts_free_standing_text_to_paragraphs
    skip
  end 
end 