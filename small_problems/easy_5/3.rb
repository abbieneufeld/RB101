def after_midnight(time_string)
  hour, minutes = time_string.split(":")
  hour = hour.to_i
  minutes = minutes.to_i
  if hour == 0 && minutes == 0
    0
  else
    total_minutes = hour * 60 + minutes
    if total_minutes >= 1440
      total_minutes = total_minutes % 1440
    else
      total_minutes
    end
  end
end

def before_midnight(time_string)
  hour, minutes = time_string.split(":")
  hour = hour.to_i
  minutes = minutes.to_i
  if hour == 0  && minutes == 0
    0
  else
    total_minutes = 1440 - (hour * 60 + minutes)
    if total_minutes >= 1440
      total_minutes = total_minutes % 1440
    else
      total_minutes
    end
  end
end







puts after_midnight('00:00') 
puts before_midnight('00:00') 
puts after_midnight('12:34')
puts before_midnight('12:34') 
puts after_midnight('24:00') 
puts before_midnight('24:00') 