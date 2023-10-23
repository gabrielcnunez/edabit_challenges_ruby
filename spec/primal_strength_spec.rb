require 'rspec'
require './lib/primal_strength'

# frozen_string_literal: true

RSpec.describe "Primal Strength" do
  it "takes prime number, return string stating if number is strong, weak, or balance" do
    expect(primal_strength(5)).to eq("Balanced")
    expect(primal_strength(211)).to eq("Balanced")
    expect(primal_strength(593)).to eq("Balanced")
    expect(primal_strength(1693)).to eq("Strong")
    expect(primal_strength(599)).to eq("Strong")
    expect(primal_strength(2203)).to eq("Strong")
    expect(primal_strength(19)).to eq("Weak")
    expect(primal_strength(2971)).to eq("Weak")
    expect(primal_strength(1493)).to eq("Weak")
  end
end


