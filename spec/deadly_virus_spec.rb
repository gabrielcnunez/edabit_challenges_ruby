require 'rspec'
require './lib/deadly_virus'

RSpec.describe 'Deadly Virus' do
  it 'returns 2-D array of persons affected by virus based on n hours of contact' do
    # persons=[
    # ["P","P","P","P","P"],
    # ["V","P","P","P","P"],
    # ["P","P","P","P","P"],
    # ["P","P","P","P","P"],
    # ["P","P","P","P","P"]
    # ]

    # answer=[
    # ["P","P","P","P","P"],
    # ["V","P","P","P","P"],
    # ["P","P","P","P","P"],
    # ["P","P","P","P","P"],
    # ["P","P","P","P","P"]
    # ]

    # expect(deadly_virus(persons,0)).to eq(answer)

    # persons=[
    # ["P","P","P","P","P"],
    # ["V","P","P","P","P"],
    # ["P","P","P","P","P"],
    # ["P","P","P","P","P"],
    # ["P","P","P","P","P"]
    # ]

    # answer=[
    # ["V","P","P","P","P"],
    # ["V","V","P","P","P"],
    # ["V","P","P","P","P"],
    # ["P","P","P","P","P"],
    # ["P","P","P","P","P"]
    # ]

    # expect(deadly_virus(persons,1)).to eq(answer)

    # persons=[
    # ["P","P","P","P","P"],
    # ["V","P","P","P","P"],
    # ["P","P","P","P","P"],
    # ["P","P","P","P","P"],
    # ["P","P","P","P","P"]
    # ]

    # answer=[
    # ["V","V","P","P","P"],
    # ["V","V","V","P","P"],
    # ["V","V","P","P","P"],
    # ["V","P","P","P","P"],
    # ["P","P","P","P","P"]
    # ]

    # expect(deadly_virus(persons,2)).to eq(answer)

    # persons=[
    # ["P","P","P","P","P"],
    # ["P","P","P","P","P"],
    # ["P","P","V","P","P"],
    # ["P","P","P","P","P"],
    # ["P","P","P","P","P"]
    # ]

    # answer=[
    # ["P","P","P","P","P"],
    # ["P","P","V","P","P"],
    # ["P","V","V","V","P"],
    # ["P","P","V","P","P"],
    # ["P","P","P","P","P"]
    # ]

    # expect(deadly_virus(persons,1)).to eq(answer)

    # persons=[
    # ["P","P","P","P","P"],
    # ["P","P","P","P","P"],
    # ["P","P","V","P","P"],
    # ["P","P","P","P","P"],
    # ["P","P","P","P","P"]
    # ]

    # answer=[
    # ["P","P","V","P","P"],
    # ["P","V","V","V","P"],
    # ["V","V","V","V","V"],
    # ["P","V","V","V","P"],
    # ["P","P","V","P","P"]
    # ]

    # expect(deadly_virus(persons,2)).to eq(answer)

    persons=[
    ["P","P","P","P","P"],
    ["P","P","P","P","P"],
    ["P","P","V","P","P"],
    ["P","P","P","P","P"],
    ["P","P","P","P","P"]
    ]

    answer=[
    ["P","V","V","V","P"],
    ["V","V","V","V","V"],
    ["V","V","V","V","V"],
    ["V","V","V","V","V"],
    ["P","V","V","V","P"]
    ]

    expect(deadly_virus(persons,3)).to eq(answer)

    persons=[
    ["P","P","P","P","P"],
    ["P","P","P","P","P"],
    ["P","P","V","P","P"],
    ["P","P","P","P","P"],
    ["P","P","P","P","P"]
    ]

    answer=[
    ["V","V","V","V","V"],
    ["V","V","V","V","V"],
    ["V","V","V","V","V"],
    ["V","V","V","V","V"],
    ["V","V","V","V","V"]
    ]
    expect(deadly_virus(persons,4)).to eq(answer)
  end
end