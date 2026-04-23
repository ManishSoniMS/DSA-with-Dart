/*
Problem Description

Say you have an array, A, for which the ith element is the price of a given stock on day i.
If you were only permitted to complete at most one transaction (ie, buy one and sell one share of the stock), design an algorithm to find the maximum profit.

Return the maximum possible profit.


Problem Constraints

0 <= A.size() <= 700000


1 <= A[i] <= 107


Input Format

The first and the only argument is an array of integers, A.


Output Format

Return an integer, representing the maximum possible profit.


Example Input

Input 1:
A = [1, 2]
Input 2:

A = [1, 4, 5, 2, 4]


Example Output

Output 1:
1
Output 2:

4


Example Explanation

Explanation 1:
Buy the stock on day 0, and sell it on day 1.
Explanation 2:

Buy the stock on day 0, and sell it on day 2.

*/

import 'dart:math' as Math;

import '../../../constants.dart';

void BestTimeToBuyAndSellStocks() {
  List<int> A = [1, 4, 5, 2, 4];
  print(_solve(A));
}

int _solve(List<int> A) {
  int n = A.length;
  int maxProfit = 0;

  /// Brute force
  /*
  for (int i = 0; i < n; i++) {
    for (int j = i + 1; j < n; j++) {
      int profit = A[j] - A[i];
      maxProfit = Math.max(maxProfit, profit);
    }
  }

  return maxProfit;
*/
  /// Sub-optimal (Prefix Minimum Array)
  /*
  if (n == 0) return 0;

  List<int> minPrefix = List<int>.generate(n, (_) => 0);
  minPrefix[0] = A[0];

  for (int i = 1; i < n; i++) {
    minPrefix[i] = Math.min(minPrefix[i - 1], A[i]);
  }

  for (int i = 1; i < n; i++) {
    int profit = A[i] - minPrefix[i - 1];
    maxProfit = Math.max(maxProfit, profit);
  }

  return maxProfit;
*/

  /// Optimal (Single Pass, Constant Space)
  int minPrice = Int.max.toInt();

  for (int price in A) {
    if (price < minPrice) {
      minPrice = price;
    } else {
      int profit = price - minPrice;
      maxProfit = Math.max(maxProfit, profit);
    }
  }

  return maxProfit;
}
