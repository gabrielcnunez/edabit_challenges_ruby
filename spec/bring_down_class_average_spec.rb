require 'rspec'
require './lib/bring_down_class_average'

RSpec.describe 'Bring Down the Class Average' do
  it 'given array of scores, returns score to bring average down 5%' do
    expect(take_down_average(["95%", "83%", "90%", "87%", "88%", "93%"])).to eq("54%")
    expect(take_down_average(["10%"])).to eq("0%")
    expect(take_down_average(["74%", "76%", "58%", "50%", "99%", "70%"])).to eq("36%")
    expect(take_down_average(["64%", "95%", "89%", "69%", "96%", "59%", "84%", "93%"])).to eq("36%")
    expect(take_down_average(["77%", "77%"])).to eq("62%")
    expect(take_down_average(["73%", "98%"])).to eq("70%")
    expect(take_down_average(["96%", "87%", "66%"])).to eq("63%")
    expect(take_down_average(["94%", "79%", "54%", "62%"])).to eq("47%")
    expect(take_down_average(["56%", "50%"])).to eq("38%")
    expect(take_down_average(["100%", "51%", "98%"])).to eq("63%")
    expect(take_down_average(["85%", "74%", "61%", "70%", "56%", "67%", "53%", "53%"])).to eq("20%")
    expect(take_down_average(["67%", "91%", "93%", "87%", "81%", "79%", "88%", "69%", "92%", "69%"])).to eq("27%")
    expect(take_down_average(["75%", "100%"])).to eq("72%")
  end
end