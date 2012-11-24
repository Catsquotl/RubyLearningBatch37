=begin
doctest: Test the prompt method by providing the answer
>> prompt "What is your name?"
=> What is your name?
doctest: Test the prompt by providing an answer and telling it I want the result chomped
>> prompt "What is your name"
=> "eelco"
=end

def prompt txt
  print "#{txt} "
  gets.chomp!
end
