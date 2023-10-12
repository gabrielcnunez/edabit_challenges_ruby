require 'rspec'
require './lib/phrase_or_word_inverse'

RSpec.describe 'Phrase or Word Inverse' do
  it 'takes string, inverts words or entire phrase depending on parameter' do
      expect(inverter("This is Valhalla", "P")).to eq("Valhalla is this")
      expect(inverter("One fine day to start", "W")).to eq("Eno enif yad ot trats")
      expect(inverter("Division by powers of two", "P")).to eq("Two of powers by division")
      expect(inverter("Known for passion in quality", "P")).to eq("Quality in passion for known")
      expect(inverter("Excellence is achievable", "W")).to eq("Ecnellecxe si elbaveihca")
      expect(inverter("The master of your fate the captain of your soul", "W")).to eq("Eht retsam fo ruoy etaf eht niatpac fo ruoy luos")
      expect(inverter("All but one in the middle of it all", "P")).to eq("All it of middle the in one but all")
      expect(inverter("The master of your fate the captain of your soul", "P")).to eq("Soul your of captain the fate your of master the")
  end
end