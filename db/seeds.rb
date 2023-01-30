require 'faker'

if Cocktail.count.zero?
  10.times do
    c = Cocktail.create(
      name: Faker::Coffee.blend_name,
      category: ["cerveza", "vino", "cocktail", "espumoso"].sample,
      price: Faker::Commerce.price,
      recipe: Faker::Food.description,
      ingredients: Faker::Food.ingredient
    )
    c.photo.attach(
      io:  File.open(File.join(Rails.root,'app/assets/images/photo.jpg')),
      filename: 'photo.jpg'
    )
  end
end
