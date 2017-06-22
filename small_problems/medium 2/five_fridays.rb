require 'date'

def five_friday_months(y)
  hsh = (1..12).each_with_object(Hash.new(0)) do |m, hsh|
    (0..365).map { |x| Date.new(y) + x }.each do |day|
      hsh[m] += 1 if day.friday? && day.month == m && day.year == y  
    end
  end 
  hsh.select { |k, v| v == 5 }.keys.map { |x| Date::MONTHNAMES[x] }
end

p five_friday_months(2000) # ==> ["March", "June", "September", "December"]

