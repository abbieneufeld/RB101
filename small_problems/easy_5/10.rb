def print_in_box(msg)
  puts "\n
  +-#{msg.gsub(/./, '-')}-+\n
  | #{msg.gsub(/./, ' ')} |\n
  | #{msg} |\n 
  | #{msg.gsub(/./, ' ')} |\n
  +-#{msg.gsub(/./, '-')}-+\n
   "
end

print_in_box('To boldly go where no one has gone before.')