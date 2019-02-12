require 'player'

describe Player do
  subject(:ryu) { Player.new("Ryu") }

  it "can return player 1's name" do
    expect(ryu.name).to eq "Ryu"
  end
end
