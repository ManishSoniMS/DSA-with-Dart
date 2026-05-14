/*
Problem Description

You are given an array A of length N and Q queries given by the 2D array B of size Q×2.

Each query consists of two integers B[i][0] and B[i][1].

For every query, your task is to find the count of even numbers in the range from A[B[i][0]] to A[B[i][1]].


Problem Constraints

1 <= N <= 105
1 <= Q <= 105
1 <= A[i] <= 109
0 <= B[i][0] <= B[i][1] < N


Input Format

First argument A is an array of integers.
Second argument B is a 2D array of integers.


Output Format

Return an array of integers.


Example Input

Input 1:
A = [1, 2, 3, 4, 5]
B = [[0, 2], [2, 4], [1, 4]]

Output 1:
[1, 1, 2]


Input 2:
A = [2, 1, 8, 3, 9, 6]
B = [[0, 3], [3, 5], [1, 3], [2, 4]]

Output 2:
[2, 1, 1, 1]


Example Explanation

For Input 1:
The subarray for the first query is [1, 2, 3] (index 0 to 2) which contains 1 even number.
The subarray for the second query is [3, 4, 5] (index 2 to 4) which contains 1 even number.
The subarray for the third query is [2, 3, 4, 5] (index 1 to 4) which contains 2 even numbers.
For Input 2:
The subarray for the first query is [2, 1, 8, 3] (index 0 to 3) which contains 2 even numbers.
The subarray for the second query is [3, 9, 6] (index 3 to 5) which contains 1 even number.
The subarray for the third query is [1, 8, 3] (index 1 to 3) which contains 1 even number.
The subarray for the fourth query is [8, 3, 9] (index 2 to 4) which contains 1 even number.
*/

void EvenNumbersInARange() {
  final A = [2, 1, 8, 3, 9, 6];
  final B = [
    [0, 3],
    [3, 5],
    [1, 3],
    [2, 4],
  ];
  print(_Solve(A, B));
}

List<int> _Solve(List<int> A, List<List<int>> B) {
  int n = A.length;
  int Q = B.length;
  List<int> result = List<int>.generate(Q, (_) => 0);

  /// Brute Force
  /*
  for (int i = 0; i < Q; i++) {
    int L = B[i][0];
    int R = B[i][1];

    int count = 0;
    for (int j = L; j <= R; j++) {
      if (A[j] % 2 == 0) count++;
    }

    result[i] = count;
  }

  return result;
  */

  /// Sub-optimal (Preprocess Even Array)
  /*
  List<int> even = List<int>.generate(n, (_) => 0);
  for (int i = 0; i < n; i++) {
    even[i] = (A[i] % 2 == 0) ? 1 : 0;
  }

  for (int i = 0; i < Q; i++) {
    int L = B[i][0];
    int R = B[i][1];

    int sum = 0;
    for (int j = L; j <= R; j++) {
      sum += even[j];
    }

    result[i] = sum;
  }

  return result;
  */

  /// Optimal (Prefix Sum)
  List<int> prefix = List<int>.generate(n, (_) => 0);

  prefix[0] = (A[0] % 2 == 0) ? 1 : 0;

  for (int i = 1; i < n; i++) {
    prefix[i] = prefix[i - 1] + ((A[i] % 2 == 0) ? 1 : 0);
  }

  for (int i = 0; i < Q; i++) {
    int L = B[i][0];
    int R = B[i][1];

    if (L == 0) {
      result[i] = prefix[R];
    } else {
      result[i] = prefix[R] - prefix[L - 1];
    }
  }

  return result;
}
