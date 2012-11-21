=begin
Exercise7. First of all, I'd like to thank Peter Cooper for allowing me to use this exercise.

The application you're going to develop will be a text analyzer. You will be working on it this and next week. Your Ruby code will read in text supplied in a separate file, analyze it for various patterns and statistics, and print out the results for the user. It's not a 3D graphical adventure or a fancy Web site, but text processing programs are the bread and butter of systems administration and most application development. They can be vital for parsing log files and user-submitted text on Web sites, and manipulating other textual data. With this application you'll be focusing on implementing the features quickly, rather than developing an elaborate object-oriented structure, any documentation, or a testing methodology.

Your text analyzer will provide the following basic statistics:
Character count
Character count (excluding spaces)
Line count
Word count
Sentence count
Paragraph count
Average number of words per sentence
Average number of sentences per paragraph

In the last two cases, the statistics are easily calculated from the word count, sentence count, and paragraph count. That is, once you have the total number of words and the total number of sentences, it becomes a matter of a simple division to work out the average number of words per sentence.

Before you start to code, the first step is to get some test data that your analyzer can process. You can find the text at:
http://rubylearning.com/data/text.txt

Save the file in the same folder as your other Ruby programs and call it text.txt. Your application will read from text.txt by default (although you'll make it more dynamic and able to accept other sources of data later on).

Let me outline the basic steps you need to follow:
Load in a file containing the text or document you want to analyze.
As you load the file line by line, keep a count of how many lines there are (one of your statistics taken care of).
Put the text into a string and measure its length to get your character count.
Temporarily remove all whitespace and measure the length of the resulting string to get the character count excluding spaces.
Split on whitespace to find out how many words there are.
Split on full stops (.), '!' and '?' to find out how many sentences there are.
Split on double newlines to find out how many paragraphs there are.
Perform calculations to work out the averages.

Name this program analyzer.rb.
=end

def fileoperations file
  if File.exist?file
    File.open(file, "r") do |txt|
    text = txt.readlines
    end
  end
end

def lines text
  text.size
end

def word_count text
  text.split.size
end

def char_count text
  text.size
end

def character_count_without_spaces text
  text.gsub(/\s/,'').size
end

def sentences text
  txt = text.split(/\?|\.|!/).size
end

def paragraphs text
  text.split(/\\n", "\\n",/).size
end

def avarage_words_per_sentence text
  (word_count text) / (sentences text)
end

def avarge_sentence_per_para text
  (sentences text)/(paragraphs text)
end
 
text = fileoperations "./text.txt"

puts "There are #{char_count text.to_s} characters in this text"
puts "There are #{lines text} lines in this text"
puts "There are #{word_count text.to_s} words in this text"
puts "There are #{character_count_without_spaces text.to_s} real characters in this text"
puts "There are #{sentences text.to_s} sentences in this text"
puts "There are #{paragraphs text.to_s} paragraphs in this text"
puts "This text has an avarage of #{avarage_words_per_sentence text.to_s} words per sentence"
puts "This text has an avarage of #{avarage_sentence_per_para text.to_s} sentences per paragraph"
 
