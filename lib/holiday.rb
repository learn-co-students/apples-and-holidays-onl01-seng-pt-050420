require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, activities|
        activities.push(supply)
      end #each holiday loop
    end #if statement
  end #each season loop
end #method


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end #method

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").map {|word| word.capitalize}.join(" ")}: #{supplies.join", "}"
    end #each loop holiday
  end #each loop holiday_hash
end #method

def all_holidays_with_bbq(holiday_hash)
  holiday_with_bbq = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supply|
      if supply.include?("BBQ")
        holiday_with_bbq.push(holiday)
      end #if statement
    end #each loop holiday
  end #each loop holiday_hash
  holiday_with_bbq
end #method







