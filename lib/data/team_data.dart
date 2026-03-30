// Hard-coded team member data for the application (Sẽ update thành API, database hoặc file JSON sau này)
import '../models/team_member.dart';

// Danh sách các thành viên trong nhóm phát triển ERP J-One
final List<TeamMember> teamMembers = [
  TeamMember(
    name: "Tạ Tuấn Phong",
    role: "Project Leader, Developer & Business Analyst",
    description:
        "Lãnh đạo nhóm, quản lý tiến độ đồ án và phân tích yêu cầu nghiệp vụ của hệ thống ERP J-One.",
    imageUrl: "https://randomuser.me/api/portraits/men/32.jpg",
    github: "https://github.com/syth09",
  ),
  TeamMember(
    name: "Đặng Tuấn Phong",
    role: "Flutter Developer (Core and State)",
    description:
        "Xây dựng kiến trúc app, State Management (Riverpod/Bloc), Authentication, Navigation, kết nối Database",
    imageUrl: "https://randomuser.me/api/portraits/women/45.jpg",
    github: "https://github.com/boysadseetinh-gif",
  ),
  TeamMember(
    name: "Nguyễn Thái Sơn",
    role: "Flutter Developer",
    description:
        "Code các module nghiệp vụ chính (Quản lý Kho, Bán hàng, Nhân sự, Tài chính…)",
    imageUrl: "https://randomuser.me/api/portraits/men/67.jpg",
    github: "https://github.com/TGRGHOT09",
  ),
  TeamMember(
    name: "Lê Phi Hùng",
    role: "UI/UX Designer & Flutter Developer",
    description:
        "Thiết kế toàn bộ UI/UX bằng Figma, code giao diện responsive, làm Theme, animation, tối ưu cho Web.",
    imageUrl: "https://randomuser.me/api/portraits/women/24.jpg",
    github: "https://github.com/phihung9304",
  ),
  TeamMember(
    name: "Trần Thanh Tùng",
    role: "Tester & Document Writer",
    description:
        "Thiết kế Database (Firebase/Supabase), viết API integration, test toàn bộ app, viết test case",
    imageUrl: "https://randomuser.me/api/portraits/men/88.jpg",
    github: "https://github.com/ttung20044-ctrl",
  ),
];
