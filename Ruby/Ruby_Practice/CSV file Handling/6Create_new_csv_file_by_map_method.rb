# Create new csv file by map method

cats = [[:blue, 1],[:white, 2],[:black, 3]]

cats.map!{|c| c.join(",")}.join("\n")

File.write("cats.csv", cats)