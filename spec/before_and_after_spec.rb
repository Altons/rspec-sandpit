# frozen_string_literal: true

RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'Before context'
  end
  after(:context) do
    puts 'after context'
  end
  before(:example) do
    puts 'Before example'
  end
  after(:example) do
    puts 'after example'
  end
  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end
  it 'is just another random example' do
    expect(5 * 4).to eq(20)
  end
end
