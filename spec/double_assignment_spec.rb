# frozen_string_literal: true

RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
    db = double('Database Connection', connect: true, disconnect: 'Goodbye')
    expect(db.connect).to eq(true)
    expect(db.disconnect).to eq('Goodbye')
    fs = double('File System')
    allow(fs).to receive_messages(read: 'Romeo and Juliet')
    allow(fs).to receive_messages(write: false)

    # For each question, write the code that should go here
  end
end
