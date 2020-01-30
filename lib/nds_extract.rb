$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input




def gross_for_director(director_data)

pp director_data


total = 0
i = 0
# pp nds
  while i < director_data[:movies].length do
    total += director_data[:movies][i][:worldwide_gross]
    i += 1
  end
  total
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
result = {}
  director_index = 0
  while director_index < nds.length do
    director = nds[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end

result

end
