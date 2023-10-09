require_relative '../lib/game'

describe 'Game' do
  let(:game) { Game.new }
  describe '#initialize' do
    it 'creates a game with attributes' do
      expect(game.player_score).to eq(0)
      expect(game.running).to eq(true)
      expect(game.bank_score).to be_between(16, 21)
      expect(game
      .instance_variable_get(:@view))
        .to be_a View
      expect(game.turns).to eq(0)
    end
  end

  describe '#run' do
    it 'should respond to the run method' do
      expect(game).to respond_to :run
    end
  end
end
