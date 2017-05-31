require 'minitest/autorun'
require 'minitest/pride'
require './lib/parser'

class ParserTest < Minitest::Test
  def test_it_initializes_with_markdown_text
    parser = Parser.new("# My Life in Desserts

    ## Chapter 1: The Beginning")
    
    expected = "# My Life in Desserts

    ## Chapter 1: The Beginning"
    
    assert_equal expected, parser.markdown_text
  end 
  
  def test_create_paragraphs_converts_free_standing_text_to_paragraphs
    skip
    parser = Parser.new(file)
    
    
    parser.create_paragraphs
  end 
end 