// Question: You are given an integer array A.
// You have to find the second largest element/value in the array
// or report that no such element exists.

int min = -1000000;

void secondLargestElement() {
  final A = [0, min];
  final ans = _Solve(A);
  print(ans);
}

int _Solve(List<int> A) {
  if (A.length < 2) return -1;
  int f = min;
  int s = min;
  bool foundSecond = false;
  for (int x in A) {
    if (x > f) {
      s = f;
      f = x;
      if (s != min) foundSecond = true;
      print('x > f == true');
    } else if (x != f && x > s) {
      s = x;
      foundSecond = true;
      print('x != f && x > s == true');
    }

    print('x: $x, f: $f, s: $s foundSecond: $foundSecond');
  }
  return foundSecond ? s : -1;
}
