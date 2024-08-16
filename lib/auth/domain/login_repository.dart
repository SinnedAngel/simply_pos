import 'package:simply_pos/core/data/result.dart';

abstract interface class LoginRepository {
  Future<Result> login({
    required String userId,
    required String password,
  });
}
