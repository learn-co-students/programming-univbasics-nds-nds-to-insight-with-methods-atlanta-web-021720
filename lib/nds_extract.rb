$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
movieNum = 0
totalGross = 0
while movieNum < director_data[:movies].length do
  totalGross += director_data[:movies][movieNum][:worldwide_gross]
  movieNum += 1
end
totalGross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
  numDirector = 0
  while numDirector < nds.length do
    currentDirector = nds[numDirector][:name]
    result[currentDirector] = gross_for_director(nds[numDirector])
    numDirector += 1
  end
  result
end
