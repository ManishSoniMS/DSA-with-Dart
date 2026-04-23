void generateSubArray() {
  List<int> A = [1, 2, 3, 4];
  print(_solve(A));
}

List<List<int>> _solve(List<int> A) {
  List<List<int>> ans = [];

  for (int i = 0; i < A.length; i++) {
    for (int j = 0; j < A.length; j++) {
      List<int> sub = [];
      for (int k = i; k < A.length - j; k++) {
        sub.add(A[k]);
      }
      if (sub.isNotEmpty) ans.add(sub);
    }
  }

  return ans;
}
