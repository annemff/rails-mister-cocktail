require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
data = open(url).read
drinks = JSON.parse(data)

drinks.each do |_drink, ingredients| # returns array of hashes
  ingredients.each do |ingredient| # loop through the hash and put the value (ingredient) in the name: field of the Ingredient database
    Ingredient.create(name: ingredient['strIngredient1'])
  end
end
