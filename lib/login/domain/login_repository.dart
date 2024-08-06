import 'package:simply_pos/core/responses.dart';

abstract interface class LoginRepository {
  Future<Response> login({
    required String userId,
    required String password,
  });
}
