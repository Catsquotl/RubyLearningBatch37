filename = ARGV[0]
def change_word text_string
  change_text_index = text_string.index(ARGV[1])
  text_string.insert(change_text_index,ARGV[2] + " ")
end 
  
File.open("./#{filename}", "r+"){|file|
  text_string = file.read
  file.rewind
  change_word text_string
  file.write text_string}
  

