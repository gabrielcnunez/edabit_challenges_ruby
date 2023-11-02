require 'rspec'
require './lib/rolling_cipher'

RSpec.describe 'Rolling Cipher' do
  it 'takes string, return cipher by rolling each character forward or backward n times' do
    expect(rolling_cipher('abcd', 1)).to eq('bcde')
    expect(rolling_cipher('abcd', -1)).to eq('zabc')
    expect(rolling_cipher('abcd', 3)).to eq('defg')
    expect(rolling_cipher('abcd', 25)).to eq('zabc')
    expect(rolling_cipher('abcd', 26)).to eq('abcd')
    expect(rolling_cipher('abcd', 27)).to eq('bcde')
    expect(rolling_cipher('abcd', 0)).to eq('abcd')
  end
end