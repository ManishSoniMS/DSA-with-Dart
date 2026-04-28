/*
Given an integer array A containing N distinct integers, you have to find all the leaders in array A. An element is a leader if it is strictly greater than all the elements to its right side.

NOTE: The rightmost element is always a leader.

e.g.,
  A = [16, 17, 4, 3, 5, 2]
  [17, 2, 5]
*/

import '../../../../constants.dart';

void leaderInArray() {
  List<int> A = [16, 17, 4, 3, 5, 2];
  print(_Solve(A));
}

List<int> _Solve(List<int> A) {
  List<int> ans = [];

  /// Brute Force Approach
  // for (int i = 0; i < A.length; i++) {
  //   bool isSmall = false;
  //   for (int j = i; j < A.length; j++) {
  //     if (i == j) continue;
  //     if (A[i] < A[j]) {
  //       isSmall = true;
  //       break;
  //     }
  //   }
  //   if (!isSmall) ans.add(A[i]);
  // }

  /// Optimal Approach
  int max = Int.min.toInt();
  for (int i = A.length - 1; i >= 0; i--) {
    if (A[i] > max) {
      ans.add(A[i]);
      max = A[i];
    }
  }
  return ans;
}
