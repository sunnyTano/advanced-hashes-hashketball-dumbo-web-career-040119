require "pry"

def game_hash 
  game_hash = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => {
      "Alan Anderson" => {
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
      },
      "Reggie Evans" => {
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
      },
      "Brook Lopez" => {
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
      },
      "Mason Plumlee" => {
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 12,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
      },
      "Jason Terry" => {
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
      }
    }
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => {
      "Jeff Adrien" => {
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2
      },
      "Bismak Biyombo" => {
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 7,
        :blocks => 15,
        :slam_dunks => 10
      },
      "DeSagna Diop" => {
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
      },
      "Ben Gordon"=> {
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
      },
      "Brendan Haywood" => {
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 22,
        :blocks => 5,
        :slam_dunks => 12
      }
    }
  }
}
end 

def num_points_scored(name)
  score = []
    game_hash.each do |key, value| 
     value.each do |attribute, data|
       if attribute == :players
          data.each do |player, item|
           # puts "#{player}"
            item.each do |a, b|
              if player == name && a == :points
              score << b
            end
          end 
        end 
      end 
    end 
  end 
score.join.to_i
end 

def shoe_size(name)
  size = []
    game_hash.each do |_key, value|
      value.each do |attribute, info|
        next unless attribute == :players
        # puts "#{attribute}"
           info.each do |a, b|
           # puts "#{a}"
             b.each do |c, d|
              # puts "#{d}"
            size << d if name == a && c == :shoe
          end
        end
      end
    end
  size.join.to_i
end

def team_colors(team)
    if team == "Brooklyn Nets"
      game_hash[:home][:colors]
        elsif team == "Charlotte Hornets"
    game_hash[:away][:colors]
  end
end 

def team_names
team1 = []
team2 = []
    team1 << game_hash[:home][:team_name]
  team2 << game_hash[:away][:team_name]
team1.concat(team2)
end 

def player_numbers(name)
  numbers = []
  game_hash.each do |_key, value|
    if name == value[:team_name]
      value.each do |attribute, info|
       if attribute == :players
       # puts "#{attribute}"
         info.each do |a, b|
        # puts "#{a}"
            b.each do |c, d|
          puts "#{d}"
            if c == :number
              numbers << d
              end
            end
          end 
        end
      end
    end
  end
numbers
end

def player_stats(name)
stat = 0
    game_hash.each do |key, value|
    value.each do |attribute, info|
      if attribute == :players
        info.each do |a, b|
          if name == a
            stat = b
            # puts "#{b}"
            end
          end
        end
      end
    end
stat
end

def big_shoe_rebounds
bigShoe = 0
rebound = 0
    game_hash.each do |key, value|
    value.each do |attribute, info|
      if attribute == :players
          info.each do |a, b|
            if b[:shoe] > bigShoe
             bigShoe = b[:shoe]
              puts "#{b[:shoe]}"
              rebound = b[:rebounds]
            end
          end
        end
      end
    end
  rebound
end