require 'rspec'
require './lib/a_capital_challenge'

RSpec.describe 'A Capital Challenge' do
  it 'given two strings, select only the characters in each string where the 
  character in the same position in the other string is in uppercase' do
   expect(select_letters("heLLO", "GUlp")).to eq("help")
   expect(select_letters("1234567", "XxXxX")).to eq("135")
   expect(select_letters("EVERYTHING", "SomeThings")).to eq("EYSomeThings")
   expect(select_letters("PaTtErN", "pAtTeRn")).to eq("atrpten")
   expect(select_letters("nothing", "nothing")).to eq("")
   expect(select_letters("What do you think of it so far?", "RUBBISH!")).to eq("What doR")
  end
end