require 'rspec'
require './lib/untouchable_numbers'

RSpec.describe 'Untouchable Numbers' do
  it 'given int, return if number is untouchable AKA sum of proper divisors in 
  range of number to number squared do not equal number' do
    expect(is_untouchable(2)).to eq(true)
    expect(is_untouchable(3)).to eq([4])
    expect(is_untouchable(6)).to eq([6, 25])
    expect(is_untouchable(1)).to eq("Invalid Input")
    expect(is_untouchable(5)).to eq(true)
    expect(is_untouchable(8)).to eq([10, 49])
    expect(is_untouchable(52)).to eq(true)
    expect(is_untouchable(30)).to eq([841])
    expect(is_untouchable(-10)).to eq("Invalid Input")
    expect(is_untouchable(188)).to eq(true)
    expect(is_untouchable(60)).to eq([3481])
    expect(is_untouchable(100)).to eq([124, 194])
    expect(is_untouchable(120)).to eq(true)
    expect(is_untouchable(121)).to eq([243,  791, 1199, 1391, 1751, 1919, 2231, 2759, 3071, 3239, 3431, 3551, 3599])
    expect(is_untouchable(0)).to eq("Invalid Input")
  end
end