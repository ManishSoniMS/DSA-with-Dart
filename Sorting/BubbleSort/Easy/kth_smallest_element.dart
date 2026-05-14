/*
Problem Description

Find the Bth smallest element in given array A .

NOTE: Users should try to solve it in less than equal to B swaps.



Problem Constraints

1 <= |A| <= 100000

1 <= B <= min(|A|, 500)

1 <= A[i] <= 109



Input Format

The first argument is an integer array A.

The second argument is integer B.



Output Format

Return the Bth smallest element in given array.



Example Input

Input 1:

A = [2, 1, 4, 3, 2]
B = 3
Input 2:

A = [1, 2]
B = 2


Example Output

Output 1:

2
Output 2:

2


Example Explanation

Explanation 1:

3rd element after sorting is 2.
Explanation 2:

2nd element after sorting is 2.
*/
void KthSmallestElement() {
  List<int> A = [2, 1, 4, 3, 2];
  int B = 3;
  print(_Solve(A, B));
}

int _Solve(List<int> A, int B) {
  /// Brute Force
  /*
  A.sort();
  return A[B - 1];
*/

  /// Sub-optimal (Selection Sort up to B)
  /*
  int n = A.length;

  for (int i = 0; i < B; i++) {
    int minIndex = i;

    for (int j = i + 1; j < n; j++) {
      if (A[j] < A[minIndex]) {
        minIndex = j;
      }
    }

    int temp = A[i];
    A[i] = A[minIndex];
    A[minIndex] = temp;
  }

  return A[B - 1];
  */

  /// Optimal (QuickSelect)
  return quickSelect(A, 0, A.length - 1, B - 1);
}

int quickSelect(List<int> A, int low, int high, int k) {
  if (low <= high) {
    int pivotIndex = partition(A, low, high);

    if (pivotIndex == k) {
      return A[pivotIndex];
    } else if (pivotIndex > k) {
      return quickSelect(A, low, pivotIndex - 1, k);
    } else {
      return quickSelect(A, pivotIndex + 1, high, k);
    }
  }
  return -1;
}

int partition(List<int> A, int low, int high) {
  int pivot = A[high];
  int i = low;

  for (int j = low; j < high; j++) {
    if (A[j] <= pivot) {
      int temp = A[i];
      A[i] = A[j];
      A[j] = temp;
      i++;
    }
  }

  int temp = A[i];
  A[i] = A[high];
  A[high] = temp;

  return i;
}
