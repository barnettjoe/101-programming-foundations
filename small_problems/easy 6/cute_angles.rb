# take part before decima point as degrees
# for part on RHS of decimal point: 
 
def dms(num)
  deg_string, remainder_string = num.to_s.split('.') 
  deg = deg_string.to_i
  remainder = ".#{remainder_string}".to_f
  mins = (remainder * 60).floor.to_f
  secs = ((remainder - (mins / 60))* 3600).round
  if secs == 60
    secs = 0
    mins += 1
  end
  if mins > 59.0
    mins = mins - 60.0
    deg += 1
  end   
  deg.to_s + '°' + sprintf("%02d", mins) + "'" + sprintf("%02d", secs) + '"'
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(-76.73)
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")