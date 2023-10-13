require 'rspec'
require './lib/superheroes'

RSpec.describe 'Superheroes' do
  it 'takes array of names of superheroes, returns array only of names ending in man in alphabetical order' do
    expect(superheroes(["Batman", "Superman", "Spider-man", "Hulk", "Wolverine", "Wonder-Woman"])).to eq(["Batman", "Spider-man", "Superman"])
    expect(superheroes(["Catwoman", "Deadpool", "Dr.Strange", "Captain-America", "Aquaman", "Hawkeye"])).to eq(["Aquaman"])
    expect(superheroes(["Iron-man", "Thor", "Black-Panther", "Iceman", "Catwoman", "Invisible-Woman"])).to eq(["Iceman", "Iron-man"])
    expect(superheroes(["Batman", "Superman", "Spider-man", "Hulk", "Wolverine", "Deadpool", "Dr.Strange", "Captain-America", "Aquaman", "Hawkeye", "Iron-man", "Thor", "Black-Panther", "Iceman"])).to eq(["Aquaman", "Batman", "Iceman", "Iron-man", "Spider-man", "Superman"])
    expect(superheroes(["Wonder-Woman", "Catwoman", "Invisible-Woman"])).to eq([])
  end
end