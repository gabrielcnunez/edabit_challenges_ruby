require 'rspec'
require './lib/total_product_sales'

RSpec.describe 'Total product sales' do
  it 'returns the total sales of a product if it is contained in an array' do
    table1 = [
    ['A', 'B', 'C'],
    [ 2 ,  7 ,  1 ],
    [ 3 ,  6 ,  6 ],
    [ 4 ,  5 ,  5 ]]
    
    table2 = [
    ['W', 'X', 'Y', 'Z'],
    [ 3 ,  5 ,  7 ,  1 ],
    [ 4 ,  5 ,  2 ,  3 ]]

    table3 = [
      ['R', 'T', 'V', 'W', 'C'],
      [ 2 ,  3 ,  7 ,  7 ,  4 ],
      [ 8 ,  5 ,  2 ,  9 ,  0 ],
      [ 2 ,  5 ,  8 ,  7 ,  4 ],
      [ 5 ,  3 ,  7 ,  2 ,  3 ]]
    
    expect(total_sales(table1,'A')).to eq(9)
    expect(total_sales(table1,'A')).to eq(18)
    expect(total_sales(table1,'A')).to eq(12)
    expect(total_sales(table1,'A')).to eq('Product not found')
    
    expect(total_sales(table2,'A')).to eq('Product not found')
    expect(total_sales(table2,'W')).to eq(7)
    expect(total_sales(table2,'Y')).to eq(9)
    expect(total_sales(table2,'Z')).to eq(4)

    expect(total_sales(table3,'A')).to eq('Product not found')
    expect(total_sales(table3,'T')).to eq(16)
    expect(total_sales(table3,'Y')).to eq('Product not found')
    expect(total_sales(table3,'Z')).to eq(25)
  end
end