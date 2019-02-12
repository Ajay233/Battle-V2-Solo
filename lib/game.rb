class Game
  def initialize
  end

  def self.attack(player)
    player.receive_damage
  end
end
