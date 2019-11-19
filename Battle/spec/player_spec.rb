require 'player'

describe Player do
  subject(:bella) {Player.new("Bella")}

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

  describe '#receive_hit' do
    it 'should recieve a hit and lower hp' do
      expect{bella.receive_hit}.to change{bella.hp}.by(-10)
    end
  end


end
