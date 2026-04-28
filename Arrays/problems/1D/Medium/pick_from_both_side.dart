/*
You are given an integer array A of size N.

You have to perform B operations. In one operation, you can remove either the leftmost or the rightmost element of the array A.

Find and return the maximum possible sum of the B elements that were removed after the B operations.

NOTE: Suppose B = 3, and array A contains 10 elements, then you can:

Remove 3 elements from front and 0 elements from the back, OR
Remove 2 elements from front and 1 element from the back, OR
Remove 1 element from front and 2 elements from the back, OR
Remove 0 elements from front and 3 elements from the back.

e.g.,
     A = [5, -2, 3 , 1, 2]
     B = 3
 Explanation :
     Remove element 5 from front and element (1, 2) from back so we get 5 + 1 + 2 = 8
*/

import 'dart:math' as Math;

import '../../../../constants.dart';

void pickFromBothSide() {
  List<int> A = [5, -2, 3, 1, 2];
  int B = 3;
  print(_Solve(A, B));
}

int _Solve(List<int> A, int B) {
  int n = A.length;
  int maxSum = Int.min.toInt();

  /// brute force
  /*
  for (int k = 0; k <= B; k++) {
    int sum = 0;

    // Take k elements from front
    for (int i = 0; i < k; i++) {
      sum += A[i];
    }

    // Take (B-k) elements from back
    for (int i = 0; i < B - k; i++) {
      sum += A[n - 1 - i];
    }

    maxSum = Math.max(maxSum, sum);
  }

  return maxSum;
*/

  /// sub-optimal approach (prefix and suffix)
  /*
  List<int> prefix = List<int>.generate(B + 1, (_) => 0);
  List<int> suffix = List<int>.generate(B + 1, (_) => 0);

  // prefix
  for (int i = 1; i <= B; i++) {
    prefix[i] = prefix[i - 1] + A[i - 1];
  }

  // suffix
  for (int i = 1; i <= B; i++) {
    suffix[i] = suffix[i - 1] + A[n - i];
  }

  for (int k = 0; k <= B; k++) {
    int sum = prefix[k] + suffix[B - k];
    maxSum = Math.max(maxSum, sum);
  }

  return maxSum;
*/
  /// Optimal Solution (Sliding window)

  int windowSize = n - B;

  int totalSum = 0;
  for (int x in A) totalSum += x;

  // find min subarray of size windowSize
  int currSum = 0;

  for (int i = 0; i < windowSize; i++) {
    currSum += A[i];
  }

  int minSum = currSum;

  for (int i = windowSize; i < n; i++) {
    currSum += A[i];
    currSum -= A[i - windowSize];
    minSum = Math.min(minSum, currSum);
  }

  return totalSum - minSum;
}
