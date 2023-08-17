require 'rspec'
require './lib/recursion_reverse_string'

RSpec.describe 'Recursion: Reverse a String' do
  it 'returns a strings reversed using recursion' do
    count = 0
    name = :reverse 

    TracePoint.trace(:call) do |t|
      count += 1 if t.method_id == name 
    end

    expect(reverse("hello")).to eq("olleh")
    expect(count).to_not eq(1)
    
    count = 0
    expect(reverse("world")).to eq("dlrow")
    expect(count).to_not eq(1)
  
    expect(reverse("a")).to eq("a")
    expect(reverse("")).to eq("")
  end
end