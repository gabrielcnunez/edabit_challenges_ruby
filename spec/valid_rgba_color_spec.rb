require 'rspec'
require './lib/valid_rgba_color'

RSpec.describe 'Is It a Valid RGB(A) Color?' do
  it 'given RGB(A) color, determine if format is valid' do
    # True Tests
    expect(valid_color('rgb(0,0,0)')).to eq(true)
    expect(valid_color('rgb(255,255,255)')).to eq(true)
    expect(valid_color('rgba(0,0,0,0)')).to eq(true)
    expect(valid_color('rgba(255,255,255,1)')).to eq(true)
    expect(valid_color('rgba(0,0,0,0.123456789)')).to eq(true)
    expect(valid_color('rgba(0,0,0,.8)')).to eq(true)
    expect(valid_color('rgba(	0 , 127	, 255 , 0.1	)')).to eq(true)
    expect(valid_color('rgb(0%,50%,100%)')).to eq(true)

    # False Tests
    expect(valid_color('rgb(0,,0)')).to eq(false)
    expect(valid_color('rgb (0,0,0)')).to eq(false)
    expect(valid_color('rgb(0,0,0,0)')).to eq(false)
    expect(valid_color('rgba(0,0,0)')).to eq(false)
    expect(valid_color('rgb(-1,0,0)')).to eq(false)
    expect(valid_color('rgb(255,256,255)')).to eq(false)
    expect(valid_color('rgb(100%,100%,101%)')).to eq(false)
    expect(valid_color('rgba(0,0,0,-1)')).to eq(false)
    expect(valid_color('rgba(0,0,0,1.1)')).to eq(false)
  end
end