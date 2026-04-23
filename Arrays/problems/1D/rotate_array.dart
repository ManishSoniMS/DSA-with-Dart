// Question: Rotate an array by B elements
void rotateArray() {
  final A = [1, 2, 3, 4, 5];
  final B = 8;
  final ans = rotate(A, B);
  print(ans);
}

List<int> rotate(List<int> A, int B) {
  int N = A.length;
  if (B == N) return A;
  if (B > N) {
    B = B % N;
  }
  A = reverse(A, 0, N - 1);
  A = reverse(A, 0, B - 1);
  A = reverse(A, B, N - 1);
  return A;
}

List<int> reverse(List<int> A, int S, int E) {
  while (S < E) {
    int temp = A[S];
    A[S] = A[E];
    A[E] = temp;
    S++;
    E--;
  }
  return A;
}
