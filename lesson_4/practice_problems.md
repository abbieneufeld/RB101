1.  flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
    idx = 0
    flintstones.each_with_object({}) do | value, hash | 
    hash[idx] = value
    idx += 1
    end

2.  ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
    ages.each do |key,value|
      sum_ages += value
    end

    p sum_ages
    
3. ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
    ages.each do |key,value|
    if value > 100
    ages.delete(key)
  end
end

p ages

4. ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
low_age= nil
ages.each do |key, value|
  if low_age
    if low_age>value
      low_age = value
    end
  else
    low_age=value
  end
end

p low_age

5. flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
saved_index = nil
flintstones.each_with_index do |name, index|
  if name.start_with?("Be")
    saved_index = index
    break
  end
end

p saved_index

6. flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones = flintstones.map do |name| 
  name.slice(0,3)
end
p flintstones

7. statement = "The Flintstones Rock"
letter_freq={}
statement.chars.each do |letter|
  if letter_freq[letter]
    letter_freq[letter] += 1
  else
   letter_freq[letter] = 1
  end
end
p letter_freq

8. ...
9. words = "the flintstones rock"

def titleize(words)
  title_arr = words.split.each do |word| 
    word.capitalize!
  end
  title = title_arr.join(" ")
  
end

p titleize(words)

10. munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, values|
  if values["age"] < 18
    values["age_group"] = "kid"
elsif values["age"] < 65
   values["age_group"] = "adult"
else
   values["age_group"] = "senior"
end
  
end

p munsters
