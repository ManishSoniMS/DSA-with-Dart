/*
Problem Description

Given two sorted arrays A and B of size M and N respectively, return the median of the two sorted arrays.
Round of the value to the floor integer [2.6=2, 2.2=2]


Problem Constraints

0 <= M <= 105
0 <= N <= 105
-109 <= A[i], B[i] <= 109


Input Format

First argument A is an array of integers.
First argument B is an array of integers.


Output Format

Return an integer.


Example Input

Input 1:
A = [5, 7]
B = [6]
Input 2:
A = [1, 2]
B = [3, 4]


Example Output

Output 1:
6
Output 2:
2


Example Explanation

Example 1:
merged array = [5, 6, 7] and median is 6.
Example 2:
merged array = [1, 2, 3, 4] and median is
(2 + 3) / 2 = 2.5
= floor(2.5)
= 2
*/

void MedianOfTwoSortedArrays() {
  List<int> A = [1, 2, 4, 7, 9, 10];
  List<int> B = [2, 3, 6, 8];

  print(_Solve(A, B));
}

int _Solve(List<int> A, List<int> B) {
  int N = A.length;
  int M = B.length;

  /// Brute Force
  /*
  List<int> C = [];

  int i = 0, j = 0;

  while (i < N && j < M) {
    if (A[i] < B[j]) {
      C.add(A[i++]);
    } else {
      C.add(B[j++]);
    }
  }

  while (i < N) {
    C.add(A[i++]);
  }

  while (j < M) {
    C.add(A[j++]);
  }

  if (C.length % 2 == 0) {
    return (C[(C.length ~/ 2)] + C[(C.length ~/ 2) + 1]) ~/ 2;
  }
  return C[C.length ~/ 2];
  */
  if (N > M) _Solve(B, A);

  return -1;
}
