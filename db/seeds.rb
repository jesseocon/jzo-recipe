# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
recipe_default_qty = 15
recipe_description = "Sriracha, a tangy combination of chiles, vinegar, sugar"\
                     " and garlic, gets its name from the town of Si Racha, Thailand"\
                     " The most common brand in the United States, Huy Fong, sometimes called"\
                     " rooster sauce, is made in Rosemead, Calif"

recipe_ingredients = "Tempura Green Beans\n"\
                     "1 dried shiitake mushroom, optional\n"\
                     "1 cup cake flour\n"\
                     "⅓ cup white rice flour\n"\
                     "¼ tsp. baking soda\n"\
                     "1 ¼ cups cold club soda\n"\
                     "1 egg yolk\n"\
                     "3 cups vegetable oil, for frying\n"\
                     "1 lb. thin green beans or haricots verts, trimmed\n"\
                     "Sriracha Aïoli\n"\
                     "½ cup low-fat mayonnaise\n"\
                     "2 Tbs. sriracha\n"\
                     "2 tsp. vegetarian ponzu\n"

recipe_instructions = "1. To make Tempura Green Beans: Grind shiitake mushroom in spice grinder, "\
                      "or grate with Microplane zester. Transfer to medium bowl, and place over larger bowl of ice.\n"\
                      "2. Whisk shiitake powder with cake flour, rice flour, and baking soda in bowl. "\
                      "Stir together club soda and egg yolk in small cup. Whisk egg mixture "\
                      "into flour mixture until barely combined—lumps will remain.\n"\
                      "3. Fill medium pot with oil to depth of 11/2 inches. Heat oil over medium heat until 350°–360°F. "\
                      "Coat 7 to 9 beans in batter. Fry 1 minute, or until golden. "\
                      "Drain on metal rack or paper towels, and repeat with remaining beans.\n"\
                      "4. Meanwhile, to make Sriracha Aïoli: whisk together all "\
                      "ingredients in small bowl. Serve tempura with aïoli."\
 
recipe_default_hash = {
                        name: "Tempura Green Beans",
                        title: 'Tempura Green Beans with Sriracha Aioli',
                        serving_size: 'Serves 6',
                        cook_time: '30 minutes or fewer',
                        description: recipe_description,
                        ingredients: recipe_ingredients,
                        instructions: recipe_instructions,
                        image_url: 'https://www.filepicker.io/api/file/k5DPVQqhQ5Sgt4j6bieA'
                      }
# Create 15 recipe items minus the ones that already exist
recipe_arr = []
iteration_qty = recipe_default_qty - Recipe.all.count
iteration_qty.times { recipe_arr.push(recipe_default_hash) }
recipes = Recipe.create(recipe_arr)
