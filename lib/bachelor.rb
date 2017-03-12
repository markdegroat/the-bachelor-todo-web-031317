#require 'json'
#require 'pry'

#data = JSON.parse(File.read('../spec/fixtures/contestants.json'))
def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |info|
    if info["status"] == "Winner"
      return info["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, hash|
    data[season].each do |info|
      if info["occupation"] == occupation
        return info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter_to_return = 0
  data.each do |season, hash|
    data[season].each do |info|
      if info["hometown"] == hometown
        counter_to_return += 1
      end
    end
  end
  counter_to_return
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, hash|
    data[season].each do |info|
      if info["hometown"] == hometown
        #increment and return the first contestant
        return info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_total = 0.0
  num_of_contestants_counted = 0.0
  data[season].each do |info|
    age_total += info["age"].to_f
    puts "Name:#{info["name"]}, Age:#{info["age"]}"
    num_of_contestants_counted += 1
  end
  puts "Age Total:#{age_total}\nNum Of contestants counted:#{num_of_contestants_counted}"
  return (age_total/num_of_contestants_counted).round
end

# puts get_first_name_of_season_winner(data, "season 13")
# puts get_contestant_name(data, "Single Mother and Nurse Practitioner")
# puts count_contestants_by_hometown(data, "New York, New York")
# puts get_occupation(data, "New York, New York")
# puts get_average_age_for_season(data, "season 19")
