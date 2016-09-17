#
require 'pry'

input_file = 'data/people.csv'

File.open(input_file) do |file|
  file.each_with_index do |line, i|
    puts "#{i}: #{line}"
  end
end

# output in pry looks like this:
# 1737: Wong,Flora,f,1947-07-04
# 1738: Bentley,Rae,f,1955-09-15
# 1739: Dawson,Iona,f,1996-08-03
# 1740: Butts,Barbara,f,1941-07-23
# 1741: Bender,Deandre,m,1951-03-21
# 1742: Franco,Diana,f,1988-07-12
# 1743: Simms,Verda,f,1944-06-20
# 1744: Bruce,Hung,m,1976-07-29
# 1745: Howard,Lauri,f,1951-10-31
# 1746: Pierson,Wilhelmina,f,2006-12-07
# 1747: Goins,Parker,m,1950-09-03
# 1748: Pollard,Carmela,f,1955-02-23
# 1749: Stout,Maryanne,f,1981-06-17
