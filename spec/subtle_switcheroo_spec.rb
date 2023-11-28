require 'rspec'
require './lib/subtle_switcheroo'

RSpec.describe 'A Subtle Switcheroo' do
  it 'replaces all instances of -nts and -nce with each other if at end of word' do
    expect(switcheroo("While he rants, I fall into a trance...")).to eq("While he rance, I fall into a trants...")
    expect(switcheroo("The elephants in France were chased by ants!")).to eq("The elephance in Frants were chased by ance!")
    expect(switcheroo("Bounced over the fence!")).to eq("Bounced over the fents!")
    expect(switcheroo("Face")).to eq("Face")
    expect(switcheroo("Fats")).to eq("Fats")
    expect(switcheroo("")).to eq("")
  end
end