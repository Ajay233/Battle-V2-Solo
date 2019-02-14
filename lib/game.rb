class Game

  attr_reader :turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
    @player = @turn
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def turn_switch
    @turn == player_1 ? @turn = player_2 : @turn = player_1
  end

  def current_player
    @turn
  end

  def opponent
    @turn == @players.first ? @players.last : @players.first
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def check_poisoned(player)
    if player.poisoned == true
      player.receive_poison_damage
      player.poisoned = false
    end
  end

  def paralyse_attack(player)
    player.receive_damage
    # 1 in 3 chance?
    if rand(1..30) % 3 == 0
      player.paralysed = true
      turn_switch
    end
  end

  def poison_attack(player)
    # 1 in 5 chance?
    player.receive_damage
    player.poisoned = true if rand(1..5) == 3
  end

  def sleep_attack
    player.receive_damage
    if rand(1..30) % 3 == 0
      player.sleeping = true
      turn_switch
    end
  end

  def attack(player)
    player.receive_damage
  end

  def heavy_attack(player)
    player.receive_heavy_damage
  end

  def heal_player(player)
    player.heal
  end

end
