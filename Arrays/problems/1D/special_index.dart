/*
Problem Description

Given an array, arr[] of size N, the task is to find the count of array indices such that removing an element from these indices makes the sum of even-indexed and odd-indexed array elements equal.


Problem Constraints

1 <= N <= 105
-105 <= A[i] <= 105
Sum of all elements of A <= 109


Input Format

First argument contains an array A of integers of size N


Output Format

Return the count of array indices such that removing an element from these indices makes the sum of even-indexed and odd-indexed array elements equal.


Example Input

Input 1:
A = [2, 1, 6, 4]
Input 2:

A = [1, 1, 1]


Example Output

Output 1:
1
Output 2:

3


Example Explanation

Explanation 1:
Removing arr[1] from the array modifies arr[] to { 2, 6, 4 } such that, arr[0] + arr[2] = arr[1].
Therefore, the required output is 1.
Explanation 2:

Removing arr[0] from the given array modifies arr[] to { 1, 1 } such that arr[0] = arr[1]
Removing arr[1] from the given array modifies arr[] to { 1, 1 } such that arr[0] = arr[1]
Removing arr[2] from the given array modifies arr[] to { 1, 1 } such that arr[0] = arr[1]
Therefore, the required output is 3.
*/

void SpecialIndex() {
  List<int> A = [2, 1, 6, 4];
  print(_solve(A));
}

int _solve(List<int> A) {
  int n = A.length;

  /// Brute Force Approach
  /*
  int count = 0;

  for (int i = 0; i < n; i++) {
    int evenSum = 0, oddSum = 0;
    int newIndex = 0;

    for (int j = 0; j < n; j++) {
      if (j == i) continue;

      if (newIndex % 2 == 0) {
        evenSum += A[j];
      } else {
        oddSum += A[j];
      }

      newIndex++;
    }

    if (evenSum == oddSum) count++;
  }

  return count;
*/
  /// Sub-optimal (Prefix Sum Arrays)
  /*
  List<int> prefixEven = List<int>.generate(n, (_) => 0);
  List<int> prefixOdd = List<int>.generate(n, (_) => 0);

  prefixEven[0] = A[0];

  for (int i = 1; i < n; i++) {
    prefixEven[i] = prefixEven[i - 1];
    prefixOdd[i] = prefixOdd[i - 1];

    if (i % 2 == 0) {
      prefixEven[i] += A[i];
    } else {
      prefixOdd[i] += A[i];
    }
  }

  int count = 0;

  for (int i = 0; i < n; i++) {
    int evenLeft = (i > 0) ? prefixEven[i - 1] : 0;
    int oddLeft = (i > 0) ? prefixOdd[i - 1] : 0;

    int evenRight = prefixOdd[n - 1] - prefixOdd[i];
    int oddRight = prefixEven[n - 1] - prefixEven[i];

    if (evenLeft + evenRight == oddLeft + oddRight) {
      count++;
    }
  }

  return count;
*/
  /// Optimal (Prefix Running Variables)
  int totalEven = 0, totalOdd = 0;

  for (int i = 0; i < n; i++) {
    if (i % 2 == 0) {
      totalEven += A[i];
    } else {
      totalOdd += A[i];
    }
  }

  int leftEven = 0, leftOdd = 0;
  int count = 0;

  for (int i = 0; i < n; i++) {
    // remove current element
    if (i % 2 == 0) {
      totalEven -= A[i];
    } else {
      totalOdd -= A[i];
    }

    int evenSum = leftEven + totalOdd;
    int oddSum = leftOdd + totalEven;

    if (evenSum == oddSum) count++;

    // update prefix
    if (i % 2 == 0) {
      leftEven += A[i];
    } else {
      leftOdd += A[i];
    }
  }

  return count;
}
