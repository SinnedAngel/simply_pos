import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class LoginRemoteDataSource {
  Future<String> login({
    required String userId,
    required String password,
  });
}

class LoginRemoteDataSourceImpl extends LoginRemoteDataSource {
  final SupabaseClient supabaseClient;
  LoginRemoteDataSourceImpl(this.supabaseClient);

  @override
  Future<String> login({required String userId, required String password}) {
    throw UnimplementedError();
  }
}
