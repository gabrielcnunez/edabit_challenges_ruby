require 'rspec'
require './lib/lonely_numbers'

RSpec.describe 'Lonely Numbers' do
  it 'given number, insert duplicate digits on both side of digits appearing in group of one' do
    expect(numbers_need_friends_too(123)).to eq(111222333)
    expect(numbers_need_friends_too(56657)).to eq(55566555777)
    expect(numbers_need_friends_too(33)).to eq(33)
    expect(numbers_need_friends_too(22733)).to eq(2277733)
    expect(numbers_need_friends_too(11223333)).to eq(11223333)
  end
end