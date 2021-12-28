MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

# def time_of_day(minutes)
#   minutes %= MINUTES_PER_DAY
#   hours, minutes = minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

# Further exploration using Ruby's Time class

SECONDS_PER_MINUTE = 60
DAY_OF_WEEK = %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)

def time_of_day(minutes)
  seconds = minutes * SECONDS_PER_MINUTE
  midnight = Time.new(2006, 1, 1, 0, 0)
  now = midnight + seconds
  DAY_OF_WEEK[now.wday] + ' ' + format('%02d:%02d', now.hour, now.min)
end

p time_of_day(-4231) == "Thursday 01:29"
# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"
