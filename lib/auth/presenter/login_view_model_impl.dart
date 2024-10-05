import 'package:flutter/material.dart';
import 'package:simply_pos/auth/domain/usecases/login.dart';
import 'package:simply_pos/auth/presenter/login_view_model.dart';
import 'package:simply_pos/core/data/result.dart';

class LoginViewModelImpl extends ChangeNotifier implements LoginViewModel {
  final Login loginUseCase;

  LoginViewModelImpl({required this.loginUseCase});

  @override
  void login(String userId, String password) async {
    final loginParams = LoginParams(userId: userId, password: password);
    Result result = await loginUseCase.call(loginParams);

    if(result is Result.Success<>)
  }  
}