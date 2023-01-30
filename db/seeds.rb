
categories = ["cerveza", "vino", "cocktail", "espumoso"].map do |name|
  Category.create(name: name)
end

if Cocktail.count.zero?
  10.times do
    c = Cocktail.create(
      name: Faker::Coffee.blend_name,
      price: Faker::Commerce.price,
      recipe: Faker::Food.description,
      ingredients: Faker::Food.ingredient,
      category: categories.sample
    )
    c.photo.attach(
      io:  File.open(File.join(Rails.root,'app/assets/images/default_cocktail.jpg')),
      filename: 'default_cocktail.jpg'
    )
  end
end
