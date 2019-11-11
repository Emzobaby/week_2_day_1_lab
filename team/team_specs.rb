require('minitest/autorun')
require('minitest/rg')
require_relative('team')

class TestTeam < MiniTest::Test

def test_can_create_team
  st_mirren_fc = Team.new("St. Mirren", ["Barry Lavety", "Kenny McDowall", "Campbell Money"], "Tony Fitzpatrick")
end



end
