import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/team_member.dart';

// Widget hiển thị thông tin của một thành viên trong nhóm dưới dạng một card
// Sẽ tách riêng để code dễ quản lý và tái sử dụng trong nhiều nơi khác nhau của ứng dụng
class TeamMemberCard extends StatelessWidget {
  // Dữ liệu của các thành viên sẽ được nhận tại Attribute này
  final TeamMember member;

  // Constructor để khởi tạo đối tượng và nhận dữ liệu thành viên
  const TeamMemberCard({
    super.key,
    required this.member,
  }); // Đảm bảo member luôn được cung cấp

  // Sử dung Method (hàm) để mở URL Github của các thành viên khi người dùng nhấn vào nút "GitHub"
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Phương thức build() sử dụng để gọi hàm xây dựng giao diện của card hiển thị thông tin thành viên
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ảnh đại diện
            CircleAvatar(
              radius: 46,
              backgroundImage: NetworkImage(member.imageUrl),
            ),

            const SizedBox(height: 12),

            // Tên thành viên và vai trò sẽ được hiển thị ở đây, sử dụng Text widget để hiển thị văn bản
            Text(
              member.name,
              style: const TextStyle(
                fontSize: 16.5,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 4),

            // Vai trò
            Text(
              member.role,
              style: TextStyle(
                fontSize: 13,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 10),

            // Mô tả ngắn
            Expanded(
              child: Text(
                member.description,
                style: const TextStyle(fontSize: 12.8, height: 1.4),
                textAlign: TextAlign.center,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            const SizedBox(height: 8),

            // Nút mở GitHub - chỉ hiển thị khi có link
            if (member.github.isNotEmpty)
              IconButton(
                icon: const Icon(Icons.code, size: 26),
                color: Colors.black87,
                onPressed: () =>
                    _launchURL(member.github), // Gọi method _launchURL khi nhấn
                tooltip: 'Mở GitHub',
              ),
          ],
        ),
      ),
    );
  }
}
