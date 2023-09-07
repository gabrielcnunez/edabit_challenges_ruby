require 'rspec'
require './lib/tidy_title_author_strings'

RSpec.describe 'Tidy Title and Author Strings' do
  it 'takes array of strings and reformats them' do
    expect(tidy_books([
      ["     The Catcher in the Rye - J. D. Salinger    "], 
      ["    Brave New World - Aldous Huxley   "], 
      ["    Of Mice and Men - John Steinbeck    "]])).to eq(
      [["The Catcher in the Rye", "J. D. Salinger"], 
      ["Brave New World", "Aldous Huxley"], 
      ["Of Mice and Men", "John Steinbeck"]
    ])

    expect(tidy_books([
      ["     The Grapes of Wrath - John Steinbeck    "], 
      ["    Great Expectations - Charles Dickens   "], 
      ["    The Scarlet Letter - Nathaniel Hawthorne    "]])).to eq(
      [["The Grapes of Wrath", "John Steinbeck"], 
      ["Great Expectations", "Charles Dickens"], 
      ["The Scarlet Letter", "Nathaniel Hawthorne"]
    ])
  end
end