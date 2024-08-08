class UserDto {
  final String id;
  final String userId;
  final String password;
  final List<int> roles;

  UserDto({
    required this.id,
    required this.userId,
    required this.password,
    required this.roles,
  });
}