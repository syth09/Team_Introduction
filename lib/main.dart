import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Giới thiệu bản thân',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Giới thiệu bản thân"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Avatar
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                'https://i.pravatar.cc/300', // ảnh mẫu
              ),
            ),
            const SizedBox(height: 20),

            // Tên
            const Text(
              "Lê Phi Hùngg",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // Nghề nghiệp
            const Text(
              "Sinh viên Công nghệ thông tin",
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 20),

            // Giới thiệu
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Xin chào!\n"
                    "Họ và tên: Lê Phi Hùng\n"
                    "Mã sinh viên: 20220838\n"
                    "Lớp: DCCNTT13.10.5",                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}