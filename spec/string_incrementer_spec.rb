require 'rspec'
require './lib/string_incrementer'

RSpec.describe 'String Incrementer' do
  it 'increments a string to create a new string' do
    expect(increment_string("foo")).to eq("foo1")
    expect(increment_string("foobar01002")).to eq("foobar01003")
    expect(increment_string("foobar00599")).to eq("foobar00600")
    expect(increment_string("foo099")).to eq("foo100")
    expect(increment_string("foo09999")).to eq("foo10000")
  end
end