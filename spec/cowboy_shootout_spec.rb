require 'rspec'
require './lib/cowboy_shootout'

RSpec.describe 'Cowboy Shootout' do
  it 'takes array of strings with word "bang" in them, returns time to shoot bottles' do
    expect(roger_shots(["Bang!", "Bang!", "Bang!", "Bang!", "Bang!", "Bang!"])).to eq(3)
    expect(roger_shots(["Bang!", "Bang!", "Bang!", "Bang!", "BangBang!"])).to eq(2.5)
    expect(roger_shots(["Bang!", "BangBangBang!", "Boom!", "Bang!", "BangBang!", "BangBang!"])).to eq(2)
    expect(roger_shots(["BangBang!", "BangBang!", "BangBang!"])).to eq(1.5)
    expect(roger_shots(["Bang!", "BadaBing!", "Badaboom!", "Bang!", "Bang!", "Bang!", "Bang!", "Bang!"])).to eq(3)
    expect(roger_shots(["BangBang!", "BangBang!", "Bag!", "Ban!", "Tang!", "Bang!", "Bang!"])).to eq(2)
  end
end