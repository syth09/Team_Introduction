import 'package:flutter/material.dart';

// Import màn hình chính (TeamScreen)
import 'screens/team_screen.dart';

void main() {
  // Hàm main() là điểm bắt đầu của toàn bộ ứng dụng Flutter
  // runApp() sẽ khởi chạy ứng dụng và hiển thị widget đầu tiên
  runApp(const MyApp());
}

// Đây là lớp gốc (root widget) của toàn bộ ứng dụng
class MyApp extends StatelessWidget {
  // Constructor const để tối ưu performance
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Tiêu đề của ứng dụng
      title: 'ERP J-One Team',

      // Tắt banner "Debug" ở góc trên bên phải
      debugShowCheckedModeBanner: false,

      // Theme sáng
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true, // Sử dụng Material Design 3
      ),

      // Theme tối (Dark Theme) - tự động theo hệ thống
      darkTheme: ThemeData.dark(useMaterial3: true),

      // Tự động chuyển đổi giữa Light và Dark theo cài đặt của điện thoại
      themeMode: ThemeMode.system,

      // Màn hình đầu tiên khi mở ứng dụng
      // Thay vì dùng HomeScreen mặc định, chúng ta dùng TeamScreen
      home: const TeamScreen(),
    );
  }
}
