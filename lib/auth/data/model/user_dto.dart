class UserDto {
  final String id;
  final String userId;
  final List<int> roles;

  UserDto({
    required this.id,
    required this.userId,
    required this.roles,
  });
}