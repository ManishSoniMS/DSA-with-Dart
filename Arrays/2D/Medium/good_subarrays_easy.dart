/*
Problem Description

Given an array of integers A, a subarray of an array is said to be good if it fulfills any one of the criteria:
1. Length of the subarray is be even, and the sum of all the elements of the subarray must be less than B.
2. Length of the subarray is be odd, and the sum of all the elements of the subarray must be greater than B.
Your task is to find the count of good subarrays in A.


Problem Constraints

1 <= len(A) <= 5 x 103
1 <= A[i] <= 103
1 <= B <= 107


Input Format

The first argument given is the integer array A.
The second argument given is an integer B.


Output Format

Return the count of good subarrays in A.


Example Input

Input 1:
A = [1, 2, 3, 4, 5]
B = 4
Input 2:

A = [13, 16, 16, 15, 9, 16, 2, 7, 6, 17, 3, 9]
B = 65


Example Output

Output 1:
6
Output 2:

36


Example Explanation

Explanation 1:
Even length good subarrays = {1, 2}
Odd length good subarrays = {1, 2, 3}, {1, 2, 3, 4, 5}, {2, 3, 4}, {3, 4, 5}, {5}
Explanation 1:
There are 36 good subarrays
*/

void GoodSubArraysEasy() {
  List<int> A = [13, 16, 16, 15, 9, 16, 2, 7, 6, 17, 3, 9];
  int B = 65;
  print(_Solve(A, B));
}

int _Solve(List<int> A, int B) {
  int n = A.length;
  int count = 0;

  /// Brute Force
  /*
  for (int i = 0; i < n; i++) {
    for (int j = i; j < n; j++) {
      int sum = 0;

      for (int k = i; k <= j; k++) {
        sum += A[k];
      }

      int length = j - i + 1;

      if (length % 2 == 0 && sum < B) count++;
      if (length % 2 == 1 && sum > B) count++;
    }
  }
*/
  /// Sub-optimal (Remove inner loop)
  /*
  for (int i = 0; i < n; i++) {
    int sum = 0;

    for (int j = i; j < n; j++) {
      sum += A[j];
      int length = j - i + 1;

      if (length % 2 == 0 && sum < B) count++;
      if (length % 2 == 1 && sum > B) count++;
    }
  }
*/

  /// Optimal (Prefix Sum Optimization)
  List<int> prefix = List<int>.generate(n, (_) => 0);
  prefix[0] = A[0];

  for (int i = 1; i < n; i++) {
    prefix[i] = prefix[i - 1] + A[i];
  }

  for (int i = 0; i < n; i++) {
    for (int j = i; j < n; j++) {
      int sum = (i == 0) ? prefix[j] : prefix[j] - prefix[i - 1];
      int length = j - i + 1;

      if (length % 2 == 0 && sum < B) count++;
      if (length % 2 == 1 && sum > B) count++;
    }
  }

  return count;
}
