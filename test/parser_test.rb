require 'minitest/autorun'
require 'minitest/pride'
require './lib/parser'

class ParserTest < Minitest::Test
  def test_it_initializes_with_markdown_text
    parser = Parser.new("# My Life in Desserts

    ## Chapter 1: The Beginning")
    
    expected = "# My Life in Desserts

    ## Chapter 1: The Beginning"
    
    assert_equal expected, parser.text
  end 
  
  def test_create_paragraphs_converts_1_free_standing_line_to_paragraph
    parser = Parser.new("this is a paragraph\n\n")
    
    expected = "<p>this is a paragraph</p>\n"
    
    assert_equal expected, parser.create_paragraphs
  end 
end 