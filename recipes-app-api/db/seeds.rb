# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all
Like.destroy_all
Ingredient.destroy_all
Food.destroy_all

ashley = User.create(name: 'Ashley', diet: 'No Restrictions')
jamie = User.create(name: 'Jamie', diet: 'Lactose Intolerance')
jenna = User.create(name: 'Jenna', diet: 'Gluten Free')
andrew = User.create(name: 'Andrew', diet: 'Vegetarian')
chris = User.create(name: 'Chris', diet: 'Nut Allergy')

# Vegetarian
tomato_eggs = Recipe.create(name: 'Fresh Tomato Eggs in Purgatory with Chickpeas', image: '/Users/ashley/Recipes App/recipes-frontend/assets/images/0919-ba-Eggs-in-Purgatory.jpg', steps: "Chop tomatoes into small pieces and transfer to a small bowl along with all the juices. Mix in ½ tsp. salt.

    Heat ¼ cup oil in a large skillet with a lid over medium-high. Add coriander seeds and cook, stirring, until fragrant and starting to pop, about 1 minute. Add harissa and cook, stirring, until fragrant and darkened in color, about 30 seconds. Add chickpeas and tomatoes and bring to a simmer. Cook, mashing up about half of the chickpeas with a wooden spoon, until sauce is reduced and you’re able to make a divot in the mixture, 8–10 minutes. Season with salt, then use a spoon to make little pockets for the eggs near the sides of the skillet.
    
    Reduce heat to low and gently break eggs into pockets. Cover skillet and cook, rotating pan a few times for even heating, until eggs are set, 7–9 minutes.
    
    Meanwhile, drizzle toasts with oil and rub with garlic halves.
    
    Remove eggs from heat and shower with chives and almonds. Serve with garlic toast.", description: 'Peak-season tomatoes along with chickpeas, toasted almonds, and harissa make for a complete flavor bomb in just one skillet.')
soba_kale = Recipe.create(name: 'Soba Noodles With Crispy Kale', image: '/Users/ashley/Recipes App/recipes-frontend/assets/images/0919-Soba-Noodles.jpg', steps: "", description: 'These soba noodles with crispy kale chips and a nutty tahini-honey-soy dressing are a hearty vegetarian weeknight dinner—or make-ahead lunch.')
    # photos by Chelsea Craig, food stylings by Michelle Gatton

# Nut Allergy
halloumi_pizza = Recipe.create(name: 'Pizza With Cherry Tomatoes, Halloumi, Olives, and Mint Recipe', image: '/Users/ashley/Recipes App/recipes-frontend/assets/images/20150702-halloumi-tomato-olive-mint-pizza-2.jpg', steps: "", description: 'This pizza hits all the right notes, with briny olives and halloumi, fresh sweet cherry tomatoes, mozzarella cheese, and some fresh mint added right at the end.')
    # Sweet cherry tomatoes, briny olives, and halloumi on pizza. [Photograph: J. Kenji López-Alt]
meat_rigatoni = Recipe.create(name: 'Rigatoni with Meat Sauce', image: '/Users/ashley/Recipes App/recipes-frontend/assets/images/rigatoni-with-meat-sauce-recipe-HC-032919.jpg', steps: "", description: 'This is the hearty pasta dish that everyone loves to eat. It gets its stick-to-your-bones, deep, rich flavor from the ground beef cooked in red wine and a double hit of tomatoes.')
    # PHOTO BY MARGE PERRY

# Lactose Intolerance
banh_mi_tacos = Recipe.create(name: 'Bánh Mì Tacos', image: '/Users/ashley/Recipes App/recipes-frontend/assets/images/8ae43457-32d4-4546-9a1d-21d742656aec--2015-0616_banh-mi-soft-tacos_alpha-smoot_105.jpg', steps: "", description: 'Guests will love assembling their own Bánh Mì-style tacos and stuffing them with homemade slaw and spicy Sriracha mayonnaise.')
    # PHOTO BY ALPHA SMOOT
pork_belly_kimchi_stew = Recipe.create(name: 'Kimchi Stew with Pork Belly', image: '/Users/ashley/Recipes App/recipes-frontend/assets/images/1e4fb46e-d2e0-4c46-adfc-8f6a05cb5c3b--2016-0307_kimchi-stew-with-pork-belly-and-tofu_james-ransom-035.jpg', steps: "", description: 'This stew is reason enough to keep a jar of kimchi around.')
    # PHOTO BY JAMES RANSOM

# No Restrictions
skillet_phyllo = Recipe.create(name: 'Skillet Phyllo Pie with Butternut Squash, Kale, and Goat Cheese', image: '/Users/ashley/Recipes App/recipes-frontend/assets/images/skillet-phyllo-pie-with-butternut-squash-kale-and-goat-cheese.jpg', steps: "", description: 'When overlapping the phyllo over the filling in this recipe, work carefully but quickly so the phyllo doesn’t dry out before baking.')
    # ALEX LAU
shrimp_spaghetti_squash = Recipe.create(name: 'Garlic Herb Shrimp And Spaghetti Squash', image: '/Users/ashley/Recipes App/recipes-frontend/assets/images/BFV36769_InstantPotDinners-FB1080x1080.jpg', steps: "", description: '95% Would Make Again')

# Gluten Free
pad_thai = Recipe.create(name: 'Pad Thai', image: '/Users/ashley/Recipes App/recipes-frontend/assets/images/pad-thai-940.jpg', steps: "", description: 'This pad Thai recipe is not the dish from the neighborhood take-out joint.')
    # PEDEN + MUNK
pork_ragu_polenta = Recipe.create(name: 'Pork Ragù over Creamy Polenta', image: '/Users/ashley/Recipes App/recipes-frontend/assets/images/pork-ragu-over-creamy-polenta.jpg', steps: "", description: 'Leftover sauce? Bring a pot of water to boil: It’s pasta night.')
    # MICHAEL GRAYDON + NIKOLE HERRIOTT

bolognese = Recipe.create(name: 'Bolognese', image: 'https://assets.bonappetit.com/photos/5c2f8fe26558e92c8a622671/16:9/w_1280,c_limit/bolognese-1.jpg', steps: "", description: 'It doesn’t take a lot of ingredients (or a lot of money) to make a classic Bolognese recipe. What it does take, though, is patience for the sauce to achieve the ideal authentic texture. You’re going to go low and slow—it’ll take around 3 hours, but most of that cook time is hands-off.')

Like.create(user: andrew, recipe: soba_kale)
Like.create(user: chris, recipe: meat_rigatoni)
Like.create(user: jamie, recipe: banh_mi_tacos)
Like.create(user: ashley, recipe: skillet_phyllo)
Like.create(user: jenna, recipe: pad_thai)

onion = Food.create(name: "Onion")
celery = Food.create(name: "Celery")
carrot = Food.create(name: "Carrot")
evoo = Food.create(name: "Extra-Virgin Olive Oil")
beef = Food.create(name: "Beef")
salt = Food.create(name: "Salt")
pancetta = Food.create(name: "Pancetta")
white_wine = Food.create(name: "White Wine")
tomato_paste = Food.create(name: "Tomato Paste")
bay_leaf = Food.create(name: "Bay Leaf")
nutmeg = Food.create(name: "Nutmeg")
chicken_stock = Food.create(name: "Chicken Stock")
chicken_broth = Food.create(name: "Chicken Broth")
milk = Food.create(name: "Whole Milk")
tagliatelle = Food.create(name: "Tagliatelle")
pappardelle = Food.create(name: "Pappardelle")
rigatoni = Food.create(name: "Rigatoni")
parmesan = Food.create(name: "Parmesan")
almonds = Food.create(name: "Almonds")
tomatoes = Food.create(name: "Tomatoes")
coriander_seeds = Food.create(name: "Coriander Seeds")
harissa_paste = Food.create(name: "Harissa Paste")
chickpeas = Food.create(name: "Chickpeas")
eggs = Food.create(name: "Eggs")
sourdough = Food.create(name: "Sourdough")
garlic = Food.create(name: "Garlic")
chives = Food.create(name: "Chives")

Ingredient.create(recipe: bolognese, food: onion)
Ingredient.create(recipe: bolognese, food: celery)
Ingredient.create(recipe: bolognese, food: carrot)
Ingredient.create(recipe: bolognese, food: evoo)
Ingredient.create(recipe: bolognese, food: beef)
Ingredient.create(recipe: bolognese, food: salt)
Ingredient.create(recipe: bolognese, food: pancetta)
Ingredient.create(recipe: bolognese, food: white_wine)
Ingredient.create(recipe: bolognese, food: tomato_paste)
Ingredient.create(recipe: bolognese, food: bay_leaf)
Ingredient.create(recipe: bolognese, food: nutmeg)
Ingredient.create(recipe: bolognese, food: chicken_stock)
Ingredient.create(recipe: bolognese, food: milk)
Ingredient.create(recipe: bolognese, food: tagliatelle)
Ingredient.create(recipe: bolognese, food: parmesan)
Ingredient.create(recipe: tomato_eggs, food: almonds)
Ingredient.create(recipe: tomato_eggs, food: tomatoes)
Ingredient.create(recipe: tomato_eggs, food: salt)
Ingredient.create(recipe: tomato_eggs, food: evoo)
Ingredient.create(recipe: tomato_eggs, food: coriander_seeds)
Ingredient.create(recipe: tomato_eggs, food: harissa_paste)
Ingredient.create(recipe: tomato_eggs, food: chickpeas)
Ingredient.create(recipe: tomato_eggs, food: eggs)
Ingredient.create(recipe: tomato_eggs, food: sourdough)
Ingredient.create(recipe: tomato_eggs, food: garlic)
Ingredient.create(recipe: tomato_eggs, food: chives)