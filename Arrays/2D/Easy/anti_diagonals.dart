/*
Problem Description

Give a N * N square matrix A, return an array of its anti-diagonals. Look at the example for more details.


Problem Constraints

1<= N <= 1000
1<= A[i][j] <= 1e9


Input Format

Only argument is a 2D array A of size N * N.


Output Format

Return a 2D integer array of size (2 * N-1) * N, representing the anti-diagonals of input array A.
The vacant spaces in the grid should be assigned to 0.


Example Input

Input 1:
1 2 3
4 5 6
7 8 9
Input 2:

1 2
3 4


Example Output

Output 1:
1 0 0
2 4 0
3 5 7
6 8 0
9 0 0
Output 2:

1 0
2 3
4 0


Example Explanation

For input 1:
The first anti diagonal of the matrix is [1 ], the rest spaces shoud be filled with 0 making the row as [1, 0, 0].
The second anti diagonal of the matrix is [2, 4 ], the rest spaces shoud be filled with 0 making the row as [2, 4, 0].
The third anti diagonal of the matrix is [3, 5, 7 ], the rest spaces shoud be filled with 0 making the row as [3, 5, 7].
The fourth anti diagonal of the matrix is [6, 8 ], the rest spaces shoud be filled with 0 making the row as [6, 8, 0].
The fifth anti diagonal of the matrix is [9 ], the rest spaces shoud be filled with 0 making the row as [9, 0, 0].
For input 2:

The first anti diagonal of the matrix is [1 ], the rest spaces shoud be filled with 0 making the row as [1, 0, 0].
The second anti diagonal of the matrix is [2, 4 ], the rest spaces shoud be filled with 0 making the row as [2, 4, 0].
The third anti diagonal of the matrix is [3, 0, 0 ], the rest spaces shoud be filled with 0 making the row as [3, 0, 0].
*/

import 'dart:math' as Math;

void AntiDiagonals() {
  List<List<int>> A = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  print(_Solve(A));
}

List<List<int>> _Solve(List<List<int>> A) {
  int n = A.length;
  int r = (2 * (n - 1)) + 1;
  List<List<int>> result = List.generate(r, (_) => List.generate(n, (_) => 0));

  /// Brute Force (Check all cells)
  /*
  for (int s = 0; s < r; s++) {
    int col = 0;

    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        if (i + j == s) {
          result[s][col++] = A[i][j];
        }
      }
    }
  }

  return result;
*/

  /// Better Traversal (Start Points)
  /*
  int row = 0;

  // Top row
  for (int colStart = 0; colStart < n; colStart++) {
    int i = 0, j = colStart;
    int col = 0;

    while (i < n && j >= 0) {
      result[row][col++] = A[i][j];
      i++;
      j--;
    }
    row++;
  }

  // Last column
  for (int rowStart = 1; rowStart < n; rowStart++) {
    int i = rowStart, j = n - 1;
    int col = 0;

    while (i < n && j >= 0) {
      result[row][col++] = A[i][j];
      i++;
      j--;
    }
    row++;
  }

  return result;
  */

  /// Optimal (Same as Above, Clean Formulation)
  for (int k = 0; k <= 2 * (n - 1); k++) {
    int i = Math.max(0, k - (n - 1));
    int j = k - i;

    int col = 0;

    while (i < n && j >= 0) {
      result[k][col++] = A[i][j];
      i++;
      j--;
    }
  }

  return result;
}
