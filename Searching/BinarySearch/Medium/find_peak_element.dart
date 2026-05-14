/*
Problem Description

Given an array of integers A, find and return the peak element in it.
An array element is considered a peak if it is not smaller than its neighbors. For corner elements, we need to consider only one neighbor.

NOTE:

It is guaranteed that the array contains only a single peak element.
Users are expected to solve this in O(log(N)) time. The array may contain duplicate elements.


Problem Constraints

1 <= |A| <= 100000

1 <= A[i] <= 109



Input Format

The only argument given is the integer array A.



Output Format

Return the peak element.



Example Input

Input 1:

A = [1, 2, 3, 4, 5]
Input 2:

A = [5, 17, 100, 11]




Example Output

Output 1:


5
Output 2:

100


Example Explanation

Explanation 1:

5 is the peak.
Explanation 2:

100 is the peak.
*/

void FindPeakElement() {
  List<int> A = [5, 17, 100, 11];
  print(_Solve(A));
}

int _Solve(List<int> A) {
  int n = A.length;
  if (n < 1) return A[0];

  /// Brute Force Approach
  /*
  for (int i = 0; i < n; i++) {
    bool leftOk = (i == 0 || A[i] >= A[i - 1]);
    bool rightOk = (i == n - 1 || A[i] >= A[i + 1]);

    if (leftOk && rightOk) {
      return A[i];
    }
  }

  return -1;
  */

  /// Optimal Approach
  int low = 0;
  int high = n - 1;

  while (low < high) {
    int mid = low + ((high - low) ~/ 2);

    if (A[mid] < A[mid + 1]) {
      // peak on right side
      low = mid + 1;
    } else {
      // peak on left side including mid
      high = mid;
    }
  }

  return A[low];
}
