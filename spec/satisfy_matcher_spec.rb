# frozen_string_literal: true

RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }

  it 'is a palindrome' do
    expect(subject).to satisfy { |v| v == v.reverse }
  end
  it 'can accept a custom error message' do
    expect(subject).to satisfy('be a palindrome') { |v| v == v.reverse }
  end
end
