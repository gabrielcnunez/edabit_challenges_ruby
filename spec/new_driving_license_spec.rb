require 'rspec'
require './lib/new_driving_license'

RSpec.describe 'New Driving License' do
  it 'returns number of minutes it takes to get license, based on given parameters' do
    expect(license("Zebediah", 1, "Bob Jim Becky Pat")).to eq(100)
    expect(license("Eric", 2, "Adam Caroline Rebecca Frank")).to eq(40)
    expect(license("Aaron", 3, "Jane Max Olivia Sam")).to eq(20)
    expect(license("Zebediah", 4, "Bob Jim Becky Pat")).to eq(40)
    expect(license("Zebediah", 5, "Bob Jim Becky Pat")).to eq(20)
  end
end