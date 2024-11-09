import 'package:simply_pos/core/data/result.dart';

abstract interface class UserAccessRepository {
  Future<Result> getUserAccess({
    required int role
  });
}