/*

Problem Description

Given an array of integers A with N elements and a target integer B, the task is to find all the indices at which B occurs in the array.

Note: The problem encourages recursive logic for learning purposes. Although the online judge doesn't enforce recursion, it's recommended to use recursive solutions to align with the question's spirit.


Problem Constraints

1 <= N <= 103
1 <= A[i] <= 103
1 <= B <= 103
It is guaranteed that the target B, exist atleast once in the Array A.


Input Format

First Argument in an Array of Integers, A.
Second Argument is the Target, B.


Output Format

Return the sorted array of indices.


Example Input

Input 1:
A = [1, 2, 3, 4, 5]
B = 1
Input 2:
A = [8, 9, 5, 6, 5, 5]
B = 5


Example Output

Output 1:
[0]
Output 2:
[2, 4, 5]


Example Explanation

Explanation 1:
The Target, 1 occurs on Index = 0.  So returning [0]
Explanation 2:
Here, the target 5 occurs at indexes [2, 4, 5].

*/

void AllIndicesOfArray() {
  List<int> A = [8, 9, 5, 6, 5, 5];
  int B = 5;
  // _Solve(A, B);
  final ans = _Solve(A, B, 0, []);
  // final ans = findIndices(A, B, 0, 0);
  print(ans);
}

/// Brute force - linear approach
// void _Solve(List<int> A, int B) {
//   List<int> ans = [];
//   for (int i = 0; i < A.length; i++) {
//     if (A[i] == B) ans.add(i);
//   }
//   print(ans);
// }

/// Recursive approach
List<int> _Solve(List<int> A, int B, int i, List<int> result) {
  // final length = findOccurrence(A, B, 0);

  List<int> ans = [];
  getMatch(A, B, 0, ans);

  return ans;
}

// int findOccurrence(List<int> A, int B, int i) {
//   if (i == A.length) return 0;
//   if (A[i] == B) return findOccurrence(A, B, i + 1) + 1;
//   return findOccurrence(A, B, i + 1);
// }

void getMatch(List<int> A, int B, int i, List<int> result) {
  if (i == A.length) return;
  if (A[i] == B) {
    result.add(i);
  }
  getMatch(A, B, i + 1, result);
}
