require 'game'

describe Game do
  subject(:game) { described_class.create(player_1, player_2) }
  let(:player_1) { double :player, :hp => 100 }
  let(:player_2) { double :player, :hp => 100 }
  let (:player) { Player.new("Ryu") }
    describe '#attack' do
      it 'can attack a player' do
        expect(game.player_2).to receive(:receive_damage)
        game.attack(game.player_2)
      end
    end

    describe '#heal_player' do
      it "can heal a player" do
        expect(game.player_2).to receive(:heal)
        game.heal_player(game.player_2)
      end
    end

end
