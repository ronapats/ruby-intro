# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 3-arrays.rb

# Arrays are lists of things
favorite_foods = ["sushi", "salmon", "thai food"]
puts favorite_foods

mixed_array = ["tacos", 3, true]
puts mixed_array

shopping_lists = [["a","b","c"],["d","e"]]
puts shopping_lists

# Accessing the array
puts favorite_foods[0]
puts favorite_foods[3]
puts favorite_foods[-1]

# Add to the array
favorite_foods.append "pizza"
puts favorite_foods

puts shopping_lists [0][1]
puts favorite_foods.count
# There are lots of fun things you can do with arrays:
# https://ruby-doc.org/core-2.7.0/Array.html
