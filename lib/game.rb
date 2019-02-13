class Game
  def initialize

  end

  def self.attack(player)
    player.receive_damage
  end

  def self.heal_player(player)
    player.heal
  end

end
