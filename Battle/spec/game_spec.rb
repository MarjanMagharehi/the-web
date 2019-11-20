require 'game'

describe Game do
  subject(:game) {described_class.new}
  let(:player_1) {double :player}
  let(:player_2) {double :player}

  describe '#attack' do
    it 'should damage the player' do
      expect(player_2).to receive(:receive_hit)
      game.attack(player_2)
    end
  end
end


# describe Game do
#   subject(:game) {Game.new}
#   subject(:bella) {Player.new("Bella")}
#   subject(:marjan) {Player.new("Marjan")}
#
#   describe '#attack' do
#     it 'should damage the player' do
#       expect(marjan).to receive(:receive_hit)
#       game.attack(marjan)
#     end
#   end
# end
