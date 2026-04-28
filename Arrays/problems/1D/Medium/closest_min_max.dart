/*
Problem Description

Given an array A, find the size of the smallest subarray such that it contains at least one occurrence of the maximum value of the array and at least one occurrence of the minimum value of the array.


Problem Constraints

1 <= |A| <= 2000


Input Format

First and only argument is vector A


Output Format

Return the length of the smallest subarray which has at least one occurrence of minimum and maximum element of the array


Example Input

Input 1:

A = [1, 3, 2]
Input 2:

A = [2, 6, 1, 6, 9]


Example Output

Output 1:

2
Output 2:

3


Example Explanation

Explanation 1:

Take the 1st and 2nd elements as they are the minimum and maximum elements respectievly.
Explanation 2:

Take the last 3 elements of the array.

*/
import 'dart:math' as Math;

import '../../../../constants.dart';

/// Edge Case :: element may repeat
void closestMinMax() {
  // final A = [1, 3, 2];
  // final A = [2, 6, 1, 6, 9];
  final A = [343, 291, 963, 165, 152];

  print(_Solve(A));
}

int _Solve(List<int> A) {
  int n = A.length;
  int min = Int.max.toInt();
  int max = Int.min.toInt();
  int ans = n;
  for (int x in A) {
    min = Math.min(min, x);
    max = Math.max(max, x);
  }
  if (min == max) return 1;

  /// Brute force approach (Check all subarrays)
  /*
  for (int i = 0; i < n; i++) {
    for (int j = i; j < n; j++) {
      bool hasMin = false;
      bool hasMax = false;

      for (int k = i; k <= j; k++) {
        if (A[k] == min) hasMin = true;
        if (A[k] == max) hasMax = true;
      }

      if (hasMin && hasMax) {
        ans = Math.min(ans, j - i + 1);
      }
    }
  }

  return ans;
*/
  /// sub-optimal approach (Expand window)
  /*
  for (int i = 0; i < n; i++) {
    bool hasMin = false;
    bool hasMax = false;

    for (int j = i; j < n; j++) {
      if (A[j] == min) hasMin = true;
      if (A[j] == max) hasMax = true;

      if (hasMin && hasMax) {
        ans = Math.min(ans, j - i + 1);
      }
    }
  }

  return ans;
*/

  /// Optimal (Index Tracking)

  int lastMin = -1;
  int lastMax = -1;

  for (int i = 0; i < n; i++) {
    if (A[i] == min) lastMin = i;
    if (A[i] == max) lastMax = i;

    if (lastMin != -1 && lastMax != -1) {
      int len = (lastMin - lastMax).abs() + 1;
      ans = Math.min(ans, len);
    }
  }

  return ans;
}

// int _Solve(List<int> A) {
//   int min = A[0];
//   int minIndex = 0;
//   int max = A[0];
//   int maxIndex = 0;
//   int shortestDistance = 1000000000;
//
//   for (int i = 0; i < A.length; i++) {
//     if (A[i] >= max) max = A[i];
//     if (A[i] <= min) min = A[i];
//   }
//
//   for (int i = 0; i < A.length; i++) {
//     if (A[i] == max) {
//       maxIndex = i;
//       int newDif = Math.min(shortestDistance, distance(minIndex, maxIndex));
//     }
//     if (A[i] == min) {
//       minIndex = i;
//       shortestDistance = Math.min(
//         shortestDistance,
//         distance(minIndex, maxIndex),
//       );
//     }
//   }
//
//   print(
//     'min : $min - min index : $minIndex max : $max - max index : $maxIndex size : $shortestDistance',
//   );
//
//   return shortestDistance;
// }
//
// int distance(int min, int max) => (min > max ? min - max : max - min) + 1;
