require 'rspec'
require './lib/fix_the_right_answer'

RSpec.describe 'Fix the Right Answer' do
  it 'takes string math problem and return correct answer' do
    expect(post_fix("2 2 +")).to eq(4)
    expect(post_fix("2 2 /")).to eq(1)
    expect(post_fix("8 4 / 9 * 3 1 * /")).to eq(54)
    expect(post_fix("5 6 * 2 1 + /")).to eq(32)
    expect(post_fix("10 10 * 10 /")).to eq(10)
    expect(post_fix("1 1 + 2 2 + -")).to eq(2)
  end
end