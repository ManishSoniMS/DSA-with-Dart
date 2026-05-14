/*
Problem Description

Given an integer array A, find if an integer p exists in the array such that the number of integers greater than p in the array equals p.



Problem Constraints

1 <= |A| <= 2*105
-108 <= A[i] <= 108


Input Format

First and only argument is an integer array A.



Output Format

Return 1 if any such integer p is present else, return -1.



Example Input

Input 1:

A = [3, 2, 1, 3]
Input 2:

A = [1, 1, 3, 3]


Example Output

Output 1:

1
Output 2:

-1


Example Explanation

Explanation 1:

For integer 2, there are 2 greater elements in the array..
Explanation 2:

There exist no integer satisfying the required conditions.
*/

void NobleInteger() {
  List<int> A = [3, 2, 1, 3];

  print(_Solve(A));
}

int _Solve(List<int> A) {
  int n = A.length;

  /// Brute Force
  /*
  for (int i = 0; i < n; i++) {
    int p = A[i];
    int count = 0;

    for (int j = 0; j < n; j++) {
      if (A[j] > p) count++;
    }

    if (count == p) return 1;
  }
*/

  /// Sub-optimal (Sort + Count)

  A.sort();
  for (int i = 0; i < n; i++) {
    int p = A[i];
    // skip duplicates
    if (i < n - 1 && A[i] == A[i + 1]) continue;
    int greater = n - i - 1;
    if (greater == p) return 1;
  }

  return -1;
}
