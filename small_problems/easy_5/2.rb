def time_of_day(minutes)
  if minutes.positive?
    hours_from, minutes_hand = minutes.divmod(60)
    days, hour_hand = hours_from.divmod(24)
    if hour_hand < 10 && minutes_hand < 10
      "0#{hour_hand}:0#{minutes_hand}"
    elsif hour_hand < 10 && minutes_hand > 10
      "0#{hour_hand}:#{minutes_hand}"
    elsif hour_hand > 10 && minutes_hand < 10
       "#{hour_hand}:0#{minutes_hand}"
    elsif hour_hand > 10 && minutes_hand > 10
       "#{hour_hand}:#{minutes_hand}"
    end
  elsif minutes.negative?
    hours_from, minutes_hand = minutes.divmod(-60)
    days, hour_hand = hours_from.divmod(24)
    hour_hand = 23 - hour_hand
    minutes_hand = 60 + minutes_hand
    if hour_hand < 10 && minutes_hand < 10
      "0#{hour_hand}:0#{minutes_hand}"
    elsif hour_hand < 10 && minutes_hand > 10
      "0#{hour_hand}:#{minutes_hand}"
    elsif hour_hand > 10 && minutes_hand < 10
       "#{hour_hand}:0#{minutes_hand}"
    elsif hour_hand > 10 && minutes_hand > 10
       "#{hour_hand}:#{minutes_hand}"
    end
  elsif minutes == 0
    "00:00"
  end
end

puts time_of_day(0) 
puts time_of_day(-3) 
puts time_of_day(35) 
puts time_of_day(-1437) 
puts time_of_day(3000) 
puts time_of_day(800) 
puts time_of_day(-4231) 



puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"



