def average(arr)
  sum=0
  arr.each do |num|
    sum += num
  end
  sum / arr.size
end

