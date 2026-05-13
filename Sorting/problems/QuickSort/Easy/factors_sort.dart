/*
Problem Description

You are given an array A of N elements. Sort the given array in increasing order of number of distinct factors of each element, i.e., element having the least number of factors should be the first to be displayed and the number having highest number of factors should be the last one. If 2 elements have same number of factors, then number with less value should come first.

Note: You cannot use any extra space


Problem Constraints

1 <= N <= 104
1 <= A[i] <= 104


Input Format

First argument A is an array of integers.


Output Format

Return an array of integers.


Example Input

Input 1:
A = [6, 8, 9]
Input 2:
A = [2, 4, 7]


Example Output

Output 1:
[9, 6, 8]
Output 2:
[2, 7, 4]


Example Explanation

For Input 1:
The number 9 has 3 factors, 6 has 4 factors and 8 has 4 factors.
For Input 2:
The number 2 has 2 factors, 7 has 2 factors and 4 has 3 factors.
*/

void FactorsSort() {
  // List<int> A = [6, 8, 9]; // Output: [9, 6, 8]
  List<int> A = [6, 8, 11, 9, 1, 7, 2];
  print(_Solve(A));
}

/*
 -1:  (or any negative): Means keep (a) before (b).
 +1:  (or any positive): Means put (a) after (b).
  0:  Means they are equal. No change in position is needed.
*/

List<int> _Solve(List<int> A) {
  /// Using build-in methods
  A.sort((a, b) {
    int f1 = CalculateFactors(a);
    int f2 = CalculateFactors(b);
    if (f1 == f2) {
      if (a < b) return -1;
      if (a > b) return 1;
      return 0;
    }
    if (f1 < f2) return -1;
    return 1;
  });
  return A;
}

int CalculateFactors(int X) {
  if (X == 1) return 1;

  int count = 1;

  for (int i = 1; i * i <= X; i++) {
    if (X % i == 0) {
      if (i * i == X) {
        count++;
      } else {
        count += 2;
      }
    }
  }

  return count;
}
