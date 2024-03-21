import 'package:flutter/material.dart';
import 'package:recipe_app/recipe_detail.dart';
import 'recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);
  
  // Membuat warna putih sebagai MaterialColor
  static const MaterialColor white = MaterialColor(
    0xFFFFFFFF, 
    <int, Color>{ // Kunci dan nilai dalam bentuk map
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe calculator', 
      theme: ThemeData(
        primarySwatch: white, // Menggunakan warna putih sebagai warna utama
      ),
      home: const MyHomePage(title: 'Recipe Calculator'), 
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title; // Perbaiki penamaan variabel title

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { 
  @override
  Widget build(BuildContext context) {
    // Implementasi tampilan halaman beranda
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), 
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length, 
          itemBuilder: (BuildContext context, int index) { 
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RecipeDetail(recipe: Recipe.samples[index]);
                    },
                  ),
                );
              },
              child: buildRecipeCard(Recipe.samples[index]),
            );
          },
        ),
      ),
    );
  }
}

Widget buildRecipeCard(Recipe recipe) { 
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder( 
      borderRadius: BorderRadius.circular(10.0),
    ), 
    child: Padding( 
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.asset(recipe.imageUrl), // Menampilkan gambar dari asset
          const SizedBox(height: 14.0), // Atur tinggi kotak kosong
          Text(
            recipe.label,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palatino',
            ),
          ),
        ],
      ),
    ),
  );
}
