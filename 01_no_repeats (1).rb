def no_repeats(year_start, year_end)
  no_repeats_array = []
  (year_start..year_end).each do |year|
    if (no_repeat(year))
      no_repeats_array << year
    end
  end
  return no_repeats_array.inspect
end

def no_repeat(year)
  
  year = year.to_s
  if (year[0] != year[1] && year[0] != year[2] && year[0] != year[3] && year[1] != year [2] && year[1] != year[3] && year[2] != year[3])
    return true
  else
    false
  end
  
end

puts(no_repeats(1980, 1987))
