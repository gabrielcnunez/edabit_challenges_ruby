require 'rspec'
require './lib/probability_matrix'

RSpec.describe 'Is It a Probability Matrix?' do
  it 'determines if matrix is a probability matrix or not' do
    expect(is_prob_matrix(
    [[0.5, 0.5, 0.0],
    [0.2, 0.5, 0.3]])).to eq(false)

    expect(is_prob_matrix(
    [[2, -1],
    [-1, 2]])).to eq(false)

    expect(is_prob_matrix(
    [[0.5, 0.4],
    [0.5, 0.6]])).to eq(false)

    expect(is_prob_matrix(
    [[0, 1],
    [1, 0]])).to eq(true)

    expect(is_prob_matrix(
    [[2, 1],
    [1, 2]])).to eq(false)

    expect(is_prob_matrix(
    [[1]])).to eq(true)

    expect(is_prob_matrix(
    [[0.5, 0.5, 0.0],
    [0.2, 0.5, 0.3],
    [0.1, 0.2, 0.7]])).to eq(true)

    expect(is_prob_matrix(
    [[0, 0, 0, 1],
    [0, 0, 0, 1],
    [0, 0, 0, 1],
    [0, 0, 0, 1]])).to eq(true)

    expect(is_prob_matrix(
    [[1, 0, 0, 1],
    [1, 0, 1, 1],
    [1, 1, 0, 1],
    [1, 0, 0, 1]])).to eq(false)

    expect(is_prob_matrix(
    [[0.5, 0.0, 0.5, 0.0],
    [0.1, 0.2, 0.3, 0.4],
    [0.3, 0.2, 0.2, 0.3],
    [0.0, 0.5, 0.0, 0.5]])).to eq(true)
  end
end