# Write your code here!
require "pry"
#our method is a hash that contains infor nested within it about the team 
#the upper level is our home & away hash 
#home and away hash contain info about the team name, team color, and players 
#the players hash contains stats about each player 
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

def num_points_scored(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_name, player_data|
      binding.pry
      if player_name[:name] == name 
        #checks each name to ensure that it matches
  return player_data[:points]
      end
    end
  end
num_points_scored(name)
end 
#define method that takes players name as argument and finds points scored from the stats key within the player hash
#iterate over each element of the game hash with .each to access the players points data 
#return the number of points for each particualr player 
def shoe_size(name)
  game_hash.each do |location, team_data|
    team_data[:player].each do |player_name, player_data|
      if player_name[:name] == name
        return player_data[:shoe]
      end 
    end
  end 
end 
  
#define method that takes player name as argument and finds shoe size from its stats key based on the name of the player 
#iterate down to the shoe size level & return shoe size for the player 

def team_colors(name)
  game_hash.each do |location, team_data|
  if team_data[:team_name] == name
  return team_data[:colors]
      team_colors
      end 
    end
  end 
#method takes team name as argument and finds the team names colors from the nested stats key with fetch and returns an array of that teams colors 

def team_names
  game_hash.collect do |location, team_data|
    team_data[:team_name]
      end 
    end 
      
#.map/collect are used to iterate over the hash and return a new value
#operates on the game hash to return an array of team names 

def player_numbers(name)
  player_numbers = []
  game_hash.each do |location, team_data|
    if team_data[:team_name] == name 
      team_data[:players].each do |player_name, player_data|
      player_numbers << player_data[:number]
      #shovel player data & numbers info to the player_numbers array that was created 
    end 
  end 
end 
    return player_numbers
  end 
    
# method takes players name as argument and returns their stats 
#using .each method to iterate over each team players to return an array of jersey numbers 


def player_stats(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player_name, player_data|
    if player_name == name 
      #check to see that the player name matches the name passed intp the methods as an argument 
      return player_data
      end
    end 
  end 
end

#method takes player name as argument and returns a hash of that players stats 
#access player data through iterating with each and returns the players stats based on the name 

def big_shoe_rebounds
  #use integer as a comparison 
  shoe_size = 0
  #trying to find value of certain rebound 
  rebound = nil 
  game_hash.do each |location, team_data|
  team_data[:players].each do |player_name, player_data|
    if player_data[:shoe] > shoe_size
      shoe_size = player_data[:shoe]
      #find player with largest shoe size 
      rebound = value[:rebounds]
      #return that player's rebounds 
      return rebound
    end 
  end 
end 
  



def player_by_number(number)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, player_data|
      
      if player_data[:number] == number 
      
        return player
      end 
    end 
  end 
end 
player_by_number(33)

        
    
        #define method that takes a number in as an argument and returns the name pf the player associated with that number 
        #iterate with each to access the player data 

#returns rebound value for the player with biggest shoe size 
# Bonus Questions:

# Which player has the most points? Call the method most_points_scored.

def most_points_scored
   most_points = 0
   player = nil
   #trying to find value of points for certain player so set to 0
   game_hash.each do |location, team_data|
      team_data[:players].each do |player_name, value|
         if value[:points] > most_point
            most_points = value[:points]
            player = player_name[:player]
         end
     end
   end 
   player
end

# Which team has the most points? Call the method winning_team.
def winning_team
  home_team = 0
  away_team = 0
  game_hash[:home][:players].each do |name, value|
    home_team += value[:points]
  end
  game_hash[:away][:players].each do |name, value|
    away_team += value[:points]
  end
  if home_team > away_team
      game_hash[:home][:team_name]
  elsif home_team < away_team
      game_hash[:away][:team_name]
  else
      "It's a tie!"
  end
end

# Which player has the longest name? Call the method player_with_longest_name.
#get stats for how many steals the player had 

def player_with_longest_name
  longest = 0
  player_name = nil
  game_hash.each do |location, team_data|
    team_data[:players].each do |name, value|
      if name.length > longest
        player_name = name
      end
    end
  end
  player_name
end

# Write a method that returns true if the player with the longest name had the most steals. Call the method long_name_steals_a_ton?.
#return true if person with longest name also has longest name
#find person with longest name 
#find person with greatest number of steals
#compare those values and see if they are equal 
def long_name_steals_a_ton?
  longest_name = player_with_longest_name
  name_with_steal = " "
  # create a variable to store the name with steal
  #we set longest name to our method already defined 
  steals = 0
  #set control variable for steals
  game_hash.each do |location, team_data|
    team_data[:players].each do |key, value|
      if value[:steals] > steals
      steals = value[:steals]
        name_with_steal = key 
      end 
    end 
  end
  name_with_steal == player_with_longest_name
end


# map & seleect differneces 

#refractor (different iterators)
