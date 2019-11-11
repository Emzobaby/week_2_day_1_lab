class Team

  attr_accessor :team_name, :players, :coach

  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
  end

  def add_new_player(new_player_name)
    @players << new_player_name
  end

  def check_player_in_team(player_name)
    for player in @players
      return player_name == player
    end
  end

end
