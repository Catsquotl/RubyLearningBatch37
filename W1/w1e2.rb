=begin
  puts "%05d" % 123

  According to the String % documentation
  the ("%05d") string literal is used by the (%) operator to format the arguments given after the operator (123)
  For info on how this works it points to the Kernel::sprintf documentation.

  There we learn that a format sequence is always started with a percentage sign. followed by an optional flag, width, and precision character. 
  To be terminated by a type field character. 
  The flag in this case (0) tells the formatter to fill the width with leading zero's if it is smaller than the set width.
  The width in this case tels to use 5 spaces for the whole format.
  No precision charcter is used.
  The field tells the formatter that we have digits here..   

  So what we have is a question to format 123 padded woth zero's to f spaces as digits.
  00123
=end
