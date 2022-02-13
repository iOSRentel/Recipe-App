//
//  RecipeModel.swift
//  Recipe App
//
//  Created by Boris Zinovyev on 28.01.2022.


import Foundation

// Так было в начале, потом на 39:19 добавили CaseInterable
// enum Category: String {

enum Category: String, CaseIterable, Identifiable {
// Свойство для категорий
    var id: String {self.rawValue}

// Обычный вид, как было сначала видео
    case breakfasst = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case side = "Side"
    case desert = "Desert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingridients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(name: "Creamy Carrot Soup",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98892/Creamy-Carrot-Soup-for-Wordpress-1366x566-c.jpg",
               description: "This bold-hued soup is perfectly sweet and seriously comforting. Peeling the red bell pepper helps make this carrot soup extra silky. Dress it up with a drizzle of rich cashew cream, pomegranate seeds, and chopped fresh parsley for a festive fall presentation. ",
               ingridients: "¼ cup cashews\n1 medium onion, cut into ½-inch dice (2 cups)\n1½ pounds carrots, cut into ½-inch dice (3½ cups)\n1 red bell pepper, peeled and cut into ½-inch dice (1 cup)\n1 sprig fresh rosemary\n1 sprig fresh thyme\n1 large fresh sage leaf\n4 cloves garlic, minced\n1 tablespoon lemon juice\nSea salt and freshly ground black pepper or cayenne pepper, to taste\n½ cup fresh pomegranate seeds\n2 tablespoons finely chopped fresh parsley",
               directions: "In a small bowl, cover the cashews with ½ cup hot water; let soak 20 minutes.\nTransfer cashews and remaining liquid to a blender; blend until smooth and creamy. Set aside.\nIn a saucepan, combine onion, carrots, bell pepper, rosemary, thyme, sage, and garlic. Add ½ cup water and sauté over medium heat for 15 to 20 minutes, or until carrots are tender.\nRemove pan from heat. Let vegetables cool for 10 minutes; then remove rosemary sprigs and thyme leaf.\nTransfer sauteed vegetables to a blender, and puree to a smooth paste. Return pureed vegetables to saucepan and add 3 cups water and 1 tablespoon lemon juice. Season with salt and pepper. Bring soup to boiling.\nTo serve, place soup in individual bowls, drizzle with cashew cream, and garnish with pomegranate seeds and parsley",
               category: "Soup",
               datePublished: "2019-11-11",
               url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"),
        
        Recipe(name: "Kale, Apple and quinoa Salad",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98341/Kale-Apple-Quinoa-Salad-wordpress-1366x566-c.jpg",
               description: "Each bite of this colorful salad is filled with the flavors of favorite fall ingredients such as apples, butternut squash, and pumpkin seeds. For optimum freshness and texture, wait to add the dressing until just before serving.\nNote that this recipe calls for cooked quinoa, so have that ready to go: For 1½ cups cooked quinoa, rinse and drain ½ cup quinoa; cook according to package directions; and drain if needed. Check out our Grains Cooking Guide for more tips on prepping grains like a pro.",
               ingridients: "2 cups ¾-inch pieces peeled butternut squash\n¼ cup pumpkin seeds\n¼ teaspoon ground cinnamon\n1 lemon\n2 tablespoons pure maple syrup\n1 tablespoon Dijon mustard\n3 cups stemmed and chopped kale\n1½ cups cooked quinoa\n1 cup chopped apple\n½ cup sliced green onions\nSea salt and freshly ground black pepper, to taste",
               directions: "Preheat oven to 400°F. Line a 15×10-inch baking pan with parchment paper or a silicone baking mat. Arrange squash in the prepared baking pan. Roast 20 to 25 minutes or until squash is tender, brushing lightly with water if squash starts to look dry. Cool slightly on a wire rack.\nMeanwhile, in a small bowl toss together pumpkin seeds and ½ teaspoon water; sprinkle with cinnamon. Place pumpkin seeds in a small, shallow baking pan. Roast 5 minutes or until lightly toasted; cool.\nFor dressing, remove 1 teaspoon zest and squeeze 2 tablespoons juice from lemon. In a small bowl whisk together lemon zest and juice, maple syrup, and mustard.\nIn a large bowl combine kale, quinoa, apple, green onions, and roasted squash. Add dressing; toss to coat. Season with salt and pepper. Top with pumpkin seeds.",
               category: "Salad",
               datePublished: "2019-10-22",
               url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/kale-apple-and-quinoa-salad/"),
        
        Recipe(name: "Kale Bruschetta",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/25202/Kale-Bruschetta-WP-1366x566-c.jpg",
               description: "We adore this as an appetizer, and so does everyone else. It is always the first empty platter at our holiday party. No one knows it is plant-based; they just know it is so yummy.",
               ingridients: "1 bunch kale\n1 loaf fresh 100% whole-grain bread, sliced\n½ cup Cannellini Bean Sauce\n1 cup grape tomatoes, halved\nbalsamic glaze",
               directions: "Place the kale leaves in a large pot of boiling water. Cover and cook until tender, about 5 minutes. Drain in a colander, then squeeze out any extra liquid with your hands (you don’t want soggy bread).\nToast 8 pieces of bread, and place them on a handsome serving platter.\nSpread a tablespoon of the Cannellini Bean Sauce on the toasted bread, then cover with a layer of kale and top with a scattering of grape tomatoes.\nDrizzle generously with the balsamic glaze, and grab one for yourself before they all disappear.",
               category: "Appetizer",
               datePublished: "2015-06-28",
               url: "https://www.forksoverknives.com/recipes/vegan-snacks-appetizers/kale-bruschetta/"),
        
        Recipe(name: "Vegetable Pot Pie",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/58239/Festive-Vegetable-Pot-Pie-1-1366x566-c.jpg",
               description: "This vegan pot pie may take some time to bake, but the flaky crust and the well-spiced filling makes it totally worth the effort.\nThe gluten-free crust is made with almond flour and mashed potatoes, and the savory vegetable filling is fragrant with warming spices including cinnamon, nutmeg, cloves, and allspice.",
               ingridients: "2 large potatoes (about 1½ pounds), cut into large pieces\n1½ cups gluten-free oat flour, plus more for dusting\n¼ cup almond flour\n1 tablespoon ground golden flaxseed\n1 tablespoon fresh rosemary (or ½ tablespoon dried)\n½ teaspoon sea salt\n1 teaspoon baking powder",
               directions: "1 medium onion, cut into ¼-inch dice (2 cups)/n8 ounces button or cremini mushrooms, cut into ¼-inch dice (about 3 cups)/n1 tablespoon fresh garlic, minced (6 cloves)/n1 (15-ounce) can diced tomatoes (1½ cups)/n¼ teaspoon ground allspice/n¼ teaspoon ground cinnamon/n¼ teaspoon ground nutmeg/n⅛ teaspoon ground black pepper, plus more to taste/n⅛ teaspoon ground cloves/n4 cups frozen vegetable medley (20 ounces)/n¼ cup nutritional yeast/n2 tablespoons gluten-free oat flour/n2 tablespoons lemon juice/nSea salt",
               category: "Main",
               datePublished: "2019-11-05",
               url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/festive-vegetable-pot-pie/"),
        
        Recipe(name: "Red Lentil Loaf with Smoky Tomato Sauce Recipe",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/85949/Red-Lentil-Loaf-1366x566-c.jpg",
               description: "Infinitely healthier than meat-based meatloaf and just as delicious, this savory vegan meatloaf recipe makes a welcome meal on a chilly night. Try it in next-day sandwiches, too.\nThe smoky-sweet sauce, made with taco seasoning, smoked paprika, mustard, and Date Paste, comes together in just 10 minutes.",
               ingridients: "2 medium onions, chopped (2 cups)\n1 cup red lentils, rinsed and drained\n2 fresh poblano chile peppers, seeded and chopped (1 cup)\n3 cloves garlic, minced\n1½ teaspoons chopped fresh Mexican oregano\n2 cups cooked short grain brown rice\n¼ cup cornmeal\n¼ cup finely chopped fresh cilantro\n2 tablespoons lime juice\n1 teaspoon sea salt\n1 14.5-oz. can fire-roasted tomatoes, undrained\n¼ cup Date Paste\n1 tablespoon smoked paprika\n1 teaspoon taco seasoning\n½ teaspoon yellow mustard",
               directions: "Preheat oven to 375°F. Line a 9×5-inch loaf pan with parchment paper.\nIn a skillet combine onions, lentils, poblanos, garlic, and oregano. Stir in 1½ cups water. Bring to boiling; reduce heat. Simmer, covered, 20 minutes or until lentils are tender and water is absorbed, stirring occasionally. Stir in rice, cornmeal, cilantro, lime juice, and salt. Lightly pat mixture into the prepared loaf pan; flatten top.\nFor sauce, in a blender combine tomatoes, date paste, paprika, taco seasoning, mustard, and ½ cup water. Cover and blend until smooth. Transfer to a saucepan. Bring to boiling; reduce heat. Simmer, uncovered, 10 minutes or until slightly thick.\nSpoon ¾ cup of the sauce over loaf. Bake 30 to 40 minutes or until sauce looks dark and dry. Cool on a wire rack 15 minutes. Slice loaf and serve with the remaining sauce.",
               category: "Main",
               datePublished: "2019-03-19",
               url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/red-lentil-loaf-recipe-smoky-tomato-sauce/"),
        
        Recipe(name: "Roasted Root Vegetable Medley",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/158614/Roasted-Root-Vegetable-Medley-wordpress-1366x566-c.jpg",
               description: "This simple side dish celebrates root vegetables in all their colorful, flavorful glory. The key to evenly roasting firmer veggies, such as carrots and potatoes, without adding fat is to steam them first before mixing them with the soft vegetables. Serve this vibrant recipe at your Thanksgiving feast, or enjoy it as a side with a warm bowl of soup.",
               ingridients: "4 assorted-color carrots, peeled and cut into 3-inch pieces\n6 fingerling potatoes, halved if large\n2 small parsnips, peeled, halved crosswise, and quartered lengthwise\n1 turnip, peeled and cut into sixths\n1 rutabaga, peeled and cut into thick wedges\n1 medium beet, peeled and cut into 1-inch wedges\n3 tablespoons balsamic vinegar\n2 tablespoons lemon juice\n2 tablespoons pure maple syrup\n2 tablespoons arrowroot powder\n1 teaspoon dried rosemary\n10 cloves garlic, minced\n1 fennel bulb, fronds reserved for garnish and bulb cut into 1-inch-thick wedges\n1 cup pearl onions or 2 small yellow onions cut into 1-inch-thick wedges\n1 small head celeriac, peeled and cut into large wedges\n6 large white or cremini mushrooms, quartered\n¼ teaspoon sea salt\n¼ teaspoon freshly ground black pepper",
               directions: "Preheat oven to 375°F. Working in batches if necessary, place the first six ingredients (through beet) in a steamer basket in a large saucepan. Add water to saucepan to just below basket. Bring to boiling. Steam, covered, 5 to 7 minutes or until vegetables are just tender.\nIn a large bowl whisk together the next six ingredients (through garlic). Add steamed vegetables, fennel, onions, celeriac, and mushrooms. Toss to coat.\nIn a large rimmed baking sheet spread vegetables in a single layer. Roast 15 minutes. Remove from oven and carefully stir. Roast 10 to 15 minutes more or until vegetables are tender and lightly browned.\nSeason with salt and pepper. Sprinkle with chopped reserved fennel fronds. Serve warm.",
               category: "Side",
               datePublished: "2021-10-05",
               url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/roasted-root-vegetable-medley/"),

        Recipe(name: "Raspberry Truffle Brownies",
               image: "https://www.forksoverknives.com/wp-content/uploads/Chewy-Lemon-Oatmeal-Cookies-300kb.jpg",
               description: "These amazing plant-based and vegan desserts are so good for holidays and celebratory occasions. Bring one of these along to a special celebration or a family meal and everyone will thank you!",
               ingridients: "2 ounces unsweetened chocolate (non-dairy)\n1 cup unsweetened plant-based milk\n1 teaspoon apple cider vinegar\n⅔ cup dry sweetener (such as sucanat, date sugar and maple sugar)\n¼ cup unsweetened applesauce\n1 teaspoon pure vanilla extract\n1 cup whole wheat pastry flour, or spelt flour\n⅓ cup cocoa powder, either Dutch-processed or regular unsweetened\n¾ teaspoon baking soda\n½ teaspoon baking powder\n¼ teaspoon salt\n1 batch Fudgy Chocolate Frosting",
               directions: "Preheat the oven to 350° F. Line a 12-cup muffin pan with silicone liners or have ready a nonstick or silicone muffin pan.\nTo melt the chocolate, use a double boiler or simply take a small sauce pan and fill half way with water. On top of that place a small sauté pan. Fill the sauté pan with chocolate and bring the water to a boil. Use a rubber spatula to mix the chocolate as it melts. Once melted, remove from heat and let cool for 5 more minutes, stirring occasionally. Set aside. (Alternatively, you can also melt the chocolate in a small bowl in the microwave.)\nIn a large bowl, whisk together the plant-based milk and vinegar. Let it sit for a few minutes, until curdled. Stir in the dry sweetener, applesauce, vanilla, and melted chocolate.\nIn a separate bowl, sift together the flour, cocoa powder, baking soda, baking powder, and salt. Add the mixture to the wet ingredients, one half at a time, and beat until no large lumps remain.\nScoop the batter into the prepared pan, filling each cup three-quarters full. Bake for 18 to 20 minutes, or until a toothpick inserted into the center comes out clean.\nRemove the pan from the oven and let the cupcakes cool for at least 20 minutes, then carefully run a knife around the edges of each cupcake to remove. The cupcakes should be completely cool before frosting with the Fudgy Chocolate Frosting",
               category: "Desert",
               datePublished: "2014-02-10",
               url: "https://www.forksoverknives.com/recipes/vegan-desserts/double-chocolate-cupcakes/")
    ]
}
