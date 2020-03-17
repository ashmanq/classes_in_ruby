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
    assert_equal("CodeClan Warriors", @team.name())
  end

  def test_team_players()
    assert_equal(["Anna", "Colin", "Ally", "Maria"], @team.players())
  end

  def test_team_coach()
    assert_equal("Lindsey", @team.coach())
  end

  def test_set_coach()
    @team.coach = "Ashir"
    assert_equal("Ashir", @team.coach())
  end

  def test_add_player()
    @team.add_player("Jimmy")
    assert_equal(["Anna", "Colin", "Ally", "Maria", "Jimmy"], @team.players())
  end

  def test_check_player_in_team__true()
    assert_equal(true, @team.search_player("Maria"))
  end

  def test_check_player_in_team__false()
    assert_equal(false, @team.search_player("Jobby"))
  end

  def test_team_points_change__win()
    @team.team_points_change("win")
    assert_equal(1, @team.points())
  end

  def test_team_points_change__lost()
    @team.team_points_change("lost")
    assert_equal(0, @team.points())
  end

end
