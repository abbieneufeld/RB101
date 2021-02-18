DEGREE = "\xC2\xB0"

def dms(float)
  degrees = float.floor
  hundreths = float - degrees 
  sixtieths = hundreths*60
  minutes = sixtieths.floor
  seconds = ((sixtieths-minutes)*60).floor
  min_and_sec = format(%(%02d'%02d"), minutes, seconds)
  "#{degrees}#{DEGREE}#{min_and_sec}"
end



puts dms(30) 
puts dms(76.73) 
puts dms(254.6) 
puts dms(93.034773) 
puts dms(0) 
puts dms(360) 