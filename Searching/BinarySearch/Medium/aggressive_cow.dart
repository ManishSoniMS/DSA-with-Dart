/*
Problem Description

Farmer John has built a new long barn with N stalls. Given an array of integers A of size N where each element of the array represents the location of the stall and an integer B which represents the number of cows.

His cows don't like this barn layout and become aggressive towards each other once put into a stall. To prevent the cows from hurting each other, John wants to assign the cows to the stalls, such that the minimum distance between any two of them is as large as possible. What is the largest minimum distance?



Problem Constraints

2 <= N <= 100000
0 <= A[i] <= 109
2 <= B <= N



Input Format

The first argument given is the integer array A.
The second argument given is the integer B.



Output Format

Return the largest minimum distance possible among the cows.



Example Input

Input 1:

A = [1, 2, 3, 4, 5]
B = 3
Input 2:

A = [1, 2]
B = 2
Input 3 :
A = [5, 17, 100, 11]
B = 2


Example Output

Output 1:

2
Output 2:

1
Output 3:

95


Example Explanation

Explanation 1:

John can assign the stalls at location 1, 3 and 5 to the 3 cows respectively. So the minimum distance will be 2.
Explanation 2:

The minimum distance will be 1.
*/

void AggressiveCow() {
  // List<int> A = [1, 2, 3, 4, 5];
  // int B = 3;
  List<int> A = [5, 17, 100, 11];
  int B = 2;
  print(_Solve(A, B));
}

/// minimum distance will be the maximum distance between two stalls
/// maximum distance will be the distance first and last stall assuming that there is only 2 cows
int _Solve(List<int> A, int B) {
  A.sort();

  int lower = 1;
  int higher = A.last - A.first;

  int result = 0;

  while (lower <= higher) {
    final mid = lower + (higher - lower) ~/ 2;
    if (canPlace(A, B, mid)) {
      result = mid;
      lower = mid + 1;
    } else {
      higher = mid - 1;
    }
  }

  return result;
}

bool canPlace(List<int> A, int B, int minDist) {
  int cowsPlaced = 1;
  int lastPlaced = A[0];

  for (int i = 1; i < A.length; i++) {
    if (A[i] - lastPlaced >= minDist) {
      cowsPlaced++;
      lastPlaced = A[i];
      if (cowsPlaced == B) return true;
    }
  }
  return cowsPlaced >= B;
}
