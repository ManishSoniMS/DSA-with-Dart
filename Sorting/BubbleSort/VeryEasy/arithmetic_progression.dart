/*
Problem Description

Given an integer array A of size N. Return 1 if the array can be arranged to form an arithmetic progression, otherwise return 0.

A sequence of numbers is called an arithmetic progression if the difference between any two consecutive elements is the same.



Problem Constraints

2 <= N <= 105

-109 <= A[i] <= 109



Input Format

The first and only argument is an integer array A of size N.



Output Format

Return 1 if the array can be rearranged to form an arithmetic progression, otherwise return 0.



Example Input

Input 1:

A = [3, 5, 1]
Input 2:

A = [2, 4, 1]


Example Output

Output 1:

1
Output 2:

0


Example Explanation

Explanation 1:

We can reorder the elements as [1, 3, 5] or [5, 3, 1] with differences 2 and -2 respectively, between each consecutive elements.
Explanation 2:

There is no way to reorder the elements to obtain an arithmetic progression.
*/

import '../../../constants.dart';

void ArithmeticProgression() {
  List<int> A = [-39, -39];
  print(_Solve(A));
}

int _Solve(List<int> A) {
  /// Sort + Check Differences
  /*
  A.sort();
  int diff = A[1] - A[0];
  for (int i = 2; i < A.length; i++) {
    if (A[i] - A[i - 1] != diff) return 0;
  }
  return 1;
*/

  /// Optimal (Math + Set, No Sort)
  int n = A.length;
  int min = Int.max.toInt();
  int max = Int.min.toInt();

  for (int x in A) {
    if (min > x) min = x;
    if (max < x) max = x;
  }

  if ((max - min) % (n - 1) != 0) return 0;
  final diff = (max - min) / (n - 1);

  Set set = {};
  for (int x in A) {
    set.add(x);
  }

  for (int i = 0; i < n; i++) {
    final expected = min + (i * diff);
    if (!set.contains(expected)) return 0;
  }
  return 1;
}
