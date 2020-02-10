$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  m_index = 0
  director_data = 0
  gross = 0
  while m_index < directors_database[director_data][:movies].length do
    gross += directors_database[director_data][:movies][m_index][:worldwide_gross]
    m_index += 1
end
gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  d_index = 0
  while d_index < nds.length do
  d_totals = 0
  result[nds[d_index][:name]]
  m_index = 0
  while m_index < nds[d_index][:movies].length do
    d_totals += nds[d_index][:movies][m_index][:worldwide_gross]
    m_index += 1
  #nil
  direct_name = nds[d_index][:name]
  result[direct_name] = d_totals
end
d_index += 1
end

result

end
=begin d_index = 0
while d_index < directors_database.length do
  d_totals = 0
  result[directors_database[d_index][:name]]
  m_index = 0
  while m_index < directors_database[d_index][:movies].length do
    #puts directors_database[d_index][:movies][m_index][:worldwide_gross]
    #m_index += 1
    d_totals += directors_database[d_index][:movies][m_index][:worldwide_gross]
    m_index += 1
  end
direct_name = directors_database[d_index][:name]
result[direct_name] = d_totals
#puts d_totals #+= directors_database[d_index][:movies][m_index][:worldwide_gross]  #d_totals += directors_database[d_index][:movies][m_index][:worldwide_gross]
d_index += 1
end
result
=end
