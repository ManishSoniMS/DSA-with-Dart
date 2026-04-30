void pairCount() {
  String A = "GUGPUAGAFQBMPYAGGAAOALAELGGGAOGLGEGZ"; // 52
  // String A = "ABGAG"; // 3
  print(_Solve(A));
}

int _Solve(String A) {
  int count = 0;

  /// Brute Force Approach
  /// TC: O(N^2)
  // for (int i = 0; i < A.length - 1; i++) {
  //   if (A[i] != 'A') continue;
  //   for (int j = i + 1; j < A.length; j++) {
  //     if (A[i] == 'A' && A[j] == 'G') count++;
  //   }
  // }

  /// Optimal Approach
  /// TC: O(N)
  int countA = 0;
  for (int i = 0; i < A.length; i++) {
    String ch = A[i];
    if (ch == 'A') countA++;
    if (ch == 'G') count += countA;
  }
  return count;
}
