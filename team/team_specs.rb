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






end
