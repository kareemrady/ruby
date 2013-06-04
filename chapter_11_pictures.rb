Dir.chdir 'C:/test'
pictures_moved = Dir['C:/picture/*.{jpg,JPG}']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pictures_moved.length} files : " 
pic_num = 1
pictures_moved.each do |name|
  print '.'
  new_name = #{batch_name}#{name}
  File.rename(name, new_name.to_s)
  pic_num += 1
  
end
  puts
  puts 'DONE'
