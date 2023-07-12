require 'rspec'
require './lib/well_formed_strings'

RSpec.describe 'Well-formed strings' do
  it 'validates if a string has matching braces in symmetrical order' do
    expect(validate("()")).to eq(true)
    expect(validate("([{}[]])")).to eq(true)
    expect(validate("()[")).to eq(true)
    expect(validate("([)]")).to eq(true)
  end
end 