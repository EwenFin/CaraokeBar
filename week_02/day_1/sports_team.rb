class Sports_Team
  attr_accessor :team_name, :players, :coach 
  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end


  def add_to_players(new_player)
      return @players.push(new_player)
  end 


  def look_up_player(player)
    return @players.include?(player)
  end

  def win_loss_points
    points = 0
     if win == true
        points + 4
      else
      return
    end
  end
end
