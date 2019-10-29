require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  result = {}
  name_index = 0
  while name_index < nds.length do
    current_director_name = nds[name_index][:name]
    current_director_movies = nds[name_index]
    result[current_director_name] = gross_for_director(current_director_movies)
    name_index += 1
  end
  result
end


def gross_for_director(director_data)
  movie_index = 0
  director_gross = 0
  while movie_index < director_data[:movies].length do
    director_gross += director_data[:movies][movie_index][:worldwide_gross]
    movie_index +=1
  end
  director_gross
end
