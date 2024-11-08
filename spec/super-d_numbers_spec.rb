require 'rspec'
require './lib/super-d_numbers.rb'

RSpec.describe 'Super-d Numbers' do
  it 'takes positive int, returns whether it is a super-d or normal number' do
    expect(is_super_d(19)).to eq("Super-2 Number")
    expect(is_super_d(753)).to eq("Super-3 Number")
    expect(is_super_d(1168)).to eq("Super-4 Number")
    expect(is_super_d(24)).to eq("Normal Number")
    expect(is_super_d(20379)).to eq("Super-5 Number")
    expect(is_super_d(185423)).to eq("Super-8 Number")
    expect(is_super_d(1170)).to eq("Normal Number")
    expect(is_super_d(118)).to eq("Normal Number")
    expect(is_super_d(93568867)).to eq("Super-9 Number")
    expect(is_super_d(333)).to eq("Super-2 Number")
    expect(is_super_d(107)).to eq("Super-2 Number")
    expect(is_super_d(1184321)).to eq("Super-7 Number")
    expect(is_super_d(10098023246)).to eq("Normal Number")
    expect(is_super_d(1045361)).to eq("Super-6 Number")
    expect(is_super_d(0)).to eq("Normal Number")
  end
end