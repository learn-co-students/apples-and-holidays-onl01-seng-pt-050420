require 'pry'

# def second_supply_for_fourth_of_july(holiday_hash)
# {
#   :winter => {
#       :christmas => ["Lights", "Wreath"],
#       :new_years => ["Party Hats"]
#     },
#   :summer => {
#       :fourth_of_july => ["Fireworks", "BBQ"]
#       },
#     :fall => {
#       :thanksgiving => ["Turkey"]
#     },
#     :spring => {
#       :memorial_day => ["BBQ"]
#     }
#   }
  
  
  
def second_supply_for_fourth_of_july(holiday_hash)
holiday_hash[:summer][:fourth_of_july][1]
end


# return the second element in the 4th of July array






def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].collect do |item, stuff|
    stuff << supply
   end


end








def add_supply_to_memorial_day(holiday_hash, supply)
   
   holiday_hash[:spring][:memorial_day] << supply
  
  
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array


end








def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  
  # remember to return the updated hash

end


def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].collect do |item, thing|
   winter_supplies << thing
   thing.each do |a|
     winter_supplies << a
     
    end
    end
    
    winter_supplies
  
    
  
  # return an array of all of the supplies that are used in the winter season
end













#def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_supplies_in_holidays(holiday_hash)
   holiday_hash.each do |season, holiday|
   puts "#{season.to_s.capitalize}:"
   holiday.each do |event, supplies|
   puts "  #{event.to_s.split("_").map{|x| x.capitalize}.join(" ")}: #{supplies.join(", ")}"
   
 end
    end
  
end





def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
    holidays.map do |event, supplies|
      if supplies.include?("BBQ")
        event
      end
     end
    end.flatten.compact
end
  
  
  
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"







