void QuickSort() {
  // List<int> A = [7, 4, 8, 10, 6];
  List<int> A = [6, 2, 0, 4, 5];
  // List<int> A = [1, 2, 3, 4, 5];
  // List<int> A = [22, 44, 7, 68, 74, 99, 87, 8, 29];

  _Solve(A, 0, A.length - 1);
  print(A);
}

void _Solve(List<int> A, int start, int end) {
  if (start < end) {
    _MedianPivot(A, start, end);
    int p = _PartitionIndex(A, start, end);
    _Solve(A, start, p - 1);
    _Solve(A, p + 1, end);
  }
}

int _PartitionIndex(List<int> A, int start, int end) {
  int pivot = A[start];
  int left = start + 1;
  int right = end;

  while (left <= right) {
    if (A[left] <= pivot) {
      left++;
    } else if (A[right] > pivot) {
      right--;
    } else {
      _Swap(A, left, right);
    }
  }

  _Swap(A, start, right);

  return right;
}

void _MedianPivot(List<int> A, int start, int end) {
  int mid = start + (end - start) ~/ 2;

  if (A[start] > A[mid]) _Swap(A, start, mid);

  if (A[start] > A[end]) _Swap(A, start, end);

  if (A[mid] > A[end]) _Swap(A, mid, end);

  _Swap(A, start, mid);
}

void _Swap(List<int> A, int left, int right) {
  int temp = A[left];
  A[left] = A[right];
  A[right] = temp;
}
