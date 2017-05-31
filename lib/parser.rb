
class Parser
  attr_reader :text
  def initialize(text)
    @text = text
  end 

  def create_paragraphs
    #check first line for beginning of paragraph
    if @text[0] != "#"
      @text.insert(0, "<p>")
    end 
    #check for beginning of paragraph mid-text (after 2 new lines)
  
    #check for end of paragrapraph cases(2 new lines, start of header, end of file)
    @text.each_line do |line|
      if line[-1..-2] == "\n\n" && !line.include?("#")
        line.sub("\n", "</p>")
      end 
    end 
  end 
  
  #level 1:
  #create paragraphs
  #handle 1 line break
  #handle 2 line breaks
  #creates headers
  
  
end 