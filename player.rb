class Player

  attr_accessor :name, :type, :home_land, :foreign_land

  def initialize name, type
    unless ['white', 'black'].include? type
      raise new Exception('Unknown Type of Player')
    end
    self.name = name
    self.type = type

    if type == 'white'
      self.home_land = 1
      self.foreign_land = 8
    else
      self.home_land = 8
      self.foreign_land = 1
    end

  end


end