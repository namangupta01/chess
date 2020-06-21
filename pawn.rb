require 'piece'
class Pawn < Piece

  def get_all_locations x1, y1
    player = self.player
    if x1 == player.foreign_land
      return [], []
    end

    locations = []
    attack_locations = []

    direction = self.get_direction

    if x1 == player.home_land + (1*direction)
      locations << [x1+(2*direction), y1]
    end

    locations << [x1+(1*direction), y1]

    if y1 == 1
      attack_locations = [
        [x1+(1*direction), y1 + 1]
      ]
    elsif y1 == 8
      attack_locations = [
        [x1+(1*direction), y1 - 1]
      ]
    else
      attack_locations = [
        [x1+(1*direction), y1 + 1],
        [x1+(1*direction), y1 - 1]
      ]
    end

    return locations, attack_locations
  end


  def get_direction
    player = self.player
    return (player.foreign_land - player.home_land)/(player.foreign_land - player.home_land).abs
  end

end