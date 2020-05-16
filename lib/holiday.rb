require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 
 
 {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }
 
  holiday_supplies[:summer][:fourth_of_july][1]
  
  
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  
  holiday_hash[:winter].collect do |holiday,decoration|
    decoration << supply
end
  


 
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
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
  holiday_hash[:winter].collect do |a,b|
   
       b.each do |a|
          supplies << a
     end
        
  end
    supplies
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supplies|
    puts "  #{holiday.to_s.split("_").map{|x| x.capitalize}.join(" ")}: #{supplies.join(", ")}"
  end
end
end

    
  
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_holidays_with_bbq(holiday_hash)
  holiday_names = []
  
  holiday_hash.collect do |a,b|
    b.collect do |c,d|
      if d.include?("BBQ")
        holiday_names << c
      end
      
    end
    
    
  
      
      
    end
    
holiday_names   

end







