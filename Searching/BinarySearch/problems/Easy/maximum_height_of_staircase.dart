/*
Problem Description

Given an integer A representing the number of square blocks. The height of each square block is 1. The task is to create a staircase of max-height using these blocks.

The first stair would require only one block, and the second stair would require two blocks, and so on.

Find and return the maximum height of the staircase.



Problem Constraints

0 <= A <= 109


Input Format

The only argument given is integer A.



Output Format

Return the maximum height of the staircase using these blocks.



Example Input

Input 1:

A = 10
Input 2:

A = 20


Example Output

Output 1:

4
Output 2:

5


Example Explanation

Explanation 1:

The stairs formed will have height 1, 2, 3, 4.
Explanation 2:

The stairs formed will have height 1, 2, 3, 4, 5.
*/

void MaximumHeightOfStaircase() {
  int A = 92761; // 430
  print(_Solve(A));
}

int _Solve(int A) {
  /// brute force
  /*
  int i = 1;

  while (sum(i) <= A) {
    final l = sum(i);
    print('stair step - $l');
    if (l == A) {
      return i;
    } else if (sum(i + 1) > A) {
      break;
    } else {
      i++;
    }
  }

  return i;
  */
  /// Optimal Approach
  if (A == 0) return 0;
  int l = 0;
  int r = A;
  int ans = 0;
  while (l <= r) {
    final mid = l + ((r - l) ~/ 2);
    final blocks = (mid * (mid + 1)) / 2;
    if (blocks <= A) {
      l = mid + 1;
      ans = mid;
    } else {
      r = mid - 1;
    }
  }
  return ans;
}
