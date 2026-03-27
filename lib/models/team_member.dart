// Model định nghĩa cấu trúc dữ liệu của các thành viên trong nhóm
class TeamMember {
  final String name; // Tên thành viên
  final String role; // Vai trò của thành viên trong dự án
  final String
  description; // Mô tả ngắn gọn về công việc và đóng góp của thành viên
  final String imageUrl; // URL hình ảnh đại diện của thành viên
  final String
  github; // URL GitHub của thành viên (có thể để trống nếu chưa có)

  // Constructor để khởi tạo đối tượng TeamMember
  TeamMember({
    required this.name,
    required this.role,
    required this.description,
    required this.imageUrl,
    this.github = '',
  });
}
