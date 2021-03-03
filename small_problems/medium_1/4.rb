def lights_on(n)
  array_on =[]
  lights_hash = Hash.new
  for i in (1..n)
    lights_hash[i] = false
  end
  for i in (1..n) 
    lights_hash.each_key do |key|
      if key % i == 0
        lights_hash[key] = !lights_hash[key]
      end
    end
  end
    lights_hash.each do |key, value|
      if value == true
        array_on << key
      end
    end
   array_on
end

p lights_on(10)
=begin
Problem
row of n light switches initially off
toggle all multiples of 1 
toggle all multiples of 2 
toggle all multiples of 3
toggle all multiples of 4
..
toggle all multiples of n
--------

EXAMPLES
1,2,3,4,5,6,7,8,9,10
1,3,5,7,9 are on,
1.5.7.
1,4,5,8,7

---
1,2,3,4,5 are on
1 3 5 are on
1 5 are on
1 4 5 are on

ALGORITHM 
- create a hash with keys 1 to n and values
false
-iterate over hash toggling lights  that are multiples of 1
-iterate over hash toggling lights  that are multiples of 2
-iterate over hash toggling lights  that are multiples of 3
-iterate over hash toggling lights  that are multiples of ..
-iterate over hash toggling lights  that are multiples of n
return array of all keys that evaluate to true
CODE

=end