require 'rspec'
require './lib/reverse_words_with_five_letters'

RSpec.describe "reverse" do
  it "will return an array of arrays that contains each number and its count" do
    expect(reverse("Reverse")).to eq("esreveR")
    expect(reverse("This is a typical sentence.")).to eq("This is a lacipyt .ecnetnes")
    expect(reverse("The dog is big.")).to eq("The dog is big.")
    expect(reverse("Reverse the order of every word greater than or equal to five characters.")).to eq("esreveR the redro of yreve word retaerg than or lauqe to five .sretcarahc")
    expect(reverse("Lets all be unique together until we realise we are all the same.")).to eq("Lets all be euqinu rehtegot litnu we esilaer we are all the .emas")
    expect(reverse("The old apple revels in its authority.")).to eq("The old elppa slever in its .ytirohtua")
    expect(reverse("The shooter says goodbye to his love.")).to eq("The retoohs says eybdoog to his .evol")
    expect(reverse("Please wait outside of the house.")).to eq("esaelP wait edistuo of the .esuoh")
    expect(reverse("Two seats were vacant.")).to eq("Two staes were .tnacav")
    expect(reverse("Sixty-Four comes asking for bread.")).to eq("ruoF-ytxiS semoc gniksa for .daerb")
  end
end