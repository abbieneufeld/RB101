def multisum(int)
  result = 0 
  for n in (1..int)
    if n % 3 == 0 || n % 5 == 0
      result += n
    end
  end
  result
end


puts multisum(3)
puts multisum(5)
puts multisum(10)
puts multisum(1000)