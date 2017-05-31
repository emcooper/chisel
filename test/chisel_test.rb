require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'

class ChiselTest < Minitest::Test

  def test_it_extracts_input_text
    chisel = Chisel.new 
    file_path = "/Users/ellencooper/turing/1module/challenges/chisel/input.md"

    assert_instance_of String, chisel.extract_input_text(file_path)
  end 
  

end 
