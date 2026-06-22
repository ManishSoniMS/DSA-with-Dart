/*
Problem Description

Write a recursive function that checks whether string A is a palindrome or Not.
Return 1 if the string A is a palindrome, else return 0.

Note: A palindrome is a string that's the same when read forward and backward.



Problem Constraints

1 <= |A| <= 50000




String A consists only of lowercase letters.






Input Format

The first and only argument is a string A.



Output Format

Return 1 if the string A is a palindrome, else return 0.



Example Input

Input 1:

A = "naman"
Input 2:

A = "strings"


Example Output

Output 1:

1
Output 2:

0


Example Explanation

Explanation 1:

"naman" is a palindomic string, so return 1.
Explanation 2:

"strings" is not a palindrome, so return 0.
*/
void checkPalindrome() {
  String A = "strings";
  // String A = "naman";
  print(_Solve(A));
}

int _Solve(String A) {
  /// Brute force - linear approach
  // int len = A.length;
  // for (int i = 0; i < len / 2; i++) {
  //   if (A[i] != A[len - i - 1]) return 0;
  // }

  /// Recursion
  return _recursion(A, 0);
}

int _recursion(String A, int i) {
  int len = A.length;

  if (i <= len / 2) {
    if (A[i] == A[len - i - 1]) {
      return _recursion(A, i + 1);
    } else {
      return 0;
    }
  } else {
    return 1;
  }
}
