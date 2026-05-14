/*
Problem Description

You are given an integer array C of size A. Now you need to find a subarray (contiguous elements) so that the sum of contiguous elements is maximum.
But the sum must not exceed B.


Problem Constraints

1 <= A <= 103
1 <= B <= 109
1 <= C[i] <= 106


Input Format

The first argument is the integer A.
The second argument is the integer B.
The third argument is the integer array C.


Output Format

Return a single integer which denotes the maximum sum.


Example Input

Input 1:
A = 5
B = 12
C = [2, 1, 3, 4, 5]
Input 2:

A = 3
B = 1
C = [2, 2, 2]


Example Output

Output 1:
12
Output 2:

0


Example Explanation

Explanation 1:
We can select {3,4,5} which sums up to 12 which is the maximum possible sum.
Explanation 2:

All elements are greater than B, which means we cannot select any subarray.
Hence, the answer is 0.
*/

import 'dart:math' as Math;

void MaximumSubArray() {
  int B = 12;
  List<int> C = [19, 10, 3, 3, 5];
  print(_Solve(C.length, B, C));
}

int _Solve(int A, int B, List<int> C) {
  int maxSum = 0;

  /// Brute force
  /*
  for (int i = 0; i < A; i++) {
    for (int j = i; j < A; j++) {
      int sum = 0;
      for (int k = i; k <= j; k++) {
        sum += C[k];
      }
      if (sum <= B) {
        maxSum = Math.max(maxSum, sum);
      }
    }
  }
  */

  /// Sub-optimal (Running Sum)
  /*
  for (int i = 0; i < A; i++) {
    int sum = 0;
    for (int j = i; j < A; j++) {
      sum += C[j];
      if (sum <= B) {
        maxSum = Math.max(maxSum, sum);
      } else {
        break; // all numbers positive → further expansion only increases sum
      }
    }
  }
*/

  /// Optimal (Sliding Window / Two Pointers)

  int left = 0;
  int sum = 0;

  for (int right = 0; right < A; right++) {
    sum += C[right];

    // shrink window until valid
    while (sum > B && left <= right) {
      sum -= C[left];
      left++;
    }

    // now sum <= B
    maxSum = Math.max(maxSum, sum);
  }

  return maxSum;
}
