void bubbleSort() {
  List<int> A = [1, 2, 3, 4, 5, 6, 7, 8];
  A = solve(A);
  print(A);
}

List<int> solve(List<int> A) {
  for (int j = 0; j < A.length; j++) {
    bool swapped = false;
    for (int i = 0; i < A.length - 1 - j; i++) {
      final p = i;
      final c = i + 1;
      if (A[p] > A[c]) {
        int temp = A[p];
        A[p] = A[c];
        A[c] = temp;
        swapped = true;
      }
    }
    if (!swapped) break;
  }
  return A;
}
