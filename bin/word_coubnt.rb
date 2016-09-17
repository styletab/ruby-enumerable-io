require 'pry'

input_file = 'data/people.csv'

File.open(input_file) do |file|
  count = 0
  file.each do |line|
    count += line.split(',').length
  end
end
