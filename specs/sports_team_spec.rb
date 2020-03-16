require ('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestSportsTeam < MiniTest::Test

  def setup()
    players = ["Anna", "Colin", "Ally", "Maria"]
    @team = SportsTeam.new("CodeClan Warriors", players, "Lindsey")
  end

  def test_team_name()
    assert_equal("CodeClan Warriors", @team.get_name())
  end

  def test_team_players()
    assert_equal(["Anna", "Colin", "Ally", "Maria"], @team.get_players())
  end

  def test_team_coach()
    assert_equal("Lindsey", @team.get_coach())
  end




end
