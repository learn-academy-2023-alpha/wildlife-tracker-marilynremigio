require 'rails_helper'

RSpec.describe Sighting, type: :model do

  it 'is not valid without a latitude' do
    sighting = Sighting.create(longitude: '-104.821336', date: '2023/03/06')
    expect(sighting.errors[:latitude]).to_not be_empty
  end

  it 'is not valid without a longitude' do
    sighting = Sighting.create(latitude: '38.833487', date: '2023/03/06')
    expect(sighting.errors[:longitude]).to_not be_empty
  end

  it 'is not valid without a date' do
    sighting = Sighting.create(latitude: '38.833487', longitude: '-104.821336')
    expect(sighting.errors[:date]).to_not be_empty
  end
  
end
