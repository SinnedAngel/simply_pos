import 'dart:convert';

import 'package:simply_pos/core/data/errors.dart';
import 'package:simply_pos/core/enc/database_library.dart';
import 'package:simply_pos/core/enc/encrypted.dart';
import 'package:simply_pos/login/data/error_messages.dart';
import 'package:simply_pos/login/data/model/user_dto.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:crypto/crypto.dart';

abstract interface class LoginRemoteDataSource {
  Future<UserDto> login({
    required String userId,
    required String password,
  });
}

class LoginRemoteDataSourceImpl extends LoginRemoteDataSource {
  final SupabaseClient supabaseClient;
  LoginRemoteDataSourceImpl(this.supabaseClient);

  @override
  Future<UserDto> login(
      {required String userId, required String password}) async {
    final data = await supabaseClient
        .from(DatabaseLibrary.tablenameUser)
        .select()
        .eq(DatabaseLibrary.tabUserColUserId, userId)
        .maybeSingle();

    if (data == null) {
      throw const LoginErrorExceptions(ErrorMessages.LoginErrorUserNotFound);
    }

    var bytes = utf8.encode(Encrypted.supabaseKey);
    var digest = sha256.convert(bytes);

    if (data[DatabaseLibrary.tabUserColPassword] != digest) {
      throw const LoginErrorExceptions(ErrorMessages.LoginErrorWrongPassword);
    }

    var userDto = UserDto(
        id: data[DatabaseLibrary.tabUserColId],
        userId: data[DatabaseLibrary.tabUserColUserId],
        password: data[DatabaseLibrary.tabUserColPassword],
        roles: data[DatabaseLibrary.tabUserColRole]);

    return userDto;
  }
}
