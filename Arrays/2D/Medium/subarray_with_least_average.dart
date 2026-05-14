/*
Problem Description

Given an array A of size N, find the subarray of size B with the least average.



Problem Constraints

1 <= B <= N <= 105
-105 <= A[i] <= 105


Input Format

First argument contains an array A of integers of size N.
Second argument contains integer B.


Output Format

Return the index of the first element of the subarray of size B that has least average.
Array indexing starts from 0.


Example Input

Input 1:
A = [3, 7, 90, 20, 10, 50, 40]
B = 3
Input 2:

A = [3, 7, 5, 20, -10, 0, 12]
B = 2






Example Output

Output 1:
3
Output 2:

4






Example Explanation

Explanation 1:
Subarray between indexes 3 and 5
The subarray {20, 10, 50} has the least average
among all subarrays of size 3.
Explanation 2:

Subarray between [4, 5] has minimum average
*/

void SubArrayWithLeastAverage() {
  List<int> A = [3, 7, 90, 20, 10, 50, 40];
  int B = 3;
  print(_Solve(A, B));
}

int _Solve(List<int> A, int B) {
  int n = A.length;
  /*
  double minAvg = Int.max.toDouble();
  int index = 0;

  for (int i = 0; i <= n - B; i++) {
    int sum = 0;

    for (int j = i; j < i + B; j++) {
      sum += A[j];
    }

    double avg = sum / B;

    if (avg < minAvg) {
      minAvg = avg;
      index = i;
    }
  }

  return index;
  */

  /// Sub-optimal (Prefix Sum)
  /*
  List<int> prefix = List<int>.generate(n, (_) => 0);
  prefix[0] = A[0];

  for (int i = 1; i < n; i++) {
    prefix[i] = prefix[i - 1] + A[i];
  }

  int minSum = Int.max.toInt();
  int index = 0;

  for (int i = 0; i <= n - B; i++) {
    int sum;
    if (i == 0)
      sum = prefix[B - 1];
    else
      sum = prefix[i + B - 1] - prefix[i - 1];

    if (sum < minSum) {
      minSum = sum;
      index = i;
    }
  }

  return index;
*/

  int sum = 0;

  // first window
  for (int i = 0; i < B; i++) {
    sum += A[i];
  }

  int minSum = sum;
  int index = 0;

  // slide window
  for (int i = B; i < n; i++) {
    sum += A[i];
    sum -= A[i - B];

    if (sum < minSum) {
      minSum = sum;
      index = i - B + 1;
    }
  }

  return index;
}
