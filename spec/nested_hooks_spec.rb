# frozen_string_literal: true

RSpec.describe 'Nested Hooks' do
  before(:context) do
    puts 'OUTER Before context'
  end

  before(:example) do
    puts ' OUTER Before example'
  end

  it 'does basic math' do
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts ' INNER Before context'
    end

    before(:example) do
      puts ' INNER Before example'
    end

    it 'does  further basic math' do
      expect(1 + 1).to eq(2)
    end

    it 'does  substraction as well' do
      expect(1 - 1).to eq(0)
    end
  end
end
