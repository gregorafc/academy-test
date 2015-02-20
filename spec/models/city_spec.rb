require 'spec_helper'

describe City do
  let(:city) { FactoryGirl.build(:city) }

  context 'validations' do

    it 'should be valid with name and short name' do
      expect(city).to be_valid
    end

    it 'require name' do
      city.name = nil
      expect(city.valid?).to eq false
    end

    it 'require short name' do
      city.short_name = nil
      expect(city.valid?).to eq false
    end

    it 'enforces unique name' do
      existing_city = FactoryGirl.create(:city, short_name: 'Ps')
      expect(city).to_not be_valid
    end

    it 'enforces unique short name' do
      existing_city = FactoryGirl.create(:city, name: 'Pari')
      expect(city).to_not be_valid
    end

    it 'short name should have 2 chars length' do
      city.short_name = 'Prr'
      expect(city).to_not be_valid
    end

  end


end
