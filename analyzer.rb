text = ''
line_count = 0
File.open('text.txt').each do |line|
line_count += 1
text << line
end
total_characters = text.size
total_characters_nospaces = text.gsub(/\s+/, '').size
word_count = text.split.length
total_words = text.scan(/\w+/)
total_sentences = text.split(/\.|\?|!/).length
total_paragraphs = text.split(/\n\n/).length
stop_words = %w{the a by on for of are with just but and to my I has some in}
key_words = total_words.select {|word| !stop_words.include?(word)}
puts "#{line_count} Lines"
puts "#{total_characters} Characters"
puts "#{total_characters_nospaces} Characters excluding white spaces"
puts "#{word_count} Words"
puts "#{total_sentences} Sentences"
puts "#{total_paragraphs} Paragraphs"
puts "#{total_sentences / total_paragraphs} Average sentences per paragraph"
puts "#{word_count / total_sentences} Average Words per Sentence"
puts "#{((key_words.length.to_f / total_words.length.to_f)*100).to_i} % of keywords in all text"

