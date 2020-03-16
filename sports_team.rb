# frozen_string_literal: true

class SportsTeam

  attr_accessor :name, :players, :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  # # Getters
  # def get_name
  #   @name
  # end
  #
  # def get_players
  #   @players
  # end
  #
  # def get_coach
  #   @coach
  # end
  #
  # # Setters
  # def set_coach(name)
  #   @coach = name
  # end
end
