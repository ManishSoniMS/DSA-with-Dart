/*
Problem Description

Given a sorted array of integers A (0-indexed) of size N, find the left most and the right most index of a given integer B in the array A.

Return an array of size 2, such that
First element = Left most index of B in A
Second element = Right most index of B in A.
If B is not found in A, return [-1, -1].

Note : Note: The time complexity of your algorithm must be O(log n)..


Problem Constraints

1 <= N <= 106
1 <= A[i], B <= 109


Input Format

The first argument given is the integer array A.
The second argument given is the integer B.


Output Format

Return the left most and right most index (0-based) of B in A as a 2-element array. If B is not found in A, return [-1, -1].


Example Input

Input 1:

A = [5, 7, 7, 8, 8, 10]
B = 8
Input 2:

A = [5, 17, 100, 111]
B = 3


Example Output

Output 1:

[3, 4]
Output 2:

[-1, -1]


Example Explanation

Explanation 1:

The first occurrence of 8 in A is at index 3.
The last occurrence of 8 in A is at index 4.
ans = [3, 4]
Explanation 2:

There is no occurrence of 3 in the array.
*/

void SearchForRange() {
  // List<int> A = [5, 7, 7, 8, 8, 10];
  // int B = 8;
  // List<int> A = [5, 17, 100, 111];
  // int B = 3;
  // List<int> A = [1];
  // int B = 1;
  List<int> A = [
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    4,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    6,
    7,
    7,
    7,
    7,
    7,
    7,
    7,
    7,
    7,
    7,
    7,
    7,
    7,
    7,
    7,
    7,
    7,
    7,
    7,
    7,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    8,
    9,
    9,
    9,
    9,
    9,
    9,
    9,
    9,
    9,
    9,
    9,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
  ]; // Output: [118, 133]
  int B = 10;
  print(_Solve(A, B));
}

List<int> _Solve(List<int> A, int B) {
  /// Brute Force Approach
  /*
  int first = -1;
  int last = -1;

  for (int i = 0; i < A.length; i++) {
    if (A[i] == B) {
      if (first == -1) {
        first = i;
      }

      last = i;
    }
  }

  return [first, last];
*/

  int first = findFirst(A, B);
  int last = findLast(A, B);

  return [first, last];
}

int findFirst(List<int> A, int B) {
  int low = 0;
  int high = A.length - 1;

  int ans = -1;

  while (low <= high) {
    int mid = low + ((high - low) ~/ 2);

    if (A[mid] == B) {
      ans = mid;
      high = mid - 1;
    } else if (A[mid] < B) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return ans;
}

int findLast(List<int> A, int B) {
  int low = 0;
  int high = A.length - 1;

  int ans = -1;

  while (low <= high) {
    int mid = low + ((high - low) ~/ 2);

    if (A[mid] == B) {
      ans = mid;
      low = mid + 1;
    } else if (A[mid] < B) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return ans;
}
