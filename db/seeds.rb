# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Recipe.create(name: "Vanilla Cake", preparation_time: "35 minutes", cooking_time: "25 minutes",
description: "This vanilla cake batter is strong enough for shaped cakes,
tiered cakes (see the slight variation in my homemade wedding cake recipe), and holds up beautifully under fondant.
Use this batter for vanilla cupcakes, Bundt cake, or even piñata cake.
It\'s classy enough for a wedding celebration, but unassuming enough for a big family dinner.",
public: false, user: 1)
Recipe.create(name: "Barbeque Chicken", preparation_time: "2 hours", cooking_time: "3 hour",description:
"Chicken thighs are baked in a homemade BBQ sauce made with ingredients you probably already have on hand,
such as ketchup and brown sugar.", user: 1)
# Recipe.create(name: "Recipe 1", preparation_time: "2 hours", cooking_time: "3 hour",description: "Test", public: false, user: 1)
# Recipe.create(name: "Recipe 1", preparation_time: "2 hours", cooking_time: "3 hour",description: "Test", public: false, user: 1)
# Recipe.create(name: "Recipe 1", preparation_time: "2 hours", cooking_time: "3 hour",description: "Test", public: false, user: 1)
