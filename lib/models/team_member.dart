class TeamMember {
  final String name;
  final String role;
  final String description;
  final String imageUrl;
  final String github;

  TeamMember({
    required this.name,
    required this.role,
    required this.description,
    required this.imageUrl,
    this.github = '',
  });
}
