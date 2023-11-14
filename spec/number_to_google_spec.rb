require 'rspec'
require './lib/number_to_google'

RSpec.describe 'Number to Google' do
  it 'takes array, returns decrypted string' do
    expect(num_to_google(["12213467"])).to eq("Google.")
    expect(num_to_google(["12213467", "321"])).to eq("Google.log")
    expect(num_to_google(["12213467", "321", "122906"])).to eq("Google.log")
    expect(num_to_google(["15", "2502", "15",3545])).to eq("GOOGLE")
    expect(num_to_google(["15", "2502", "15",35,45])).to eq("GOOGLE")
    expect(num_to_google([15,202,1,3,4])).to eq("Google")
    expect(num_to_google(["1221348"])).to eq("elgoog")
    expect(num_to_google(["218","6","12",6,1,2,])).to eq("go.go.go")
  end
end