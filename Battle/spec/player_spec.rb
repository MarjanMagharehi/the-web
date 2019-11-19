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

end
