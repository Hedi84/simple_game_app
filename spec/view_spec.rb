require_relative '../lib/view'

describe 'View' do
  let(:view) { View.new }

  describe '#ask_for_user_input' do
    it 'should respond to the ask_for_user_input method' do
      expect(view).to respond_to :ask_for_user_input
    end
  end

  describe '#wrong_input' do
    it 'should respond to the wrong_input method' do
      expect(view).to respond_to :wrong_input
    end
  end

  describe '#current_score' do
    it 'should respond to the current_score method' do
      expect(view).to respond_to :current_score
    end
  end

  describe '#game_result' do
    it 'should respond to the game_result method' do
      expect(view).to respond_to :game_result
    end
  end

  describe '#bank_score' do
    it 'should respond to the bank_score method' do
      expect(view).to respond_to :bank_score
    end
  end
end
