=begin
doctest: Test the prompt method by providing the answer
>> prompt "What is your name", "Zaphod"
=> "Zaphod\n"
doctest: Test the prompt by providing an answer and telling it I want the result chomped
>> prompt "What is your name", "Zaphod", true
=> "Zaphod"
=end

def prompt *prompt
  print "#{prompt}:> "
  gets.chomp!
end
