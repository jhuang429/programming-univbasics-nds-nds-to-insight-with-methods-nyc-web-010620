require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

pp directors_database

def directors_totals(nds)
  result = {
  }
  director_count = 0
  while director_count < nds.length do
    director = nds[director_count][:name]
    result[director] = 0
    movie_count = 0
    while movie_count < nds[director_count][:movies].length do
        result[director] += nds[director_count][:movies][movie_count][:worldwide_gross]
      movie_count += 1
    end
    director_count += 1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  puts director_data[:movies]
end
