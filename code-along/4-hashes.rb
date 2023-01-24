# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 4-hashes.rb

# Hashes are lists of *key-value pairs*
profile = {
    "name" => "Ron", 
    "location" => "Evanston",
    "timeline" => [
        {"status" => "In class", "time" => "4.00pm"},
        {"status" => "At home", "time" => "6.00pm"}
    ]
}
puts profile

# Accessing data from the hash
puts profile ["name"]
puts profile ["timeline"][1]["status"]
# More Complex Hashes
