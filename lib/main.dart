import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeri Foto',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeri Foto'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Image.network(
              'https://picsum.photos/id/88/300/200',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Teks "JALAN BARCELONA" yang tebal
              Text(
                'JALAN DI BARCELONA',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              // Garis samar
              Divider(
                color: Colors.grey,
              ),

              Row(
                children: [

                  Icon(
                    Icons.place,
                    color: Colors.red,
                  ),

                  Text('Lokasi : Barcelona, Spanyol', style: TextStyle(color: Colors.black)),
                ],
              ),

              Divider(
                color: Colors.grey,
              ),
            ],
          ),

          Row(
            children: [

              Icon(
                Icons.calendar_month,
                color: Colors.blue,
              ),

              Text('Publikasi : 23 Agustus 2023', style: TextStyle(color: Colors.black)),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'DESKRIPSI:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
