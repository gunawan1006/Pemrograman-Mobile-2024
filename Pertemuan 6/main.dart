import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Wisata Rumah Adat Mamuju"),
          backgroundColor: Colors.brown,
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // IMAGE SECTION
              Image.asset(
                "image1.jpg", //
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),

              // TITLE SECTION
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Rumah Adat Mamuju",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Mamuju, Sulawesi Barat",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),

                    Row(
                      children: const [
                        Icon(Icons.star, color: Colors.amber),
                        SizedBox(width: 5),
                        Text("4.6"),
                      ],
                    ),
                  ],
                ),
              ),

              // BUTTON SECTION
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [

                  Column(
                    children: [
                      Icon(Icons.call, color: Colors.blue),
                      SizedBox(height: 5),
                      Text("CALL"),
                    ],
                  ),

                  Column(
                    children: [
                      Icon(Icons.near_me, color: Colors.blue),
                      SizedBox(height: 5),
                      Text("ROUTE"),
                    ],
                  ),

                  Column(
                    children: [
                      Icon(Icons.share, color: Colors.blue),
                      SizedBox(height: 5),
                      Text("SHARE"),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // DESCRIPTION
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "Rumah adat Mamuju, atau Boyang, adalah rumah panggung khas suku Mandar di Sulawesi Barat. Rumah ini terbuat dari kayu dan memiliki atap berbentuk segitiga, mencerminkan kearifan lokal dalam menghadapi iklim tropis. Struktur panggungnya melindungi dari banjir dan binatang buas, serta menciptakan sirkulasi udara yang baik. Setiap bagian rumah melambangkan nilai budaya, seperti tiang yang melambangkan keteguhan serta atap yang mencerminkan hubungan dengan Sang Pencipta. Rumah adat Mamuju tetap dijaga sebagai warisan budaya yang kaya akan sejarah dan tradisi",
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}