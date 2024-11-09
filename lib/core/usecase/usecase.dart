
abstract interface class UseCase<T, V> {
  Future<T> call(V params);
}
