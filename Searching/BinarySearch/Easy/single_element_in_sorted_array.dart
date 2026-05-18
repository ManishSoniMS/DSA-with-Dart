/*
Problem Description

Given a sorted array of integers A where every element appears twice except for one element which appears once, find and return this single element that appears only once.

Elements which are appearing twice are adjacent to each other.

NOTE: Users are expected to solve this in O(log(N)) time.



Problem Constraints

1 <= |A| <= 100000

1 <= A[i] <= 10^9



Input Format

The only argument given is the integer array A.



Output Format

Return the single element that appears only once.



Example Input

Input 1:

A = [1, 1, 7]
Input 2:

A = [2, 3, 3]


Example Output

Output 1:

7
Output 2:

2


Example Explanation

Explanation 1:

7 appears once
Explanation 2:

2 appears once
*/

void SingleElementInSortedArray() {
  List<int> A = [1, 1, 7];

  print(_Solve(A));
}

int _Solve(List<int> A) {
  int N = A.length;
  if (N == 1) return A[0];
  int l = 0;
  int r = N - 1;

  while (l <= r) {
    int mid = l + ((r - l) ~/ 2);
    bool isEven = mid % 2 == 0;
    if ((mid == 0 && A[mid] != A[mid + 1]) ||
        (mid == N - 1 && A[mid] != A[mid - 1]) ||
        (mid != 0 && mid != N - 1 && A[mid - 1] != A[mid] && A[mid] != A[mid + 1])) {
      return A[mid];
    } else if ((!isEven && A[mid] == A[mid - 1]) || (isEven && A[mid] == A[mid + 1])) {
      l = mid + 1;
    } else {
      r = mid - 1;
    }
  }
  return -1;
}
