require 'rspec'
require './lib/unfair_hurdles'

RSpec.describe 'is_hurdle_unfair' do
  it 'checks if hurdle is 4 or more tall and less than 4 space apart' do
    expect(is_unfair_hurdle([
                              '#    #    #    #',
                              '#    #    #    #',
                              '#    #    #    #',
                              '#    #    #    #'
                              ])).to eq(true)
    expect(is_unfair_hurdle([
                              '#  #  #  #',
                              '#  #  #  #',
                              '#  #  #  #'
                              ])).to eq(true)
    expect(is_unfair_hurdle([
                              '#      #      #      #',
                              '#      #      #      #'
                              ])).to eq(false)
    expect(is_unfair_hurdle([
                              '########',
                              '########',
                              '########',
                              '########',
                              '########'
                              ])).to eq(true)
    expect(is_unfair_hurdle([
                              '#    #',
                              '#    #'
                              ])).to eq(false)
    expect(is_unfair_hurdle([
                              '#    #',
                              '#    #',
                              '#    #'
                              ])).to eq(false)
    expect(is_unfair_hurdle([
                              '#    #    #',
                              '#    #    #',
                              '#    #    #'
                              ])).to eq(false)
    expect(is_unfair_hurdle([
                              '#    #    #    #    #',
                              '#    #    #    #    #',
                              '#    #    #    #    #'
                              ])).to eq(false)
    expect(is_unfair_hurdle([
                              '#    #    #    #    #',
                              '#    #    #    #    #',
                              '#    #    #    #    #',
                              '#    #    #    #    #',
                              '#    #    #    #    #'
                              ])).to eq(true)
    expect(is_unfair_hurdle([
                              '#    #',
                              '#    #',
                              '#    #',
                              '#    #',
                              '#    #'
                              ])).to eq(true)
  end
end