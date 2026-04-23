// Question: Given an integer array A of size N.
// In one second, you can increase the value of one element by 1.
// Find the minimum time in seconds to make all elements of the array equal.
// Example:
// A = [2, 4, 1, 3, 2]
// Output: 8

void minimumTime() {
  final A = [2, 4, 1, 3, 2];
  final ans = _solve(A);
  print(ans);
}

int _solve(List<int> A) {
  int l = A.length;
  int sum = 0;
  int max = A[0];
  for (int i = 0; i < A.length; i++) {
    if (A[i] > max) {
      max = A[i];
    }
    sum += A[i];
  }

  return (max * l) - sum;
}
