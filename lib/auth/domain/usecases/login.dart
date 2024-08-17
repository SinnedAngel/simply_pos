import 'package:simply_pos/auth/domain/login_repository.dart';
import 'package:simply_pos/auth/domain/usecases/encrypt_password.dart';
import 'package:simply_pos/core/data/result.dart';
import 'package:simply_pos/core/usecase/usecase.dart';

class Login implements UseCase<Result, LoginParams> {
  final EncryptPassword encryptPasswordUseCase;
  final LoginRepository repository;

  const Login({
    required this.encryptPasswordUseCase,
    required this.repository,
  });

  @override
  Future<Result> call(LoginParams params) async {
    var password = await  encryptPasswordUseCase.call(params.password);
    return repository.login(userId: params.userId, password: password);
  }    
}

class LoginParams {
  final String userId;
  final String password;

  const LoginParams({
    required this.userId,
    required this.password,
  });
}