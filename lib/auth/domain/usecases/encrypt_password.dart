import 'dart:convert';

import 'package:simply_pos/core/enc/encrypted.dart';
import 'package:simply_pos/core/usecase/usecase.dart';
import 'package:crypto/crypto.dart';

class EncryptPassword implements UseCase<String, String> {
  @override
  Future<String> call(String params) async {
    var bytes = utf8.encode(Encrypted.supabaseKey);
    var digest = sha256.convert(bytes);

    return digest.toString();
  }
}