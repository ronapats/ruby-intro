# DON'T CHANGE THIS CODE
# ----------------------
require "net/http"
require "json"
url = "https://api.coindesk.com/v1/bpi/currentprice.json"
uri = URI(url)
response = Net::HTTP.get(uri)
bitcoin_data = JSON.parse(response)
# ----------------------

# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 4-hashes.rb

# EXERCISE
# Ask the user for the current amount of Bitcoin that they own.
# Using the Ruby hash `bitcoin_data`, display a summary of
# Bitcoin data for the user. Something like the output below.
# Sample output:
# 1 Bitcoin is valued at $41405.1046 USD.
# Your Bitcoin is worth $62107.6569.

# 1. Get input from a user using gets.chomp.
puts "How much bitcoin do you have?"
bitcoin = gets.chomp

# 2. The value will be a string, so you'll want to convert it to a Float.
bitcoin = bitcoin.to_f

# Ask currency
puts "Which currrency do you want? (USD,GBP,EUR)"
    currency = gets.chomp

# 3. store the rate in USD/GBP/EUR of bitcoin
if currency == "USD"
    bitcoin_rate = bitcoin_data["bpi"]["USD"]["rate_float"]
    value = bitcoin_rate * bitcoin
    puts "1 Bitcoin is valued at USD#{bitcoin_rate}."
    puts "Your Bitcoin is worth USD#{value}."
elsif currency == "GBP"
    bitcoin_rate = bitcoin_data["bpi"]["GBP"]["rate_float"]
    value = bitcoin_rate * bitcoin
    puts "1 Bitcoin is valued at GBP#{bitcoin_rate}."
    puts "Your Bitcoin is worth GBP#{value}."
elsif currency == "EUR"
    bitcoin_rate = bitcoin_data["bpi"]["EUR"]["rate_float"]
    value = bitcoin_rate * bitcoin
    puts "1 Bitcoin is valued at EUR#{bitcoin_rate}."
    puts "Your Bitcoin is worth EUR#{value}."
else 
    puts "N/A, type currency again in USD/GBP/EUR"
    currency = gets.chomp
end