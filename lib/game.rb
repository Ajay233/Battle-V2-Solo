class Game

  attr_reader :turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def turn_switch
    if @turn == player_1
      @turn = player_2
    else
      @turn = player_1
    end
  end

  def current_player
    @turn
  end

  def opponent
    if @turn == @players.first
      @players.last
    else
      @players.first
    end
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def attack(player)
    player.receive_damage
  end

  def heal_player(player)
    player.heal
  end



end
