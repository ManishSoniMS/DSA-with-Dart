# Data Structures & Algorithms

A personal study repository of classic DSA problems implemented in **Dart**, organized by topic. Each problem is self-contained with inline test cases and, where applicable, multiple solution approaches (brute force → optimal).

---

## Table of Contents

- [Getting Started](#getting-started)
- [Repository Layout](#repository-layout)
- [Chapter 1 — Arrays (1D)](#chapter-1--arrays-1d)
- [Chapter 2 — Arrays (2D)](#chapter-2--arrays-2d)
- [Chapter 3 — Strings](#chapter-3--strings)
- [Chapter 4 — Sorting](#chapter-4--sorting)
- [Shared Utilities](#shared-utilities)

---

## Getting Started

**Prerequisites:** [Dart SDK](https://dart.dev/get-dart) installed.

Run any module from the project root:

```sh
dart run Arrays/main.dart
dart run String/main.dart
dart run Sorting/main.dart
```

Each `main.dart` has one active function call and the rest commented out. To run a specific problem, swap the active call:

```dart
// Arrays/main.dart
void main() {
  equilibriumIndex();   // ← uncomment the one you want
  // checkPair();
  // leaderInArray();
}
```

---

## Repository Layout

```
DSA/
├── constants.dart                  # Shared Int.max / Int.min constants
├── Arrays/
│   ├── main.dart                   # Entry point for Arrays module
│   └── problems/
│       ├── problems.dart           # Barrel export for all array problems
│       ├── 1D/                     # One-dimensional array problems
│       └── 2D/                     # Matrix / two-dimensional problems
├── String/
│   ├── main.dart
│   └── problems/
│       ├── problems.dart
│       └── pair_count.dart
└── Sorting/
    ├── main.dart
    └── problems/
        ├── problems.dart
        └── bubble_sort.dart
```

---

## Chapter 1 — Arrays (1D)

### 1.1 Check Pair Sum
**File:** `Arrays/problems/1D/check_pair.dart`

Given an array `A` and a target `B`, determine whether any two elements sum to `B`.

| Approach | Time | Space |
|---|---|---|
| Hash Set (single pass) | O(N) | O(N) |

**Key idea:** For each element, check if its complement `B - A[i]` already exists in a set.

---

### 1.2 Rotate Array
**File:** `Arrays/problems/1D/rotate_array.dart`

Left-rotate array `A` by `B` positions.

| Approach | Time | Space |
|---|---|---|
| Triple Reverse | O(N) | O(1) |

**Key idea:** Reverse the full array, then reverse the first `B` and last `N-B` segments independently. Handles `B > N` via modulo.

---

### 1.3 Minimum Time to Equal Elements
**File:** `Arrays/problems/1D/minimum_time.dart`

Given an array, find the minimum number of increment-by-1 operations to make all elements equal.

| Approach | Time | Space |
|---|---|---|
| Single Pass (max × N − sum) | O(N) | O(1) |

**Key idea:** The target is always the maximum. Total increments = `max * N - sum(A)`.

---

### 1.4 Second Largest Element
**File:** `Arrays/problems/1D/second_largest_element.dart`

Find the second distinct largest value in an array, or `-1` if it doesn't exist.

| Approach | Time | Space |
|---|---|---|
| Single Pass (two variables) | O(N) | O(1) |

---

### 1.5 Count Elements Less Than Maximum
**File:** `Arrays/problems/1D/number_of_elements_less_than_maximum.dart`

Count how many elements have at least one element greater than themselves (i.e., all elements that are not the maximum).

| Approach | Time | Space |
|---|---|---|
| Single Pass (count max occurrences) | O(N) | O(1) |

**Key idea:** `answer = N - count(max)`.

---

### 1.6 Generate All Sub-arrays
**File:** `Arrays/problems/1D/sub_array.dart`

Enumerate every contiguous sub-array of a given array.

| Approach | Time | Space |
|---|---|---|
| Triple nested loop | O(N³) | O(N²) |

---

### 1.7 Equilibrium Index
**File:** `Arrays/problems/1D/equilibrium_index.dart`

Find the smallest index `i` where the sum of elements to the left equals the sum of elements to the right. Return `-1` if none exists.

| Approach | Time | Space |
|---|---|---|
| Prefix Sum (total sum → walk left) | O(N) | O(1) |

**Key idea:** `right = totalSum - leftSum - A[i]`. Check `left == right` at each step.

---

### 1.8 Leader in Array
**File:** `Arrays/problems/1D/leader_in_array.dart`

Find all leaders — elements strictly greater than every element to their right. The rightmost element is always a leader.

| Approach | Time | Space |
|---|---|---|
| Brute Force (nested loops) | O(N²) | O(1) |
| Optimal (right-to-left max scan) | O(N) | O(1) |

---

### 1.9 Pick From Both Sides
**File:** `Arrays/problems/1D/pick_from_both_side.dart`

Remove exactly `B` elements from either end of the array (any split of front/back). Return the maximum possible sum of removed elements.

| Approach | Time | Space |
|---|---|---|
| Brute Force (try all splits) | O(B²) | O(1) |
| Prefix + Suffix arrays | O(B) | O(B) |
| Sliding Window (find min middle window) | O(N) | O(1) |

**Key idea (optimal):** The B removed elements are the complement of a contiguous window of size `N - B`. Minimize the window sum → maximize the removed sum.

---

### 1.10 Best Time to Buy and Sell Stocks
**File:** `Arrays/problems/1D/best_time_to_buy_and_sell_stocks.dart`

Given daily stock prices, find the maximum profit from at most one buy-sell transaction.

| Approach | Time | Space |
|---|---|---|
| Brute Force (all pairs) | O(N²) | O(1) |
| Prefix Minimum Array | O(N) | O(N) |
| Single Pass (track running min) | O(N) | O(1) |

---

### 1.11 Closest Min & Max
**File:** `Arrays/problems/1D/closest_min_max.dart`

Find the length of the smallest subarray containing at least one occurrence of both the minimum and the maximum value.

> **Status:** Work in progress — solution stub present, edge case (repeated elements) being handled.

| Approach | Time | Space |
|---|---|---|
| Two-pointer scan (track last seen indices) | O(N) | O(1) |

---

## Chapter 2 — Arrays (2D)

### 2.1 Range Sum Query (Even Indices)
**File:** `Arrays/problems/2D/range_sum.dart`

Given array `A` and a list of `[L, R]` queries, return the sum of elements at even indices within each range.

| Approach | Time | Space |
|---|---|---|
| Prefix Sum (even-indexed) | O(N + Q) | O(N) |

**Key idea:** Build a prefix array `pfE` where `pfE[i]` accumulates only even-indexed values. Answer each query in O(1).

---

### 2.2 Matrix Multiplication
**File:** `Arrays/problems/2D/matrix_multiplication.dart`

Multiply two 2D matrices A and B.

> **Status:** Stub — implementation pending.

---

## Chapter 3 — Strings

### 3.1 Count "AG" Pairs
**File:** `String/problems/pair_count.dart`

Count the number of pairs `(i, j)` where `i < j`, `A[i] == 'A'`, and `A[j] == 'G'`.

| Approach | Time | Space |
|---|---|---|
| Brute Force (nested loops) | O(N²) | O(1) |
| Optimal (running 'A' count) | O(N) | O(1) |

**Key idea:** Track `countA` as you walk left to right. Each time you see `'G'`, add the current `countA` to the result.

---

## Chapter 4 — Sorting

### 4.1 Bubble Sort
**File:** `Sorting/problems/bubble_sort.dart`

Classic bubble sort with early-exit optimization.

| Approach | Time (worst) | Time (best) | Space |
|---|---|---|---|
| Optimized Bubble Sort | O(N²) | O(N) | O(1) |

**Key idea:** Track a `swapped` flag per pass. If no swap occurs, the array is already sorted — break early.

---

## Shared Utilities

### `constants.dart`

```dart
class Int {
  static num get max => 100000000;
  static num get min => -100000000;
}
```

Used across problems as a stand-in for integer bounds (e.g., initializing min/max trackers). Import with:

```dart
import '../../../constants.dart';
```

---

## Problems at a Glance

| # | Problem | Topic | Optimal TC | File |
|---|---|---|---|---|
| 1 | Check Pair Sum | Arrays 1D | O(N) | `Arrays/problems/1D/check_pair.dart` |
| 2 | Rotate Array | Arrays 1D | O(N) | `Arrays/problems/1D/rotate_array.dart` |
| 3 | Minimum Time to Equal Elements | Arrays 1D | O(N) | `Arrays/problems/1D/minimum_time.dart` |
| 4 | Second Largest Element | Arrays 1D | O(N) | `Arrays/problems/1D/second_largest_element.dart` |
| 5 | Count Elements < Maximum | Arrays 1D | O(N) | `Arrays/problems/1D/number_of_elements_less_than_maximum.dart` |
| 6 | Generate All Sub-arrays | Arrays 1D | O(N³) | `Arrays/problems/1D/sub_array.dart` |
| 7 | Equilibrium Index | Arrays 1D | O(N) | `Arrays/problems/1D/equilibrium_index.dart` |
| 8 | Leader in Array | Arrays 1D | O(N) | `Arrays/problems/1D/leader_in_array.dart` |
| 9 | Pick From Both Sides | Arrays 1D | O(N) | `Arrays/problems/1D/pick_from_both_side.dart` |
| 10 | Best Time to Buy & Sell Stocks | Arrays 1D | O(N) | `Arrays/problems/1D/best_time_to_buy_and_sell_stocks.dart` |
| 11 | Closest Min & Max | Arrays 1D | O(N) | `Arrays/problems/1D/closest_min_max.dart` |
| 12 | Range Sum Query (Even Indices) | Arrays 2D | O(N+Q) | `Arrays/problems/2D/range_sum.dart` |
| 13 | Matrix Multiplication | Arrays 2D | O(N³) | `Arrays/problems/2D/matrix_multiplication.dart` |
| 14 | Count "AG" Pairs | Strings | O(N) | `String/problems/pair_count.dart` |
| 15 | Bubble Sort | Sorting | O(N²) | `Sorting/problems/bubble_sort.dart` |
