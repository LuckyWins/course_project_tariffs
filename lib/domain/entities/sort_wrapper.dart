class SortWrapper<T> {
  final bool asc;
  final T sort;

  const SortWrapper({
    required this.asc,
    required this.sort,
  });
}

extension SortWrapperGenerator on SortWrapper {
  static List<SortWrapper<T>> generate<T>(List<T> items) {
    final temp = <SortWrapper<T>>[];
    for (final e in items) {
      temp
        ..add(SortWrapper(asc: true, sort: e))
        ..add(SortWrapper(asc: false, sort: e));
    }
    return temp;
  }
}
