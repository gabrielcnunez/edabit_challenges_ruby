require 'rspec'
require './lib/well_formed_strings'

RSpec.describe 'Well-formed strings' do
  it 'validates if a string has matching braces in symmetrical order' do
    v = StringValidator.new
    expect(v.validate("()")).to eq(true)
    expect(v.validate("([{}[]])")).to eq(true)
    expect(v.validate("()[")).to eq(false)
    expect(v.validate("([)]")).to eq(false)
  end
end 