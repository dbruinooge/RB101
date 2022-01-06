require 'date'

def friday_13th(year)
  date = Date.new(year, 1, 1)
  count = 0
  
  while date.year == year
    count += 1 if date.wday == 5 &&
                  date.day == 13
    date += 1
  end
  count
end

def five_fridays(year)
  result = 0
  
  1.upto(12) do |month|
    fridays = 0
    date = Date.new(year, month, 1)
    while date.month == month
      fridays += 1 if date.friday?
      date += 1
    end
    result +=1 if fridays >= 5
  end
  result
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

p five_fridays(2008) == 4
p five_fridays(2021) == 5
p five_fridays(2022) == 4
p five_fridays(2023) == 4
