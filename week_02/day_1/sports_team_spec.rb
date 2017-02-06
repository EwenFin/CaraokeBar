require ('minitest/autorun')
require ('./sports_team')

class TestSportsTeam < MiniTest::Test
  def test_team_name
    team  = Sports_Team.new("Scotland", ["Gray","Laidlaw","Maitland"], "Vern Cotter")
    assert_equal("Scotland", team.team_name)
  end

  def test_players
    team = Sports_Team.new("Scotland", ["Gray","Laidlaw","Maitland"], "Vern Cotter")
    assert_equal(["Gray", "Laidlaw","Maitland"], team.players)
  end

  def test_coach
    team = Sports_Team.new("Scotland", ["Gray","Laidlaw","Maitland"], "Vern Cotter")
    assert_equal("Vern Cotter", team.coach)
  end

  def test_add_to_players
    team = Sports_Team.new("Scotland", ["Gray","Laidlaw","Maitland"], "Vern Cotter")
    team.add_to_players("Hogg")
    assert_equal(["Gray","Laidlaw","Maitland","Hogg"], team.players)
  end  

  def test_look_up_player
    team = Sports_Team.new("Scotland", ["Gray","Laidlaw","Maitland"], "Vern Cotter")
    assert_equal(team.look_up_player("Gray"), true)
  end

  def win_loss_points

  end

end