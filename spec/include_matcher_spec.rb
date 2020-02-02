# frozen_string_literal: true

RSpec.describe 'hot chocolate' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end
  end
  it { is_expected.to include('choc') }

  describe [10, 20, 30] do
    it 'checks for inclusion in the array, regardless of order' do
      expect(subject).to include(10)
      expect(subject).to include(10, 20)
      expect(subject).to include(10, 30)
    end
  end
  describe ( { a: 2, b: 4 }) do
    it ' checks for key existence' do
      expect(subject).to include(:a)
      expect(subject).to include(:a, :b)
      expect(subject).to include(:b, :a)
    end
    it 'checks for value in hash' do
      expect(subject).to include(a: 2)
    end
    it { is_expected.to include(:b) }
    it { is_expected.to include(b: 4) }
  end
end
