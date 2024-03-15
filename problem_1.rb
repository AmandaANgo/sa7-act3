
# SA 7-Act 3 - CSV parser

# Implement a simple CSV (Comma-Separated Values) parser that reads data from a CSV file and transforms it into an array of hashes,
# with each hash representing a row of the CSV.

require 'csv'

# first row is the header containing column names
    # headers: true
# each person has 1 line after the header
# Convert the line into an array of hashes
    # where each hash represents a row of data with keys as column names and values as row values

    CSV.foreach(("data.csv"), headers: true, col_sep: ",") do |line|
  person = {}
  line.each{|i, v| person[i] = v}
  puts person
end