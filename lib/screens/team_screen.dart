import 'package:flutter/material.dart';
import '../data/team_data.dart';
import '../widgets/team_member_card.dart';

/// Màn hình chính hiển thị danh sách thành viên theo dạng lưới
class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Đội ngũ phát triển ERP J-One',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.85,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: teamMembers.length,
          itemBuilder: (context, index) {
            return TeamMemberCard(member: teamMembers[index]);
          },
        ),
      ),
    );
  }
}
