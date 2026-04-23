// you are given an array A and a number B
// check if there exists a pair in A such that their sum is equal to B
void checkPair() {
  final A = [1, 2, 3, 4, 9];
  final B = 9;

  final ans = _checkPair(A, B);
  print(ans);
}

bool _checkPair(List<int> A, int B) {
  Set<int> _set = {};
  for (int i = 0; i < A.length; i++) {
    final ith = A[i];
    final diff = B - ith;
    if (_set.contains(diff)) {
      return true;
    }
    _set.add(ith);
  }
  return false;
}
