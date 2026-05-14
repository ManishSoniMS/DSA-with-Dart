/*
Partition the array
Given an integer array, consider first element as pivot, rearrange the elements such that for i:
if A[i] < p then it should be present on left side
if A[i] > p then it should be present on right side
*/
void Partition() {
  // List<int> A = [54, 26, 93, 17, 77, 31, 44, 55, 20];
  List<int> A = [7, 4, 8, 10, 6];

  A = _Solve(A, 0, A.length - 1);
  print(A);
}

List<int> _Solve(List<int> A, int first, int last) {
  int pivot = A[first];
  int l = first + 1;
  int r = last;
  while (l <= r) {
    if (A[l] <= pivot) {
      l++;
    } else if (A[r] > pivot) {
      r--;
    } else {
      int temp = A[l];
      A[l] = A[r];
      A[r] = temp;
    }
  }
  int temp = A[first];
  A[first] = A[r];
  A[r] = temp;
  return A;
}
