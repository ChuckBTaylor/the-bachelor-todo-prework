def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |achoo, array|
      if achoo == season.to_sym
          array[0].each do |key, value|
              if value == "Winner"
                  winner = array[0][:"name"]
              end
          end
      end
  end
  array = winner.split
  winner = array[0]
  return winner
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, array|
    array.each do |people|
      if people[:"occupation"] == occupation
        name = people[:"name"]
      end
    end
  end
  return name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array|
    array.each do |people|
      if people[:"hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  occ = ""
    data.each do |season, array|
      array.each do |people|
        if people[:"hometown"] == hometown
          occ = people[:"occupation"]
        end
        break if occ != ""
      end
      break if occ != ""
    end
  return occ
end

def get_average_age_for_season(data, season)
  age = 0
  count = 0.0
  data.each do |seeson, array|
    if seeson == season.to_sym
      array.each do |people|
        age += people[:"age"].to_i
        count += 1.0
      end
    end
  end
  if count != 0
    return age / count
  else
    puts "There are no people this season!"
  end
end
