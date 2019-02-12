require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player1) { double :player, :hp => 100 }
  let(:player2) { double :player }
    describe '#attack' do
      it 'can attack a player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
      end
      # it 'attack takes 10 HP from player' do
      #   expect(player1).to receive(:receive_damage)
      #   expect(game.attack(player1)).to eq 90
      # end
    end
end
