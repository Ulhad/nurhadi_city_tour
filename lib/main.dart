import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: Colors.blue, // Atur warna menjadi biru
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("City Tour"), // Atur title appbar
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0), // Bungkus dengan padding
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16.0), // Jarak antar-widget
              // Galeri Gambar
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildImage("https://picsum.photos/id/66/300/200"),
                    buildImage("https://picsum.photos/id/76/300/200"),
                    buildImage("https://picsum.photos/id/86/300/200"),
                  ],
                ),
              ),
              SizedBox(height: 16.0), // Jarak antar-widget
              // Tagline
              Text(
                "Explore, Enjoy, Experience",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0), // Jarak antar-widget
              // Deskripsi
              Text(
                "Explore the charm of our city's hidden gems and embark on a journey to discover the rich cultural heritage, breathtaking landscapes, and unique experiences that await you. From historic landmarks to vibrant markets and serene natural wonders, our city offers a tapestry of experiences that will captivate your senses. Join us in exploring the beauty of our city and create memories that will last a lifetime. Come and visit our city's treasures today.",
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16.0), // Jarak antar-widget
              // Gambar "Blue body of water"
              Image.network(
                "https://picsum.photos/id/66/200/300",
                width: double.infinity, // Lebar gambar selebar layar
                height: 250.0, // Tinggi gambar 250 pixel
                fit: BoxFit.cover,
              ),
              Text(
                "Blue body of water",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
