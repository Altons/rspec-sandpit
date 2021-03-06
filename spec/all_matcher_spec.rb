# frozen_string_literal: true

RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    # [5, 7, 9].each do |val|
    #   expect(val).to be_odd
    # end

    expect([5, 7, 9, 11, 13]).to all(be_odd)
    expect([[], [], [], []]).to all(be_empty)
    expect([5, 7, 9]).to all(be < 10)
  end

  describe [5, 6, 7] do
    it { is_expected.to all(be < 10) }
  end
end
