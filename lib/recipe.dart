class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<Recipe> samples = [
    Recipe(
      'Spaghetti Carbonara', 
      'assets/carbonara.jpg',
      4,
      [
        Ingredient(100, 'gr', 'pancetta'),
        Ingredient(50, 'gr', 'pecorino cheese'),
        Ingredient(50, 'gr', 'parmesan'),
        Ingredient(3, 'ons','large eggs'),
        Ingredient(2, 'buah', 'plum garlic cloves, peeled and left whole'),
        Ingredient(50, 'gr', 'unsalted butter'),
      ],
    ),
    Recipe(
      'Cromboloni', 
      'assets/cromboloni.jpg',
      2,
      [
        Ingredient(4, 'lembar', 'puff pastry'),
        Ingredient(2,'buah', 'telur kocok'),
        Ingredient(2,'gr', 'Chocolate cair'),
        Ingredient(2, 'gr', 'Krim hazelnut'),
        Ingredient(2, 'gr', 'Tepung untuk taburan'),
        Ingredient(4, 'buah', 'Cetakan ring 10 cm'),
      ],
    ),
    Recipe(
      'Fruit Sando', 
      'assets/fruitsando.jpg',
      8,
      [
        Ingredient(8, 'lembar', 'roti tawar'),
        Ingredient(2, 'buah', 'kiwi kecil, kupas dan potong sesuai selera'),
        Ingredient(8, 'buah', 'stroberi kecil/sedang, potong sesuai selera'),
        Ingredient(1, 'buah', 'mangga, potong sesuai selera'),
        Ingredient(235, 'ml', 'krim kocok kental dingin'),
        Ingredient(1.5, 'sdm', 'gula pasir'),
        Ingredient(0.25, 'sdt', 'ekstrak vanilla'),
      ],
    ),
    Recipe(
      'Mango Sticky Rice', 
      'assets/mango.jpg', 
      2, 
      [
        Ingredient(1.5, 'cups', 'glutinous (sweet) rice'),
        Ingredient(1.33, 'cups', 'well-stirred canned unsweetened coconut milk'),
        Ingredient(0.33, 'cup', 'plus 3 tablespoons sugar'),
        Ingredient(0.25, 'teaspoon', 'salt'),
        Ingredient(1, 'tablespoon', 'sesame seeds, toasted lightly'),
        Ingredient(1, 'large', 'mango, peeled, pitted, and cut into thin slices (at least 24)'),
      ],
    ),
    Recipe(
      'Risol Mayo', 
      'assets/risol.jpg', 
      4, 
      [ 
        Ingredient(250, 'gr', 'tepung terigu'),
        Ingredient(2, 'sdm', 'tepung sagu / tapioka'),
        Ingredient(1, 'bgks', 'dancow bubuk putih'),
        Ingredient(1, 'sdm', 'minyak goreng'),
        Ingredient(1, 'butir', 'telur'),
        Ingredient(0.5, 'sdt', 'garam'),
        Ingredient(500, 'ml', 'air'),
        Ingredient(4, 'buah', 'sosis, iris tipis'),
        Ingredient(3, 'butir', 'telur rebus, potong2'),
        Ingredient(180, 'gr', 'mayonaise'),
        Ingredient(35, 'gr', 'keju cheddar'),
        Ingredient(1, 'sachet', 'Susu Kental Manis'),
      ],
    ),
    Recipe(
      'Sushi', 
      'assets/sushi.jpg', 
      7, 
      [
        Ingredient(1.33, 'cups', 'water'),
        Ingredient(0.67, 'cup', 'uncooked short-grain white rice'),
        Ingredient(3, 'tablespoons', 'rice vinegar'),
        Ingredient(3, 'tablespoons', 'white sugar'),
        Ingredient(1.5, 'teaspoons', 'salt'),
        Ingredient(4, 'sheets', 'nori seaweed sheets'),
        Ingredient(0.5, 'pound', 'imitation crabmeat, flaked'),
        Ingredient(1, 'avocado', 'peeled, pitted, and sliced'),
        Ingredient(0.5, 'cucumber', 'peeled, cut into small strips'),
        Ingredient(2, 'tablespoons', 'pickled ginger'),
      ],
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
