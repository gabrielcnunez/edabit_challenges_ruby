require 'rspec'
require './lib/recursion_string_palindromes'

RSpec.describe 'Recursion: String Palindromes' do
  it 'recursively determines if a string is a palindrome' do
    count = 0
    name = :palindrome 

    TracePoint.trace(:call) do |t|
      count += 1 if t.method_id == name 	
    end

    expect(palindrome("abcba")).to eq(true)
    expect(count).to_not eq(1)

    count = 0
    expect(palindrome("abbba")).to eq(true)
    expect(count).to_not eq(1)

    count = 0
    expect(palindrome("abbbba")).to eq(true)
    expect(count).to_not eq(1)

    expect(palindrome("abccdba")).to eq(false)
    expect(palindrome("abbaa")).to eq(false)
    expect(palindrome("abbbbb")).to eq(false)
    expect(palindrome("ad")).to eq(false)
    expect(palindrome("b")).to eq(true)
    expect(palindrome("")).to eq(true)
  end
end