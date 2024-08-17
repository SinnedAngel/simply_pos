import 'package:simply_pos/core/data/result.dart';

abstract interface class UseCase<T, V> {
  Future<T> call(V params);
}
