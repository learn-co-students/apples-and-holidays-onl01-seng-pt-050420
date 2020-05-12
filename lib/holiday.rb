require 'pry'

# given that holiday_hash looks like this:
# holiday_hash =  {
#     :winter => {
#       :christmas => ["Lights", "Wreath"],
#       :new_years => ["Party Hats"]
#     },
#     :summer => {
#       :fourth_of_july => ["Fireworks", "BBQ"]
#     },
#     :fall => {
#       :thanksgiving => ["Turkey"]
#     },
#     :spring => {
#       :memorial_day => ["BBQ"]
#     }
#   }
  
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash.each do |season, holidays|
    if season == :summer
      holidays.each do |holiday, supply|
        if holiday == :fourth_of_july
          return supply[1]
        end 
      end 
    end 
  end 
end


def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holidays|
    if season == :winter 
      holidays.each do |holiday, supplies|
        supplies << supply
      end 
    end 
  end 

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if season == :spring
      holidays.each do |holiday, supplies|
        if holiday == :memorial_day
          supplies << supply
        end
      end 
    end 
  end 

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |seasons, holidays|
    if seasons == season
      holiday_hash[season][holiday_name] = supply_array
    end 
  end 
end 


def all_winter_holiday_supplies(holiday_hash)
  all_winter_items =[]
  holiday_hash.each do |seasons, holidays|
    if seasons == :winter 
      all_winter_items << holidays.values 
    end 
  end 
  all_winter_items.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |seasons, holidays|
    puts "#{seasons.capitalize}:"
    holidays.each do |holiday, supplies|
      holidays = holiday.to_s.split("_")
      holidays.each do |holiday|
        holiday.capitalize!
      end 
      holidays = holidays.join(" ")
      puts "  #{holidays}: #{supplies.join(", ")}"
    end 
  end 
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  includes_bbq = []
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include? "BBQ"
        includes_bbq << holiday
      end 
    end
  end
  includes_bbq
end






