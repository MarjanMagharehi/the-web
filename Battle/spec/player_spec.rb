require 'player'

describe Player do
  subject(:bella) {Player.new("Bella")}
  subject(:marjan) {Player.new("Marjan")}

  describe '#name' do
    it 'returns the name attribute' do
      expect(bella.name).to eq "Bella"
    end
  end

  describe '#hp' do
    it 'returns the default hp' do
      expect(bella.hp).to eq(described_class::DEFAULT_HP)
    end
  end

  # describe '#attack' do
  #   it 'should damage the player' do
  #     expect(marjan).to receive(:receive_hit)
  #     bella.attack(marjan)
  #   end
  # end

  describe '#receive_hit' do
    it 'should recieve a hit and lower hp' do
      expect{marjan.receive_hit}.to change{marjan.hp}.by(-described_class::DEFAULT_HIT)
    end
  end


end
