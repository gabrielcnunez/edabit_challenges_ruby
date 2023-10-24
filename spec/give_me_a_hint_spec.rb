require 'rspec'
require './lib/give_me_a_hint'

RSpec.describe 'Give Me a Hint' do
  it 'takes sentences, returns array of strings that gradually reveals next letter in every word simultaneously' do
    expect(grant_the_hint('Mary Queen of Scots')).to eq([
    '____ _____ __ _____',
    'M___ Q____ o_ S____',
    'Ma__ Qu___ of Sc___',
    'Mar_ Que__ of Sco__',
    'Mary Quee_ of Scot_',
    'Mary Queen of Scots'
    ])

    expect(grant_the_hint('The Life of Pi')).to eq([
    '___ ____ __ __',
    'T__ L___ o_ P_',
    'Th_ Li__ of Pi',
    'The Lif_ of Pi',
    'The Life of Pi'
    ])


    expect(grant_the_hint('The River Nile')).to eq([
    '___ _____ ____',
    'T__ R____ N___',
    'Th_ Ri___ Ni__',
    'The Riv__ Nil_',
    'The Rive_ Nile',
    'The River Nile'
    ])

    expect(grant_the_hint('The Colour Purple')).to eq([
    '___ ______ ______',
    'T__ C_____ P_____',
    'Th_ Co____ Pu____',
    'The Col___ Pur___',
    'The Colo__ Purp__',
    'The Colou_ Purpl_',
    'The Colour Purple'
    ])

    expect(grant_the_hint('The Battle of Hastings')).to eq([
    '___ ______ __ ________', 
    'T__ B_____ o_ H_______', 
    'Th_ Ba____ of Ha______', 
    'The Bat___ of Has_____', 
    'The Batt__ of Hast____', 
    'The Battl_ of Hasti___', 
    'The Battle of Hastin__', 
    'The Battle of Hasting_', 
    'The Battle of Hastings'])

    expect(grant_the_hint('Ant-Man and the Wasp')).to eq([
    '_______ ___ ___ ____', 
    'A______ a__ t__ W___', 
    'An_____ an_ th_ Wa__', 
    'Ant____ and the Was_', 
    'Ant-___ and the Wasp', 
    'Ant-M__ and the Wasp', 
    'Ant-Ma_ and the Wasp', 
    'Ant-Man and the Wasp'
    ])

    expect(grant_the_hint('A billion seconds is almost 32 years')).to eq([
    '_ _______ _______ __ ______ __ _____', 
    'A b______ s______ i_ a_____ 3_ y____', 
    'A bi_____ se_____ is al____ 32 ye___', 
    'A bil____ sec____ is alm___ 32 yea__', 
    'A bill___ seco___ is almo__ 32 year_', 
    'A billi__ secon__ is almos_ 32 years', 
    'A billio_ second_ is almost 32 years', 
    'A billion seconds is almost 32 years'
    ])
  end
end