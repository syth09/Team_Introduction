// Hard-coded team member data for the application (Sẽ update thành API, database hoặc file JSON sau này)
import '../models/team_member.dart';

// Danh sách các thành viên trong nhóm phát triển ERP J-One
final List<TeamMember> teamMembers = [
  TeamMember(
    name: "Tạ Tuấn Phong",
    role: "Project Leader, Developer",
    description:
        "Lãnh đạo nhóm, quản lý tiến độ đồ án và phân tích yêu cầu nghiệp vụ của hệ thống ERP J-One, Code module bán hàng, mua hàng, Thiết kế Database (Firebase/Supabase)",
    imageUrl: "https://randomuser.me/api/portraits/men/32.jpg",
    github: "https://github.com/syth09",
  ),
  TeamMember(
    name: "Đặng Tuấn Phong",
    role: "Flutter Developer (Core and State)",
    description:
        "Xây dựng Navigation, kết nối Database, Code các module nghiệp vụ Nhân sự, Tài chính",
    imageUrl: "https://randomuser.me/api/portraits/women/45.jpg",
    github: "https://github.com/boysadseetinh-gif",
  ),
  TeamMember(
    name: "Nguyễn Thái Sơn",
    role: "Flutter Developer",
    description:
        "Code các module nghiệp vụ chính (Quản lý Kho, Bán hàng, Mua hàng, Nhân sự, Tài chính)",
    imageUrl: "https://randomuser.me/api/portraits/men/67.jpg",
    github: "https://github.com/TGRGHOT09",
  ),
  TeamMember(
    name: "Lê Phi Hùng",
    role: "UI/UX Designer & Flutter Developer",
    description: "Code các module nghiệp vụ Quản lý Kho, Nhân sự, Tài chính.",
    imageUrl: "https://randomuser.me/api/portraits/women/24.jpg",
    github: "https://github.com/phihung9304",
  ),
  TeamMember(
    name: "Trần Thanh Tùng",
    role: "Tester & Document Writer",
    description: "test toàn bộ app, viết test case, Nhân sự, Tài chính",
    imageUrl: "https://randomuser.me/api/portraits/men/88.jpg",
    github: "https://github.com/ttung20044-ctrl",
  ),
];
