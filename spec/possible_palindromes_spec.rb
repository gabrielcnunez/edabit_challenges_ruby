require 'rspec'
require './lib/possible_palindromes'

RSpec.describe 'Possible Palindrome' do
  it 'takes string, determines whether possible to build palindrome' do
    expect(possible_palindrome("acabbaa")).to eq(true)
    expect(possible_palindrome("aacbdbc")).to eq(true)
    expect(possible_palindrome("aacbdb")).to eq(false)
    expect(possible_palindrome("abacbb")).to eq(false)
    expect(possible_palindrome("abb")).to eq(true)
    expect(possible_palindrome("bbb")).to eq(true)
    expect(possible_palindrome("bbaa")).to eq(true)
    expect(possible_palindrome("bbaacc")).to eq(true)
    expect(possible_palindrome("bbaaccd")).to eq(true)
    expect(possible_palindrome("bbaacd")).to eq(false)
    expect(possible_palindrome("abc")).to eq(false)
    expect(possible_palindrome("ab")).to eq(false)
    expect(possible_palindrome("aabbccddef")).to eq(false)
  end
end