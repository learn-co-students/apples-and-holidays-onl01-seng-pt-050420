require 'pry'

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
 
  # Write a method that returns the second supply for the Fourth of July
  
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:christmas] << supply
  holiday_supplies[:winter][:new_years] << supply
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  supplies = []
  holiday_hash.each do |season, holiday| 
    supplies.push(holiday.values)
  end
  supplies.flatten
  # return an array of all of the supplies that are used in the winter season
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.collect do |season, holiday| 
    puts "#{season.capitalize}:" # This step makes sure that the block makes sense when read in normal terms 
  holiday.each do |holiday, supply| # See how easy it is to read & understand!? C'mon somebody! 
    puts "  #{holiday.to_s.split("_").collect {|word| word.capitalize}.join(" ")}: #{(supply.join(", "))}" 
    end
  end
  
  #".split" converts a string into an array. My logic assumes the terminal expects to output this as an array instead of a string of a list. The rest is just me building the ins and outs of the rest of the sentence structures; the comma, the capitalized words, etc. You also have to remember account for everything - even the spaces between punctuations! (this held me up for a heavy minute trying to figure out why I kept getting errors)
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season_h, holiday_h| 
    holiday_h.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_holidays << holiday 
      end
    end
  end 
  bbq_holidays
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end