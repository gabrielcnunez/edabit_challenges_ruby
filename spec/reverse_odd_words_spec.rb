require 'rspec'
require './lib/reverse_odd_words'

RSpec.describe 'reverse_odd' do
  it 'reverses words with an odd number of letters' do
    expect(reverse_odd('One two three four')).to eq('enO owt eerht four')
    expect(reverse_odd('Make sure uoy only esrever sdrow of ddo length')).to eq('Make sure you only reverse words of odd length')
    expect(reverse_odd('')).to eq('')
    expect(reverse_odd('Bananas')).to eq('sananaB')
    expect(reverse_odd('Even even even even even even even even even')).to eq('Even even even even even even even even even')
    expect(reverse_odd('Odd odd odd odd odd odd odd odd odd odd odd')).to eq('ddO ddo ddo ddo ddo ddo ddo ddo ddo ddo ddo')
  end
end