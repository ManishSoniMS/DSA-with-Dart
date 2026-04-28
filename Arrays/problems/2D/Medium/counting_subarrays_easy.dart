/*
Problem Description

Given an array A of N non-negative numbers and a non-negative number B,
you need to find the number of subarrays in A with a sum less than B.
We may assume that there is no overflow.



Problem Constraints

1 <= N <= 5 x 103


1 <= A[i] <= 1000

1 <= B <= 107




Input Format

First argument is an integer array A.

Second argument is an integer B.



Output Format

Return an integer denoting the number of subarrays in A having sum less than B.



Example Input

Input 1:

A = [2, 5, 6]
B = 10
Input 2:

A = [1, 11, 2, 3, 15]
B = 10


Example Output

Output 1:

4
Output 2:

4


Example Explanation

Explanation 1:

The subarrays with sum less than B are {2}, {5}, {6} and {2, 5},
Explanation 2:

The subarrays with sum less than B are {1}, {2}, {3} and {2, 3}
*/
void CountingSubarraysEasy() {
  List<int> A = [1, 11, 2, 3, 15];
  int B = 10;
  print(_Solve(A, B));
}

int _Solve(List<int> A, int B) {
  int n = A.length;
  int count = 0;

  /// Brute Force
  /*
  for (int i = 0; i < n; i++) {
    int sum = 0;
    for (int j = i; j < n; j++) {
      sum += A[j];
      if (sum < B) count++;
    }
  }
*/

  /// Sub-optimal (Prefix Sum + Check)
  /*
  List<int> prefix = List<int>.generate(n, (_) => 0);

  prefix[0] = A[0];
  for (int i = 1; i < n; i++) {
    prefix[i] = prefix[i - 1] + A[i];
  }

  for (int i = 0; i < n; i++) {
    for (int j = i; j < n; j++) {
      int sum = (i == 0) ? prefix[j] : prefix[j] - prefix[i - 1];
      if (sum < B) count++;
    }
  }
*/

  /// Optimal (Sliding Window)
  int left = 0;
  int sum = 0;

  for (int right = 0; right < n; right++) {
    sum += A[right];

    // shrink window if invalid
    while (sum >= B && left <= right) {
      sum -= A[left];
      left++;
    }

    // all subarrays ending at right are valid
    count += (right - left + 1);
  }

  return count;
}
