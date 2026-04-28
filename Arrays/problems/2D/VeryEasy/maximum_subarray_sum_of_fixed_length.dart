/*
Problem Description

Given an array A of length N, Find the maximum subarray sum out of all possible subarray of length B.


Problem Constraints

1 <= N <= 105
1 <= A[i] <= 106


Input Format

First argument A is an array of integers.
Second argument B is length of subarray.


Output Format

Return a single integer i.e. max subarray sum


Example Input

Input 1:

A = [6, 7, 8, 2]
B = 2
Input 2:

A = [3, 9, 5, 6, 5, 11]
B = 3


Example Output

Output 1:

15
Output 2:

22


Example Explanation

Explanation 1:

Subarray with maximum sum is [7, 8] with sum 15.
Explanation 2:

Subarray with maximum sum is [6, 5, 11] with sum 22.

*/

import 'dart:math' as Math;

import '../../../../constants.dart';

void MaximumSubArraySumOfFixedLength() {
  List<int> A = [3, 9, 5, 6, 5, 11];
  int B = 3;

  print(_Solve(A, B));
}

int _Solve(List<int> A, int B) {
  int n = A.length;
  int maxSum = Int.min.toInt();

  /// Brute Force
  /*
  for (int i = 0; i <= n - B; i++) {
    int sum = 0;
    for (int j = i; j < i + B; j++) {
      sum += A[j];
    }
    maxSum = Math.max(maxSum, sum);
  }
*/
  /// Sub-optimal (Prefix Sum)
  /*
  List<int> prefix = List<int>.generate(n, (_) => 0);
  prefix[0] = A[0];

  for (int i = 1; i < n; i++) {
    prefix[i] = prefix[i - 1] + A[i];
  }

  for (int i = 0; i <= n - B; i++) {
    int sum;
    if (i == 0)
      sum = prefix[B - 1];
    else
      sum = prefix[i + B - 1] - prefix[i - 1];

    maxSum = Math.max(maxSum, sum);
  }
*/

  /// Optimal (Sliding Window)
  int sum = 0;

  // first window
  for (int i = 0; i < B; i++) {
    sum += A[i];
  }

  // slide window
  for (int i = B; i < n; i++) {
    sum += A[i]; // add new element
    sum -= A[i - B]; // remove old element
    maxSum = Math.max(maxSum, sum);
  }

  return maxSum;
}
