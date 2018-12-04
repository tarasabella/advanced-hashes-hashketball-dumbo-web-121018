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
      if player_name == name 
        #checks each name to ensure that it matches
  return player_data[:points]
      end
    end
  end
end 
#define method that takes players name as argument and finds points scored from the stats key within the player hash
#iterate over each element of the game hash with .each to access the players points data 
#return the number of points for each particualr player 
def shoe_size(name)
  game_hash.each do |location, team_data|
    team_data[:player].each do |player_name, player_data|
      if player_name == name
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
      team_data[:players].each |player_name, player_data|
      player_numbers << player_data[:number]
    end 
  end 
end 
    return player_numbers
  end 
    
# method takes players name as argument and returns their stats 
#using .each method to iterate over each team players to return an array of jersey numbers 


def player_stats(name)
  game_hash.each do |location, team_data|
    team_data[:players].each do [player_name, player_data]
    if player_name == name 
      return player_data
      end
    end 
  end 
end

#method takes player name as argument and returns a hash of that players stats 

def big_shoe_rebounds
  shoe_size = 0
  rebound = 0 
  game_hash.do each |location, team_data|
  team_data[:players].each do |player_name, player_data|
    if player_data[:shoe] > shoe_size
      sgoe_size = player_data[:shoe]
      rebound = value[:rebounds]
    end 
  end 
end 
  return rebound

#returns rebound value for the player with biggest shoe size 

def most_points_scored
   most_points = 0
   player = nil
   game_hash.each do |location, team_data|
      team_data[:players].each do |player_name, value|
         if value[:points] > most_point
            most_points = value[:points]
            player = player_name
         end
     end
   player
end

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
end 
def long_name_steals_a_ton?
  name_with_steal = nil
  steal_number = 0
  game_hash.each do |location, team_data|
    team_data[:players].each do |name, value|
      if value[:steals] > steal_number
        steal_number = value[:steals]
        name_with_steal = name
      end 
    end 
  end
  name_with_steal == player_with_longest_name
end



