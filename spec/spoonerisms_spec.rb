require 'rspec'
require './lib/spoonerisms'

RSpec.describe 'Spoonerisms' do
  it 'takes two-word phrase and returns spoonerism of phrase' do
    # expect(spoonerize("crushing failure")).to eq("fushing crailure")
    # expect(spoonerize("christmas eve")).to eq("istmas chreve")
    expect(spoonerize("highlighter fluid")).to eq("flighlighter huid")
    expect(spoonerize("chocolate biscuits")).to eq("bocolate chiscuits")
    expect(spoonerize("edabit rules!")).to eq("redabit ules!")
  end
end