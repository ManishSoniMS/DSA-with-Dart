void rangeSum() {
  List<int> A = [2, 8, 3, 9, 15];
  List<List<int>> B = [
    [1, 4],
    [0, 2],
    [2, 3],
  ];
  print(_Solve(A, B));
}

List<int> _Solve(List<int> A, List<List<int>> B) {
  int QN = B.length;
  if (QN == 0) return [];
  List<int> ans = List<int>.generate(QN, (_) => 0);
  int N = A.length;
  List<int> pfE = List<int>.generate(N, (_) => 0);

  pfE[0] = A[0];
  for (int i = 1; i < N; i++) {
    pfE[i] = (pfE[i - 1] + (i % 2 == 0 ? A[i] : 0));
  }

  for (int i = 0; i < QN; i++) {
    int L = B[i][0];
    int R = B[i][1];
    if (L == 0) {
      ans[i] = pfE[R];
    } else {
      ans[i] = pfE[R] - pfE[L - 1];
    }
  }

  return ans;
}
