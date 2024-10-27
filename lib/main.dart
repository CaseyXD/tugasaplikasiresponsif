import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Web App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Sidebar
        Expanded(
          flex: 1,
          child: Container(
            color: const Color.fromARGB(255, 37, 2, 53),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Gambar Profil dari Assets
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/kc.jpeg'),
                ),
                SizedBox(height: 20),
                Text(
                  'Krishna Kanhaiya',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Divider(color: Colors.white54),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.white),
                  title: Text('Halaman Utama', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.info, color: Colors.white),
                  title: Text('Tentang Saya', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.contact_page, color: Colors.white),
                  title: Text('Kontak', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
        
        // Content Area
        Expanded(
          flex: 4,
          child: Column(
            children: [
              // Header
              Container(
                padding: EdgeInsets.all(16.0),
                color: const Color.fromARGB(255, 221, 136, 24),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Biodata Saya',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.settings, color: Colors.white),
                  ],
                ),
              ),
              
              // Content
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tentang Saya',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Nama: I Dewa Gede Krishna Kanhaiya Chintamani',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Usia: 21',
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          'Pekerjaan: Mahasiswa',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Deskripsi Singkat:',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Saya adalah mahasiswa Undiknas jurusan teknologi informasi. Konsentrasi yang saya pilih adalah UI/UX dengan fokus mengembangkan game psikologi sebagai skripsi akhir saya. Menghadapi rintangan itu penting untuk mencapai tujuan terbesar dalam hidup. Kerja keras dan semangat merupakan cara untuk menghadapi rintangan.',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Hobi',
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '- Membaca\n- Menulis\n- Memasak\n- Gaming',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
