require 'rspec'
require './lib/string_sliceathon'

RSpec.describe "String sliceathon" do
  it 'returns requested section of string using only slice method' do
    txt = 'abcdefghijklmnopqrstuvwxyz'
    nums = '0123456789'
    
    expect(challenge1(txt)).to eq('abcde')
    expect(challenge2(txt)).to eq('vwxyz')
    expect(challenge3(txt)).to eq('zyxwvutsrqponmlkjihgfedcba')
    expect(challenge4(txt)).to eq('fedcba')
    expect(challenge5(txt)).to eq('tvxz')
    
    expect(challenge1(nums)).to eq('01234')
    expect(challenge2(nums)).to eq('56789')
    expect(challenge3(nums)).to eq('98765432410')
    expect(challenge4(nums)).to eq('543210')
    expect(challenge5(nums)).to eq('3579')
  end
end