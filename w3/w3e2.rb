def prompt txt
  print "#{txt} "
  gets.chomp!
end

filename = prompt "Input the name of the file to be altered"

def change_word text_string
  change_text_index = text_string.index(prompt"which word needs to be inserted before?")
  text_string.insert(change_text_index,"#{prompt "which word do I need to insert?"}" + " ")
end
   
File.open("./#{filename}", "r+") do |file|
  text_string = file.read
  file.rewind
  change_word text_string
  file.write text_string
end
  
  

