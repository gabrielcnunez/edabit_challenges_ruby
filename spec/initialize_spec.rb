require 'rspec'
require './lib/initialize'

RSpec.describe 'Initialize' do
  it 'takes array of names, returns initials' do
    expect(initialize_names(['Sherlock Holmes', 'John Watson', 'Irene Adler'])).to eq(['S. H.', 'J. W.', 'I. A.'])
    expect(initialize_names(['Harry Potter', 'Ron Weasley'])).to eq(['H. P.', 'R. W.'])
    expect(initialize_names(['Stephen Hawking'])).to eq(['S. H.'])
    expect(initialize_names(['Atticus Finch'])).to eq(['A. F.'])
    expect(initialize_names(['Leonardo DiCaprio'])).to eq(['L. D.'])
  end
end