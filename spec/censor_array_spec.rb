require 'rspec'
require './lib/censor_array'

RSpec.describe 'Censor Words from Array' do
  it 'takes string and array of words, censors words using given symbol' do
    expect(censor_string("The cow jumped over the moon.", ["cow", "over"], "*")).to eq("The *** jumped **** the moon.")
    expect(censor_string("Why do my cats keep eating grass?", ["Why", "keep", "eating"], "!")).to eq("!!! do my cats !!!! !!!!!! grass?")
    expect(censor_string("How do I stop myself from using python!?", ["do", "stop", "using"], "-")).to eq("How -- I ---- myself from ----- python!?")
    expect(censor_string("If statements are pretty fun to use.", ["statements", "pretty", "to"], "~~")).to eq("If ~~~~~~~~~~~~~~~~~~~~ are ~~~~~~~~~~~~ fun ~~~~ use.")
    expect(censor_string("I'm dyslexic, but that deos'tn matter!", ["that", "matter!"], "?")).to eq("I'm dyslexic, but ???? deos'tn ???????")
    expect(censor_string("I should be doing work but I am doing this instead.", ["should", "but", "this"], "*")).to eq("I ****** be doing work *** I am doing **** instead.")
  end
end