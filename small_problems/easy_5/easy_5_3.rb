MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def time_to_minutes(time)
  hours = time[0, 2].to_i
  minutes = time[3, 2].to_i
  (hours * MINUTES_PER_HOUR) + minutes
end

def after_midnight(time)
  time_to_minutes(time) % MINUTES_PER_DAY
end

def before_midnight(time)
  return 0 if time_to_minutes(time) == 0
  MINUTES_PER_DAY - time_to_minutes(time)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
