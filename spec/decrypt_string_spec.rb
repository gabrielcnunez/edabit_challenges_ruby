require 'rspec'
require './lib/decrypt_string'

RSpec.describe 'Decrypt the String from Digits to Letters' do
  it 'takes strings, translates to lowercase letters' do
    expect(decrypt("10#11#12")).to eq("jkab")
    expect(decrypt("1326#")).to eq("acz")
    expect(decrypt("25#")).to eq("y")
    expect(decrypt("12345678910#11#12#13#14#15#16#17#18#19#20#21#22#23#24#25#26#")).to eq("abcdefghijklmnopqrstuvwxyz")
  end
end