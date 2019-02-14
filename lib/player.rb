class Player
  attr_reader :name, :hp
  attr_accessor :paralysed, :poisoned, :sleep
  DEFAULT_HP = 100

  def initialize(name = "CPU")
    @name = name
    @hp = DEFAULT_HP
    @paralysed = false
    @poisoned = false
    @sleeping = false
  end

  def self.create(*names)
    @player = Player.new(*names)
  end

  def self.instance
    @player
  end

# Will need an if to prevent HP going below 0
  def receive_damage
    @hp -= rand(1..10)
    @hp = 0 if @hp < 0
  end

  def receive_poison_damage
    @hp -= rand(1..5)
  end

  def receive_heavy_damage
    @hp -= rand(15..30)
    @hp = 0 if @hp < 0
  end

# Will need an if to prevent HP going over 100
  def heal
    @hp += rand(1..10)
    @hp = 100 if @hp > 100
  end

end
