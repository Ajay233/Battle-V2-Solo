require 'player'

describe Player do
  subject(:ryu) { Player.new("Ryu") }

  it "can return player 1's name" do
    expect(ryu.name).to eq "Ryu"
  end

  it "can initialize a player with 100 hp" do
    expect(ryu.hp).to eq 100
  end

  it "can take damage" do
    ryu.receive_damage
    expect(ryu.hp).to eq 90
  end

  it "can be healed" do
    2.times { ryu.receive_damage }
    ryu.heal
    expect(ryu.hp).to eq 90
  end

end
