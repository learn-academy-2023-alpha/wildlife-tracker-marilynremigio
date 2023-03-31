require 'rails_helper'

RSpec.describe Animal, type: :model do

  it 'is not valid without a common name' do
    animal = Animal.create(scientific_binomial: 'Panthera leo')
    expect(animal.errors[:common_name]).to_not be_empty
  end

  it 'is not valid without a scientific binomial' do
    animal = Animal.create(common_name: 'Lion')
    expect(animal.errors[:scientific_binomial]).to_not be_empty
  end

  it 'is not valid if common name and scientific bionomial are the same' do
    animal = Animal.create(common_name: 'Lion', scientific_binomial: 'Lion')
    expect(animal.errors[:common_name]).to_not be_empty
  end 

  it 'not valid if common name and scientific binomial are not unique' do
    animal1 = Animal.create(common_name: 'Lion', scientific_binomial: 'Panthera leo')
    animal2 = Animal.create(common_name: 'Lion', scientific_binomial: 'Panthera leo')
    expect(animal2).to_not be_valid
  end

end
