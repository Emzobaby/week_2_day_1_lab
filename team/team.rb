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

end
