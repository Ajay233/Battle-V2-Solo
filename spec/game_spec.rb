require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player1) { double :player, :hp => 100 }
  let(:player2) { double :player }
  let (:player) { Player.new("Ryu") }
    describe '#attack' do

      it 'can attack a player' do
      expect(player2).to receive(:receive_damage)
      Game.attack(player2)
      end

      it "can reduce a player's HP by 10 per attack" do
        Game.attack(player)
        expect(player.hp).to eq 90
      end

    end

    describe '#heal_player' do

      it "can add 10 HP" do
        2.times { Game.attack(player) }
        Game.heal_player(player)
        expect(player.hp).to eq 90
      end

    end

end
