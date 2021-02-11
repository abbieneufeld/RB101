1. 

```ruby

  arr = ['10', '11', '9', '7', '8']
  arr.sort do |a, b|
    b.to_i <=> a.to_i
  end
  
  ```

2. 

```ruby
 
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

books.sort do |a, b|
  a[:published] <=> b[:published]
    
  end

]
```

3. 

```ruby

arr1 = [ 'a', 'b',  ['c', ['d', 'e', 'f', 'g']] ]
arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
hsh2[:third].key(0)

```
4. 

```ruby

arr1 = [1, [2, 3], 4]
arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4

```
5. 

```ruby

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = 0
munsters.each do |k,v|
  if v["gender"]=="male"
    total_male_age += v["age"]
  end
end

```
6. 

```ruby

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |k, v|
  puts "#{k} is a #{v["age"]}-year-old #{v["gender"]}"
  end
  

```
7. 

```ruby

a = 2
b = [5, 8]
arr = [a, b]

# arr = [2,[5,8]]

arr[0] += 2
arr[1][0] -= a

# a = 2
# b = [3,8]

```
8. 

```ruby

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
hsh.each do |k, v|
  v.each do |str|
    str.chars.each do |char|
      if char == "a" || char == "e" || char == "i" || char == "o" || char == "u" || char == "y"
        puts char
      end
    end
    end
  end

```
9. 

```ruby

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end

```
10. 

```ruby

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr.map do |hash|
  hash.map do |k,v|
    [k, v +=1]
  end.to_h
end


```
11. 

```ruby

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |sub_arr|
  sub_arr.select do |n|
    n % 3 == 0
  end
end


```
12. 

```ruby

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value:
# {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
result_hash ={}
arr.each do |sub_arr|
 result_hash[sub_arr[0]] = sub_arr[1]
end

result_hash

```
13. 

```ruby

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

arr.sort_by do |sub_arr|
  sub_arr.select do |n|
    n.odd?
  end
end

```
14. 

```ruby

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

result_array=[]

hsh.each do |fruit, deets|
  if deets[:type] == "fruit"
    result_array.push(deets[:colors].map{|c| c.capitalize })
  elsif deets[:type] == "vegetable"
    result_array.push(deets[:size].upcase)
  end
end

result_array

```
15. 

```ruby

arr = [ {a: [1, 2, 3]},  {b: [2, 4, 6], c: [3, 6], d: [4]},  {e: [8], f: [6, 10]} ]

arr.select do |hash|
    hash.flatten.flatten.all? do |x| 
      x.is_a?(Symbol) || x.even?
  end
  end


```

16. 

```ruby

require 'securerandom'

def uuid
  result = SecureRandom.hex
  result.insert(8,'-')
  result.insert(13,'-')
  result.insert(18,'-')
  result.insert(23,'-')
  result
end

puts uuid


```