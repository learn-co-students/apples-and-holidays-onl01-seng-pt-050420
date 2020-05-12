require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas]<< "Balloons"
  holiday_hash[:winter][:new_years]<< "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day]<< supply
  #holiday_hash[:spring][:memorial_day]<< "Table Cloth"
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, data|
    data.each do |supply|
      winter_supplies << supply
    end
  end
  return winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    format_season = season.to_s
    final_holiday = ""
    supply_format = []
    final_supply = ""
    fix_supply = []
    puts "#{format_season.capitalize}:"
    data.each do |holiday, supplies|
        holiday_array = holiday.to_s.split("_")
        formatted_holiday_array = []
        holiday_array.each do |word|
          formatted_holiday_array << word.capitalize
        end
        final_holiday = formatted_holiday_array.join(" ")
      puts "  #{final_holiday}: #{supplies.join(", ")}"
    end
    
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays_with_bbq = []
  holiday_hash.each do |season, data|
    data.each do |holiday, result|
      result.each do |supply|
        if supply == "BBQ"
          holidays_with_bbq << holiday
        end
      end
    end
  end
  return holidays_with_bbq
end







