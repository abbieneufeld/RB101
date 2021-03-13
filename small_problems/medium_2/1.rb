=begin
   take text file. 
   seperate it by . / ! /  ?
   count words in each separated segment 
   print out longest segment. and number of words in it
=end
text = File.read('sample.txt')
  sentences = text.split(/\.|\?|!/)
longest_sentence = nil
sentences.each do |sentence|
  if longest_sentence
    if sentence.split.size > longest_sentence.split.size
      longest_sentence = sentence
    end
  else
    longest_sentence = sentence
  end
end

puts "#{longest_sentence} CONTAINS #{longest_sentence.split.size} words"
