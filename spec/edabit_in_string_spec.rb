require 'rspec'
require './lib/edabit_in_string'

RSpec.describe 'Is Edabit in the String?' do
  it 'takes string, returns "yes" or "no" if subsequence of string can spell edabit' do
    expect(edabit_in_string("eddaaabt")).to eq("NO")
    expect(edabit_in_string("edwardisabletodoittoo")).to eq("YES")
    expect(edabit_in_string("abecdfghijklmnopqrstuvwxyz")).to eq("NO")
    expect(edabit_in_string("edisthebestatthis")).to eq("NO")
    expect(edabit_in_string("teachandlearnbitbybit")).to eq("YES")
    expect(edabit_in_string("fjkdlkskkkkkdkkdkdedaaakkjkkdkkdklqiieuirooeizooziiciibiiiiifooiioiiuuyeyttgguoosooodiifiufiiodikkjkls")).to eq("YES")
  end
end