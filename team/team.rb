class Team

  attr_accessor :team_name, :players, :coach, :points

  def initialize(input_team_name, input_players, input_coach, input_points = 0)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = input_points
  end

  def add_new_player(new_player_name)
    @players << new_player_name
  end

  def check_player_in_team(player_name)
    for player in @players
      return player_name == player
    end
  end

  def update_points(result)
    if result == "win"
      @points += 3
    end 
  end

end
