# frozen_string_literal: true

RSpec.describe 'firetruck' do
  it { is_expected.to start_with('fire') && end_with('truck') }
end

RSpec.describe 20 do
  it { is_expected.to be_even && respond_to(:times) }
end

RSpec.describe [4, 8, 15, 16, 23, 42] do
  it { is_expected.to include(42) && start_with([4, 8, 15]) }
end
