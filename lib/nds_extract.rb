require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  results = {}
  director_num = 0
  while director_num < nds.length do
    movies_num = 0
    director = nds[director][:name]
    results[director] = 0
    while movies_num < nds[director_num][:movies].length do
      results[director] += nds[director_num][:movies][movies_num][:worldwide_gross]
    end
  end

  results
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
end
