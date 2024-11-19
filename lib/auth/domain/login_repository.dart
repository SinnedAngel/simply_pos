import 'package:simply_pos/auth/domain/model/User.dart';
import 'package:simply_pos/core/data/result.dart';

abstract interface class LoginRepository {
  Future<Result<User>> login({
    required String userId,
    required String password,
  });
}
