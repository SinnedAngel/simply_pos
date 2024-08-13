import 'package:simply_pos/core/data/errors.dart';
import 'package:simply_pos/core/data/responses.dart';
import 'package:simply_pos/login/data/login_remote_data_source.dart';
import 'package:simply_pos/login/domain/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource remoteDataSource;
  const LoginRepositoryImpl(this.remoteDataSource);

  @override
  Future<Response> login({
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
