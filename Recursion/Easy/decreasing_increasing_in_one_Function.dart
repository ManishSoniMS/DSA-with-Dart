/*

Problem Description

Print N numbers in Decreasing Order and then in Increasing Order.

You are given a positive number N.
You are required to print the numbers from N to 1.
You are required to not use any loops. Don't change the signature of the function DecThenInc function.
Note : Please print an new line after printing the output.


Problem Constraints

1 <= N <= 100


Input Format

The first line contains a single integer N.


Output Format

A single line having number printed from N to 1 and then from 1 to N.


Example Input

Input 2:
1
Input 1:
4


Example Output

Output 1:
1 1
Output 2:
4 3 2 1 1 2 3 4


Example Explanation

Elements are First printer from N down to 1 and then 1 upto N.


*/
void DecreasingIncreasingInOneFunction() {
  final int A = 3;
  _Solve(A);
  print("");
}

// d = 0 --
// d = 1 ++
void _Solve(int A) {
  /// Brute Force
  // for (int i = A; i > 0; i--) {
  //   print(i);
  // }
  //
  // for (int i = 1; i <= A; i++) {
  //   print(i);
  // }

  /// Recursion
  if (A < 1) return;
  print(A);
  _Solve(A - 1);
  print(A);
}
