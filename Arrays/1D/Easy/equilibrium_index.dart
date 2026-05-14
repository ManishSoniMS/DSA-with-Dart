/*
You are given an array A of integers of size N.

Your task is to find the equilibrium index of the given array

The equilibrium index of an array is an index such that the sum of elements at lower indexes is equal to the sum of elements at higher indexes.

If there are no elements that are at lower indexes or at higher indexes, then the corresponding sum of elements is considered as 0.

Note:

Array indexing starts from 0.
If there is no equilibrium index then return -1.
If there are more than one equilibrium indexes then return the minimum index.

e.g.,
  A = [-7, 1, 5, 2, -4, 3, 0]
  Ans: 3

  A = [-7, 1, 5, 2, -4, 3, 0]
  [-7, -6, -1, 1, -3, 0, 0]
  [0, 7, 6, 1, -1, 3, 0]
*/
void equilibriumIndex() {
  // List<int> A =  [-7, 1, 5, 2, -4, 3, 0];
  List<int> A = [10, 5, 2, 3, 0];
  print(_Solve(A));
}

int _Solve(List<int> A) {
  int N = A.length;

  int sum = 0;
  for (int i = 0; i < N; i++) {
    sum += A[i];
  }

  int left = 0;
  for (int i = 0; i < N; i++) {
    int right = sum - left - A[i];
    if (left == right) return i;
    left += A[i];
  }

  return -1;
}
