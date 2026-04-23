// Given an array A of N integers.
// Count the number of elements that have at least 1 elements greater than itself.
// Example:
// A = [1, 2, 3, 4, 5]
// Output: 4

void numberOfElementsLessThanMaximum() {
  final A = [3, 5, 3, 2, 9, 3, 10, 10, 10, 3]; // 7
  final ans = _solve(A);
  print(ans);
}

int _solve(List<int> A) {
  if (A.isEmpty) return 0;
  int max = A[0];
  int countMax = 0;

  for (int v in A) {
    if (v > max) {
      max = v;
      countMax = 1;
    } else if (v == max) {
      countMax++;
    }
  }

  return A.length - countMax;
}
