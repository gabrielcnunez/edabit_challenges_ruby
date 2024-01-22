require 'rspec'
require './lib/right_angled_triangle'

RSpec.describe 'Is It a Right-Angled Triangle?' do
  it 'given facts about triangle, return boolean if triangle is right-angled' do
    expect(is_right_angle([30, 60], "angle")).to eq(true)
    expect(is_right_angle([30, 60, 90], "angle")).to eq(true)
    expect(is_right_angle([90], "angle")).to eq(true)
    expect(is_right_angle([90, 90, 90], "angle")).to eq(false)
    expect(is_right_angle([20, 20, 20, 20], "angle")).to eq(false)
    expect(is_right_angle([], "angle")).to eq(true)
    expect(is_right_angle([90, 90], "angle")).to eq(false)
    expect(is_right_angle([45, 46], "angle")).to eq(false)
    expect(is_right_angle([45, 46], "side")).to eq(true)
    expect(is_right_angle([4, 5, 6], "side")).to eq(false)
    expect(is_right_angle([], "side")).to eq(true)
    expect(is_right_angle([3, 4, 5], "side")).to eq(true)
    expect(is_right_angle([60, 60, 60], "angle")).to eq(false)
    expect(is_right_angle([177, 2, 1], "angle")).to eq(false)
    expect(is_right_angle([20, 20, 20, 20], "side")).to eq(false)
    expect(is_right_angle([43], "angle")).to eq(true)
  end
end