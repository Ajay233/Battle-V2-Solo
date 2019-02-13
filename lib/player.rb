class Player
  attr_reader :name, :hp
  DEFAULT_HP = 100

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

# Private method??
# Will need an if to prevent HP going below 0
  def receive_damage
    # @hp -= rand(1..10)
    @hp -= 10
  end

# Will need an if to prevent HP going over 100
  def heal
    # @hp += rand(1..10)
    @hp += 10
  end

end
