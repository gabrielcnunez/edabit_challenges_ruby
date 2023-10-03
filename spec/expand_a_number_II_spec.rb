require 'rspec'
require './lib/expand_a_number_II'

RSpec.describe 'Expand a Number II' do
  it 'expands a float into whole numbers and fractions' do
    expect(expanded_form(87.04)).to eq('80 + 7 + 4/100')
    expect(expanded_form(123.025)).to eq('100 + 20 + 3 + 2/100 + 5/1000')
    expect(expanded_form(50.270)).to eq('50 + 2/10 + 7/100') 
    expect(expanded_form(207.333)).to eq('200 + 7 + 3/10 + 3/100 + 3/1000')
    expect(expanded_form(0.57)).to eq('5/10 + 7/100')
    expect(expanded_form(140.023)).to eq('100 + 40 + 2/100 + 3/1000')
    expect(expanded_form(90.99)).to eq('90 + 9/10 + 9/100')
    expect(expanded_form(84.5)).to eq('80 + 4 + 5/10')
    expect(expanded_form(76.02)).to eq('70 + 6 + 2/100')
    expect(expanded_form(44.5)).to eq('40 + 4 + 5/10')
    expect(expanded_form(37.49)).to eq('30 + 7 + 4/10 + 9/100')
    expect(expanded_form(60.0007)).to eq('60 + 7/10000')
    expect(expanded_form(29.22)).to eq('20 + 9 + 2/10 + 2/100')
    expect(expanded_form(10.99)).to eq('10 + 9/10 + 9/100')
    expect(expanded_form(63.09)).to eq('60 + 3 + 9/100')
    expect(expanded_form(37.022)).to eq('30 + 7 + 2/100 + 2/1000')
    expect(expanded_form(43.21)).to eq('40 + 3 + 2/10 + 1/100')
    expect(expanded_form(309.028)).to eq('300 + 9 + 2/100 + 8/1000')
    expect(expanded_form(447.33)).to eq('400 + 40 + 7 + 3/10 + 3/100')
    expect(expanded_form(65.05)).to eq('60 + 5 + 5/100')
    expect(expanded_form(47.34)).to eq('40 + 7 + 3/10 + 4/100')
    expect(expanded_form(68.699)).to eq('60 + 8 + 6/10 + 9/100 + 9/1000')
    expect(expanded_form(1.24)).to eq('1 + 2/10 + 4/100')
    expect(expanded_form(4.28)).to eq('4 + 2/10 + 8/100')
    expect(expanded_form(7.304)).to eq('7 + 3/10 + 4/1000')
    expect(expanded_form(0.04)).to eq('4/100')
    expect(expanded_form(0.1234)).to eq('1/10 + 2/100 + 3/1000 + 4/10000')
  end
end