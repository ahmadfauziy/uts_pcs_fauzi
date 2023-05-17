import 'package:flutter/material.dart';

class LayananScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layanan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildMenuButton(
              context: context,
              title: 'MOBIL AVANZA',
              icon: Icons.car_repair,
              routeName: '/mobil-avanza',
            ),
            SizedBox(height: 16.0),
            _buildMenuButton(
              context: context,
              title: 'MOBIL SEDAN',
              icon: Icons.car_repair,
              routeName: '/mobil-sedan',
            ),
            SizedBox(height: 16.0),
            _buildMenuButton(
              context: context,
              title: 'Mobil SUV',
              icon: Icons.car_repair,
              routeName: '/Mobil-SUV',
            ),
            SizedBox(height: 16.0),
            _buildMenuButton(
              context: context,
              title: 'Mobil-Sport',
              icon: Icons.car_repair,
              routeName: '/Mobil-Sport',
            ),
  
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton({
    required BuildContext context,
    required String title,
    required IconData icon,
    required String routeName,
  }) {
    return ElevatedButton.icon(
  onPressed: () {
    Navigator.pushNamed(context, routeName);
  },
  icon: Icon(icon),
  label: Text(
    title,
    style: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  style: ElevatedButton.styleFrom(
    primary: Colors.transparent, // Ubah warna latar belakang menjadi transparan
    onPrimary: Theme.of(context).primaryColor,
    elevation: 3.0,
    minimumSize: Size(double.infinity, 64.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
    // Tambahkan dekorasi latar belakang dengan gambar
    // Anda dapat menggunakan BoxDecoration dengan BoxDecorationImage dan AssetImage untuk menggunakan gambar lokal
    // atau NetworkImage untuk menggunakan gambar dari internet
    // Misalnya:
    // decoration: BoxDecoration(
    //   image: DecorationImage(
    //     image: AssetImage('assets/images/background_image.png'),
    //     fit: BoxFit.cover,
    //   ),
    // ),
  ),
);

  }
}


