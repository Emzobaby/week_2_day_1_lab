require('minitest/autorun')
require('minitest/rg')
require_relative('team')

class TestTeam < MiniTest::Test

def test_can_create_team
  st_mirren_fc = Team.new("St. Mirren", ["Barry Lavety", "Kenny McDowall", "Campbell Money"], "Tony Fitzpatrick")
end

def test_team_name
  st_mirren_fc = Team.new("St. Mirren", ["Barry Lavety", "Kenny McDowall", "Campbell Money"], "Tony Fitzpatrick")
  assert_equal("St. Mirren", st_mirren_fc.team_name)
end

def test_get_players
  st_mirren_fc = Team.new("St. Mirren", ["Barry Lavety", "Kenny McDowall", "Campbell Money"], "Tony Fitzpatrick")
  assert_equal(["Barry Lavety", "Kenny McDowall", "Campbell Money"], st_mirren_fc.players)
end

def test_get_coach
  st_mirren_fc = Team.new("St. Mirren", ["Barry Lavety", "Kenny McDowall", "Campbell Money"], "Tony Fitzpatrick")
  assert_equal("Tony Fitzpatrick", st_mirren_fc.coach)
end

def test_add_new_player
  st_mirren_fc = Team.new("St. Mirren", ["Barry Lavety", "Kenny McDowall", "Campbell Money"], "Tony Fitzpatrick")
  st_mirren_fc.add_new_player("Lionel Messi")
  assert_equal(["Barry Lavety", "Kenny McDowall", "Campbell Money", "Lionel Messi"], st_mirren_fc.players)
end

def test_check_player_in_team_yes
  st_mirren_fc = Team.new("St. Mirren", ["Barry Lavety", "Kenny McDowall", "Campbell Money"], "Tony Fitzpatrick")
  assert_equal(true, st_mirren_fc.check_player_in_team("Barry Lavety"))
end

def test_check_player_in_team_no
  st_mirren_fc = Team.new("St. Mirren", ["Barry Lavety", "Kenny McDowall", "Campbell Money"], "Tony Fitzpatrick")
  assert_equal(false, st_mirren_fc.check_player_in_team("Cristiano Ronaldo"))
end

def test_get_points
  st_mirren_fc = Team.new("St. Mirren", ["Barry Lavety", "Kenny McDowall", "Campbell Money"], "Tony Fitzpatrick", 10)
  assert_equal(10, st_mirren_fc.points)
end

def test_update_points_win
  st_mirren_fc = Team.new("St. Mirren", ["Barry Lavety", "Kenny McDowall", "Campbell Money"], "Tony Fitzpatrick",)
  st_mirren_fc.update_points("win")
  assert_equal(3, st_mirren_fc.points)
end

def test_update_points_lose
  st_mirren_fc = Team.new("St. Mirren", ["Barry Lavety", "Kenny McDowall", "Campbell Money"], "Tony Fitzpatrick",)
  st_mirren_fc.update_points("lose")
  assert_equal(0, st_mirren_fc.points)
end

def test_update_points_draw
  st_mirren_fc = Team.new("St. Mirren", ["Barry Lavety", "Kenny McDowall", "Campbell Money"], "Tony Fitzpatrick",)
  st_mirren_fc.update_points("draw")
  assert_equal(0, st_mirren_fc.points)
end

end
