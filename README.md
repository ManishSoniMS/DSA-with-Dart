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
│       ├── 1D/
│       │   ├── VeryEasy/           # Very easy 1D problems
│       │   ├── Easy/               # Easy 1D problems
│       │   └── Medium/             # Medium 1D problems
│       └── 2D/
│           ├── VeryEasy/           # Very easy 2D / subarray problems
│           ├── Easy/               # Easy 2D problems
│           └── Medium/             # Medium 2D / subarray problems
├── String/
│   ├── main.dart
│   └── problems/
│       ├── problems.dart
│       └── Easy/
│           └── pair_count.dart
└── Sorting/
    ├── main.dart
    └── problems/
        ├── problems.dart
        ├── VeryEasy/               # Very easy sorting problems
        │   └── arithmetic_progression.dart
        └── Easy/                   # Easy sorting problems
            ├── bubble_sort.dart
            ├── elements_removal.dart
            ├── kth_smallest_element.dart
            └── noble_integer.dart
```

---

## Chapter 1 — Arrays (1D)

### VeryEasy

#### 1.1 Generate All Sub-arrays
**File:** `Arrays/problems/1D/VeryEasy/sub_array.dart`

Enumerate every contiguous sub-array of a given array.

| Approach           | Time  | Space |
|--------------------|-------|-------|
| Triple nested loop | O(N³) | O(N²) |

---

### Easy

#### 1.2 Check Pair Sum
**File:** `Arrays/problems/1D/Easy/check_pair.dart`

Given an array `A` and a target `B`, determine whether any two elements sum to `B`.

| Approach               | Time | Space |
|------------------------|------|-------|
| Hash Set (single pass) | O(N) | O(N)  |

**Key idea:** For each element, check if its complement `B - A[i]` already exists in a set.

---

#### 1.3 Rotate Array
**File:** `Arrays/problems/1D/Easy/rotate_array.dart`

Left-rotate array `A` by `B` positions.

| Approach       | Time | Space |
|----------------|------|-------|
| Triple Reverse | O(N) | O(1)  |

**Key idea:** Reverse the full array, then reverse the first `B` and last `N-B` segments independently. Handles `B > N` via modulo.

---

#### 1.4 Minimum Time to Equal Elements
**File:** `Arrays/problems/1D/Easy/minimum_time.dart`

Given an array, find the minimum number of increment-by-1 operations to make all elements equal.

| Approach                    | Time | Space |
|-----------------------------|------|-------|
| Single Pass (max × N − sum) | O(N) | O(1)  |

**Key idea:** The target is always the maximum. Total increments = `max * N - sum(A)`.

---

#### 1.5 Second Largest Element
**File:** `Arrays/problems/1D/Easy/second_largest_element.dart`

Find the second distinct largest value in an array, or `-1` if it doesn't exist.

| Approach                    | Time | Space |
|-----------------------------|------|-------|
| Single Pass (two variables) | O(N) | O(1)  |

---

#### 1.6 Count Elements Less Than Maximum
**File:** `Arrays/problems/1D/Easy/number_of_elements_less_than_maximum.dart`

Count how many elements have at least one element greater than themselves (i.e., all elements that are not the maximum).

| Approach                            | Time | Space |
|-------------------------------------|------|-------|
| Single Pass (count max occurrences) | O(N) | O(1)  |

**Key idea:** `answer = N - count(max)`.

---

#### 1.7 Equilibrium Index
**File:** `Arrays/problems/1D/Easy/equilibrium_index.dart`

Find the smallest index `i` where the sum of elements to the left equals the sum of elements to the right. Return `-1` if none exists.

| Approach                           | Time | Space |
|------------------------------------|------|-------|
| Prefix Sum (total sum → walk left) | O(N) | O(1)  |

**Key idea:** `right = totalSum - leftSum - A[i]`. Check `left == right` at each step.

---

#### 1.8 Leader in Array
**File:** `Arrays/problems/1D/Easy/leader_in_array.dart`

Find all leaders — elements strictly greater than every element to their right. The rightmost element is always a leader.

| Approach                         | Time  | Space |
|----------------------------------|-------|-------|
| Brute Force (nested loops)       | O(N²) | O(1)  |
| Optimal (right-to-left max scan) | O(N)  | O(1)  |

---

#### 1.9 Best Time to Buy and Sell Stocks
**File:** `Arrays/problems/1D/Easy/best_time_to_buy_and_sell_stocks.dart`

Given daily stock prices, find the maximum profit from at most one buy-sell transaction.

| Approach                        | Time  | Space |
|---------------------------------|-------|-------|
| Brute Force (all pairs)         | O(N²) | O(1)  |
| Prefix Minimum Array            | O(N)  | O(N)  |
| Single Pass (track running min) | O(N)  | O(1)  |

---

#### 1.10 Even Numbers in a Range
**File:** `Arrays/problems/1D/Easy/even_numbers_in_range.dart`

Given array `A` and `Q` queries `[L, R]`, return the count of even numbers in `A[L..R]` for each query.

| Approach                      | Time     | Space |
|-------------------------------|----------|-------|
| Brute Force (scan each range) | O(N·Q)   | O(1)  |
| Sub-optimal (even flag array) | O(N·Q)   | O(N)  |
| Optimal (Prefix Sum)          | O(N + Q) | O(N)  |

**Key idea:** Build prefix count of even elements; answer each query in O(1).

---

#### 1.11 Minimum Swaps
**File:** `Arrays/problems/1D/Easy/minimum_swaps.dart`

Given array `A` and integer `B`, find the minimum number of swaps to group all elements ≤ `B` together.

| Approach                  | Time  | Space |
|---------------------------|-------|-------|
| Brute Force (all windows) | O(N²) | O(1)  |
| Optimal (Sliding Window)  | O(N)  | O(1)  |

**Key idea:** Count elements ≤ B (= window size `k`). Slide a window of size `k`; the number of elements > B inside the window equals swaps needed. Minimize across all windows.

---

### Medium

#### 1.12 Pick From Both Sides
**File:** `Arrays/problems/1D/Medium/pick_from_both_side.dart`

Remove exactly `B` elements from either end of the array (any split of front/back). Return the maximum possible sum of removed elements.

| Approach                                | Time  | Space |
|-----------------------------------------|-------|-------|
| Brute Force (try all splits)            | O(B²) | O(1)  |
| Prefix + Suffix arrays                  | O(B)  | O(B)  |
| Sliding Window (find min middle window) | O(N)  | O(1)  |

**Key idea (optimal):** The B removed elements are the complement of a contiguous window of size `N - B`. Minimize the window sum → maximize the removed sum.

---

#### 1.13 Closest Min & Max
**File:** `Arrays/problems/1D/Medium/closest_min_max.dart`

Find the length of the smallest subarray containing at least one occurrence of both the minimum and the maximum value.

| Approach                                   | Time | Space |
|--------------------------------------------|------|-------|
| Two-pointer scan (track last seen indices) | O(N) | O(1)  |

---

#### 1.14 Special Index
**File:** `Arrays/problems/1D/Medium/special_index.dart`

Count indices such that removing the element at that index makes the sum of even-indexed elements equal to the sum of odd-indexed elements.

| Approach                              | Time  | Space |
|---------------------------------------|-------|-------|
| Brute Force (rebuild array per index) | O(N²) | O(1)  |
| Sub-optimal (Prefix Sum Arrays)       | O(N)  | O(N)  |
| Optimal (Running prefix variables)    | O(N)  | O(1)  |

**Key idea:** Track `leftEven`/`leftOdd` and `rightEven`/`rightOdd` in one pass; after removing index `i`, even elements from the right shift parity — add right-odd to left-even and vice versa.

---

## Chapter 2 — Arrays (2D)

### VeryEasy

#### 2.1 Maximum Subarray Sum of Fixed Length
**File:** `Arrays/problems/2D/VeryEasy/maximum_subarray_sum_of_fixed_length.dart`

Given array `A` and window size `B`, find the maximum sum of any contiguous subarray of length `B`.

| Approach                   | Time   | Space |
|----------------------------|--------|-------|
| Brute Force (nested loops) | O(N·B) | O(1)  |
| Sub-optimal (Prefix Sum)   | O(N)   | O(N)  |
| Optimal (Sliding Window)   | O(N)   | O(1)  |

---

### Easy

#### 2.2 Range Sum Query (Even Indices)
**File:** `Arrays/problems/2D/Easy/range_sum.dart`

Given array `A` and a list of `[L, R]` queries, return the sum of elements at even indices within each range.

| Approach                  | Time     | Space |
|---------------------------|----------|-------|
| Prefix Sum (even-indexed) | O(N + Q) | O(N)  |

**Key idea:** Build a prefix array `pfE` where `pfE[i]` accumulates only even-indexed values. Answer each query in O(1).

---

#### 2.3 Matrix Multiplication
**File:** `Arrays/problems/2D/Easy/matrix_multiplication.dart`

Multiply two 2D matrices A and B.

> **Status:** Stub — implementation pending.

---

#### 2.4 Maximum Sub Array (bounded)
**File:** `Arrays/problems/2D/Easy/maximum_sub_array.dart`

Find the maximum subarray sum that does not exceed `B`.

| Approach                                | Time  | Space |
|-----------------------------------------|-------|-------|
| Brute Force (triple loop)               | O(N³) | O(1)  |
| Sub-optimal (running sum, break early)  | O(N²) | O(1)  |
| Optimal (Sliding Window / Two Pointers) | O(N)  | O(1)  |

**Key idea (optimal):** All elements are positive so the window sum is monotonically increasing. Expand right; shrink from left when sum exceeds B.

---

#### 2.5 Subarray with Given Sum and Length
**File:** `Arrays/problems/2D/Easy/sub_array_with_given_sum_and_length.dart`

Given array `A`, length `B`, and target sum `C`, return 1 if a subarray of length exactly `B` with sum `C` exists, else 0.

| Approach                   | Time   | Space |
|----------------------------|--------|-------|
| Brute Force (nested loops) | O(N·B) | O(1)  |
| Sub-optimal (Prefix Sum)   | O(N)   | O(N)  |
| Optimal (Sliding Window)   | O(N)   | O(1)  |

---

#### 2.6 Sum of All Sub-arrays
**File:** `Arrays/problems/2D/Easy/sum_of_all_sub_array.dart`

Find the total sum of all subarray sums of array `A`.

| Approach                           | Time  | Space |
|------------------------------------|-------|-------|
| Brute Force (triple loop)          | O(N³) | O(1)  |
| Sub-optimal (running subarray sum) | O(N²) | O(1)  |
| Optimal (Contribution Technique)   | O(N)  | O(1)  |

**Key idea:** Element `A[i]` appears in `(i+1) * (N-i)` subarrays. Total = Σ `A[i] * (i+1) * (N-i)`.

---

### Medium

#### 2.7 Counting Subarrays with Sum < B
**File:** `Arrays/problems/2D/Medium/counting_subarrays_easy.dart`

Count subarrays whose sum is strictly less than `B`.

| Approach                         | Time  | Space |
|----------------------------------|-------|-------|
| Brute Force (nested loops)       | O(N²) | O(1)  |
| Sub-optimal (Prefix Sum + Check) | O(N²) | O(N)  |
| Optimal (Sliding Window)         | O(N)  | O(1)  |

**Key idea:** Slide a window; when sum ≥ B shrink from left. All subarrays ending at `right` within the valid window are counted: `right - left + 1`.

---

#### 2.8 Good Subarrays
**File:** `Arrays/problems/2D/Medium/good_subarrays_easy.dart`

Count "good" subarrays: even-length with sum < B, or odd-length with sum > B.

| Approach                        | Time  | Space |
|---------------------------------|-------|-------|
| Brute Force (triple loop)       | O(N³) | O(1)  |
| Sub-optimal (remove inner loop) | O(N²) | O(1)  |
| Optimal (Prefix Sum)            | O(N²) | O(N)  |

---

#### 2.9 Subarray with Least Average
**File:** `Arrays/problems/2D/Medium/subarray_with_least_average.dart`

Given array `A` and window size `B`, return the starting index of the subarray of size `B` with the least average.

| Approach                   | Time   | Space |
|----------------------------|--------|-------|
| Brute Force (nested loops) | O(N·B) | O(1)  |
| Sub-optimal (Prefix Sum)   | O(N)   | O(N)  |
| Optimal (Sliding Window)   | O(N)   | O(1)  |

**Key idea:** Minimize sum ↔ minimize average for fixed window size. Slide and track minimum sum window.

---

## Chapter 3 — Strings

### Easy

#### 3.1 Count "AG" Pairs
**File:** `String/problems/Easy/pair_count.dart`

Count the number of pairs `(i, j)` where `i < j`, `A[i] == 'A'`, and `A[j] == 'G'`.

| Approach                    | Time  | Space |
|-----------------------------|-------|-------|
| Brute Force (nested loops)  | O(N²) | O(1)  |
| Optimal (running 'A' count) | O(N)  | O(1)  |

**Key idea:** Track `countA` as you walk left to right. Each time you see `'G'`, add the current `countA` to the result.

---

## Chapter 4 — Sorting

### VeryEasy

#### 4.1 Arithmetic Progression
**File:** `Sorting/problems/VeryEasy/arithmetic_progression.dart`

Given an integer array, return 1 if it can be rearranged to form an arithmetic progression, else 0.

| Approach                        | Time       | Space |
|---------------------------------|------------|-------|
| Sort + Check Differences        | O(N log N) | O(1)  |
| Optimal (Math + Set, no sort)   | O(N)       | O(N)  |

**Key idea (optimal):** Compute min, max, and common difference `d = (max - min) / (N - 1)`. Verify every expected term `min + i*d` exists in a hash set — no sorting needed.

---

### Easy

#### 4.2 Bubble Sort
**File:** `Sorting/problems/Easy/bubble_sort.dart`

Classic bubble sort with early-exit optimization.

| Approach              | Time (worst) | Time (best) | Space |
|-----------------------|--------------|-------------|-------|
| Optimized Bubble Sort | O(N²)        | O(N)        | O(1)  |

**Key idea:** Track a `swapped` flag per pass. If no swap occurs, the array is already sorted — break early.

---

#### 4.3 Elements Removal
**File:** `Sorting/problems/Easy/elements_removal.dart`

Remove all elements from an array one at a time. Each removal costs the current sum of the array. Find the minimum total cost.

| Approach                       | Time       | Space |
|--------------------------------|------------|-------|
| Sort Descending + Greedy       | O(N log N) | O(1)  |

**Key idea:** Remove the largest elements first so they contribute to fewer subsequent sums. Sort descending and accumulate the running total sum before each removal.

---

#### 4.4 Kth Smallest Element
**File:** `Sorting/problems/Easy/kth_smallest_element.dart`

Find the Bth smallest element in array `A` using at most B swaps.

| Approach                          | Time           | Space |
|-----------------------------------|----------------|-------|
| Brute Force (sort)                | O(N log N)     | O(1)  |
| Sub-optimal (selection sort ×B)   | O(N·B)         | O(1)  |
| Optimal (QuickSelect)             | O(N) avg       | O(1)  |

**Key idea:** QuickSelect partitions around a pivot — recurse only into the side containing the kth index, discarding the other half on average.

---

#### 4.5 Noble Integer
**File:** `Sorting/problems/Easy/noble_integer.dart`

Find if any integer `p` in the array satisfies: the count of elements strictly greater than `p` equals `p`. Return 1 if found, -1 otherwise.

| Approach                          | Time       | Space |
|-----------------------------------|------------|-------|
| Brute Force (nested loops)        | O(N²)      | O(1)  |
| Optimal (sort + linear scan)      | O(N log N) | O(1)  |

**Key idea:** Sort ascending. For each element (skipping duplicates), elements to its right are all greater. If `N - i - 1 == A[i]`, it's a noble integer.

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

| #  | Problem                              | Topic     | Difficulty | Optimal TC | File                                                                    |
|----|--------------------------------------|-----------|------------|------------|-------------------------------------------------------------------------|
| 1  | Generate All Sub-arrays              | Arrays 1D | VeryEasy   | O(N³)      | `Arrays/problems/1D/VeryEasy/sub_array.dart`                            |
| 2  | Check Pair Sum                       | Arrays 1D | Easy       | O(N)       | `Arrays/problems/1D/Easy/check_pair.dart`                               |
| 3  | Rotate Array                         | Arrays 1D | Easy       | O(N)       | `Arrays/problems/1D/Easy/rotate_array.dart`                             |
| 4  | Minimum Time to Equal Elements       | Arrays 1D | Easy       | O(N)       | `Arrays/problems/1D/Easy/minimum_time.dart`                             |
| 5  | Second Largest Element               | Arrays 1D | Easy       | O(N)       | `Arrays/problems/1D/Easy/second_largest_element.dart`                   |
| 6  | Count Elements < Maximum             | Arrays 1D | Easy       | O(N)       | `Arrays/problems/1D/Easy/number_of_elements_less_than_maximum.dart`     |
| 7  | Equilibrium Index                    | Arrays 1D | Easy       | O(N)       | `Arrays/problems/1D/Easy/equilibrium_index.dart`                        |
| 8  | Leader in Array                      | Arrays 1D | Easy       | O(N)       | `Arrays/problems/1D/Easy/leader_in_array.dart`                          |
| 9  | Best Time to Buy & Sell Stocks       | Arrays 1D | Easy       | O(N)       | `Arrays/problems/1D/Easy/best_time_to_buy_and_sell_stocks.dart`         |
| 10 | Even Numbers in a Range              | Arrays 1D | Easy       | O(N+Q)     | `Arrays/problems/1D/Easy/even_numbers_in_range.dart`                    |
| 11 | Minimum Swaps                        | Arrays 1D | Easy       | O(N)       | `Arrays/problems/1D/Easy/minimum_swaps.dart`                            |
| 12 | Pick From Both Sides                 | Arrays 1D | Medium     | O(N)       | `Arrays/problems/1D/Medium/pick_from_both_side.dart`                    |
| 13 | Closest Min & Max                    | Arrays 1D | Medium     | O(N)       | `Arrays/problems/1D/Medium/closest_min_max.dart`                        |
| 14 | Special Index                        | Arrays 1D | Medium     | O(N)       | `Arrays/problems/1D/Medium/special_index.dart`                          |
| 15 | Maximum Subarray Sum of Fixed Length | Arrays 2D | VeryEasy   | O(N)       | `Arrays/problems/2D/VeryEasy/maximum_subarray_sum_of_fixed_length.dart` |
| 16 | Range Sum Query (Even Indices)       | Arrays 2D | Easy       | O(N+Q)     | `Arrays/problems/2D/Easy/range_sum.dart`                                |
| 17 | Matrix Multiplication                | Arrays 2D | Easy       | O(N³)      | `Arrays/problems/2D/Easy/matrix_multiplication.dart`                    |
| 18 | Maximum Sub Array (bounded)          | Arrays 2D | Easy       | O(N)       | `Arrays/problems/2D/Easy/maximum_sub_array.dart`                        |
| 19 | Subarray with Given Sum and Length   | Arrays 2D | Easy       | O(N)       | `Arrays/problems/2D/Easy/sub_array_with_given_sum_and_length.dart`      |
| 20 | Sum of All Sub-arrays                | Arrays 2D | Easy       | O(N)       | `Arrays/problems/2D/Easy/sum_of_all_sub_array.dart`                     |
| 21 | Counting Subarrays (sum < B)         | Arrays 2D | Medium     | O(N)       | `Arrays/problems/2D/Medium/counting_subarrays_easy.dart`                |
| 22 | Good Subarrays                       | Arrays 2D | Medium     | O(N²)      | `Arrays/problems/2D/Medium/good_subarrays_easy.dart`                    |
| 23 | Subarray with Least Average          | Arrays 2D | Medium     | O(N)       | `Arrays/problems/2D/Medium/subarray_with_least_average.dart`            |
| 24 | Count "AG" Pairs                     | Strings   | Easy       | O(N)       | `String/problems/Easy/pair_count.dart`                                  |
| 25 | Arithmetic Progression               | Sorting   | VeryEasy   | O(N)       | `Sorting/problems/VeryEasy/arithmetic_progression.dart`                 |
| 26 | Bubble Sort                          | Sorting   | Easy       | O(N²)      | `Sorting/problems/Easy/bubble_sort.dart`                                |
| 27 | Elements Removal                     | Sorting   | Easy       | O(N log N) | `Sorting/problems/Easy/elements_removal.dart`                           |
| 28 | Kth Smallest Element                 | Sorting   | Easy       | O(N) avg   | `Sorting/problems/Easy/kth_smallest_element.dart`                       |
| 29 | Noble Integer                        | Sorting   | Easy       | O(N log N) | `Sorting/problems/Easy/noble_integer.dart`                              |