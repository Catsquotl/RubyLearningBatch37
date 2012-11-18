def change_word filename
  file = File.open("./#{filename}", "r+")
  text_string = file.read
  change_text_index = text_string.index("word")
  text_string.insert(change_text_index,"inserted ")
  file.rewind
  file.write text_string
  file.close
end

change_word "test"