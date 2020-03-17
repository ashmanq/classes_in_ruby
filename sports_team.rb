# frozen_string_literal: true

class SportsTeam

  attr_accessor :name, :players, :coach
  attr_reader :points

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(player)
    @players.push(player)
  end

  def search_player(player)
    if (@players.find_index(player) == nil)
      return false
    else
      return true
    end
  end

  def team_points_change(game_result)
    if (game_result == "win")
      @points +=1
    end
  end

end
