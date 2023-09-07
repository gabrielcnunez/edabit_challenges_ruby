# Tidy Title and Author Strings
# You have an array of strings, each consisting of a book title 
# and an author's name.

# To illustrate:

# [
#   ["   Death of a Salesman - Arthur Miller    "],
#   ["   Macbeth - William Shakespeare    "],
#   ["    A Separate Peace - John Knowles     "],
#   [" Lord of the Flies - William Golding"],
#   ["A Tale of Two Cities - Charles Dickens"]
# ]
# Create a function that takes an array like the one above and 
# transforms it into the same format as the one below:

# [
#   ["Death of a Salesman", "Arthur Miller"],
#   ["Macbeth", "William Shakespeare"],
#   ["A Separate Peace", "John Knowles"],
#   ["Lord of the Flies", "William Golding"],
#   ["A Tale of Two Cities", "Charles Dickens"]
# ]

# Examples
# tidy_books([
#   ["     The Catcher in the Rye - J. D. Salinger    "],
#   ["    Brave New World - Aldous Huxley   "],
#   ["    Of Mice and Men - John Steinbeck    "]
# ]) ➞ [
#   ["The Catcher in the Rye", "J. D. Salinger"],
#   ["Brave New World", "Aldous Huley"],
#   ["Of Mice and Men", "John Steinbeck"]
# ]

# Notes
# Some of these entries have excess white space. Remove this white space in your final output.

def tidy_books(arr)
  arr.map do |book_info|
    title_auth = book_info[0].strip.split('-')

    [title_auth[0].rstrip, title_auth[1].lstrip]
  end
end