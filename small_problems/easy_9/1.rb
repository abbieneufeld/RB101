def greetings(array,hash)
  name=""
  for i in (0..(array.length-1))
    name << array[i] <<" "
  end
  "Hello #{name}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })