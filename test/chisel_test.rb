require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'

class ChiselTest < Minitest::Test

  def test_it_opens_input_file
    chisel = Chisel.new 
    file_path = "/Users/ellencooper/turing/1module/challenges/chisel/input.md"

    refute chisel.open_input_file(file_path).closed?
  end 
  

end 
