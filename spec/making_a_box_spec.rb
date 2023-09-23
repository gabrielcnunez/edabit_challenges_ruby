require 'rspec'
require './lib/making_a_box'

RSpec.describe 'Making a Box' do
  it 'makes a box out of octothorpes based on dimension n' do
    expect(make_box(5)).to eq([
        "#####", 
        "#   #", 
        "#   #", 
        "#   #", 
        "#####"
    ])

    expect(make_box(6)).to eq([
        "######", 
        "#    #", 
        "#    #", 
        "#    #", 
        "#    #", 
        "######"
    ])

    expect(make_box(4)).to eq([
        "####", 
        "#  #", 
        "#  #", 
        "####"
    ])

    expect(make_box(2)).to eq([
        "##", 
        "##"
    ])

    expect(make_box(1)).to eq([
        "#"
    ])
  end
end