import 'package:simply_pos/core/data/errors.dart';
import 'package:simply_pos/core/data/result.dart';
import 'package:simply_pos/auth/data/login_remote_data_source.dart';
import 'package:simply_pos/auth/domain/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource remoteDataSource;
  const LoginRepositoryImpl(this.remoteDataSource);

  @override
  Future<Result> login({
    required String userId,
    required String password,
  }) async {
    try {
      final userDto = await remoteDataSource.login(userId: userId, password: password);
      return Success(userDto);
    } on LoginErrorExceptions catch (e) {
      return Error.exception(e, errorCode: ErrorCode.loginError);
    }
  }
}
