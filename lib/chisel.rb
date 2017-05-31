class Chisel 
  
  def convert
    input_file = open_input_file(ARGV[0])
    parse_to_html
    write_html_to_output_file
    print_summary
  end 
  
  def open_input_file(file)
    File.open(file, "r")
  end 
  
end 
