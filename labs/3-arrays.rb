# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 3-arrays.rb

# EXERCISE
# Create a "shared" shopping list with a friend
# Create two data structures - one for your list of stuff, and one
# for your friend, e.g. you want milk, eggs, and bacon, and
# your friend wants beer, cookies, and apples.
# Programmatically combine the two arrays into a single list,
# sort the result (alphabetically), and write it to the screen.
# If the two lists contain the same item, only show it once!
# Lastly, display each item in the list prepended with "buy ".

rons_list = ["milk","eggs","bacons"]
kans_list = ["beer", "cookies", "apples", "milk"]
combined_list = rons_list + kans_list
# puts "-combined_list-"
# puts combined_list
sorted_list = combined_list.sort
# puts "-sorted_list-"
# puts sorted_list
deduplicated_list = sorted_list.uniq
# puts "-deduplicated_list-"
# puts deduplicated_list
#can use this deduped_sorted_list = combined_list.sort.uniq
puts "Buy #{deduplicated_list[0]}, #{deduplicated_list[1]}, #{deduplicated_list[2]}, #{deduplicated_list[3]}, #{deduplicated_list[4]}, #{deduplicated_list[5]}"
# HINTS
# Learn to read the documentation!
# https://ruby-doc.org/core-2.7.0/Array.html