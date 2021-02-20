def fizzbuzz(num_a,num_b)
  for num in (num_a..num_b)
    if num % 3 == 0 && num % 5 == 0
      print "FizzBuzz"
    elsif num % 3 == 0
      print "Fizz, "
    elsif num % 5 == 0
      print "Buzz, "
    else
      print "#{num}, "
    end
  end
end

fizzbuzz(1, 15)