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
- [Chapter 5 — Searching](#chapter-5--searching)
- [Chapter 6 — Recursion](#chapter-6--recursion)
- [Shared Utilities](#shared-utilities)

---

## Getting Started

**Prerequisites:** [Dart SDK](https://dart.dev/get-dart) installed.

Run any module from the project root:

```sh
dart run Arrays/1D/main.dart
dart run Arrays/2D/main.dart
dart run String/main.dart
dart run Sorting/BubbleSort/main.dart
dart run Sorting/QuickSort/main.dart
dart run Searching/BinarySearch/main.dart
dart run Recursion/main.dart
```

Each `main.dart` has one active function call and the rest commented out. To run a specific problem, swap the active call:

```dart
// Sorting/BubbleSort/main.dart
void main() {
  BubbleSort();         // ← uncomment the one you want
  // ElementsRemoval();
  // KthSmallestElement();
}
```

---

## Repository Layout

```
DSA/
├── constants.dart                  # Shared Int.max / Int.min constants
├── Arrays/
│   ├── 1D/
│   │   ├── 1D.dart                 # Barrel export for 1D problems
│   │   ├── main.dart               # Entry point for Arrays 1D
│   │   ├── VeryEasy/
│   │   ├── Easy/
│   │   └── Medium/
│   └── 2D/
│       ├── 2D.dart                 # Barrel export for 2D problems
│       ├── main.dart               # Entry point for Arrays 2D
│       ├── VeryEasy/
│       ├── Easy/
│       └── Medium/
├── String/
│   ├── main.dart
│   └── problems/
│       ├── problems.dart
│       └── Easy/
│           └── pair_count.dart
├── Sorting/
│   ├── BubbleSort/
│   │   ├── BubbleSort.dart         # Barrel export for BubbleSort problems
│   │   ├── main.dart               # Entry point for BubbleSort
│   │   ├── VeryEasy/
│   │   │   └── arithmetic_progression.dart
│   │   └── Easy/
│   │       ├── bubble_sort.dart
│   │       ├── elements_removal.dart
│   │       ├── kth_smallest_element.dart
│   │       └── noble_integer.dart
│   └── QuickSort/
│       ├── QuickSort.dart          # Barrel export for QuickSort problems
│       ├── main.dart               # Entry point for QuickSort
│       ├── Fundamentals/
│       │   ├── partition.dart
│       │   └── quick_sort.dart
│       ├── Easy/
│       │   ├── factors_sort.dart
│       │   ├── largest_number.dart
│       │   ├── tens_digit_sorting.dart
│       │   └── wave_array.dart
│       └── Medium/
│           └── b_closest_points_to_origin.dart
├── Searching/
│   └── BinarySearch/
│       ├── BinarySearch.dart       # Barrel export for BinarySearch problems
│       ├── main.dart               # Entry point for BinarySearch
│       ├── Easy/
│       │   ├── maximum_height_of_staircase.dart
│       │   ├── single_element_in_sorted_array.dart
│       │   ├── sorted_insert_position.dart
│       │   └── square_root_of_integer.dart
│       └── Medium/
│           ├── add_or_not.dart
│           ├── aggressive_cow.dart
│           ├── allocate_books.dart
│           ├── find_peak_element.dart
│           ├── matrix_median.dart
│           ├── matrix_search.dart
│           ├── median_of_two_sorted_arrays.dart
│           ├── minimum_difference.dart
│           ├── painters_partition_problem.dart
│           ├── rotated_sorted_array_search.dart
│           ├── search_for_range.dart
│           └── special_integer.dart
└── Recursion/
    ├── recursion.dart              # Barrel export for Recursion problems
    ├── main.dart                   # Entry point for Recursion
    ├── Easy/
    │   ├── check_palindrome.dart
    │   └── decreasing_increasing_in_one_Function.dart
    └── Medium/
        ├── all_indices_of_array.dart
        ├── first_index_using_recursion.dart
        ├── last_index_using_recursion.dart
        ├── max_of_an_array_using_recursion.dart
        ├── print_array_using_recursion.dart
        └── tower_of_hanoi.dart
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

#### 2.7 Anti Diagonals
**File:** `Arrays/problems/2D/Easy/anti_diagonals.dart`

Given an N×N matrix, return a 2D array of its anti-diagonals. Each row of the result is one anti-diagonal, padded with 0s to length N.

| Approach                               | Time  | Space  |
|----------------------------------------|-------|--------|
| Brute Force (scan all cells per diag)  | O(N³) | O(N²)  |
| Better (walk each diagonal explicitly) | O(N²) | O(N²)  |
| Optimal (unified start-point formula)  | O(N²) | O(N²)  |

**Key idea:** For diagonal `k` (0-indexed, 0..2N-2), starting row is `max(0, k-(N-1))` and starting col is `k - row`. Walk down-left until out of bounds.

---

### Medium

#### 2.8 Counting Subarrays with Sum < B
**File:** `Arrays/problems/2D/Medium/counting_subarrays_easy.dart`

Count subarrays whose sum is strictly less than `B`.

| Approach                         | Time  | Space |
|----------------------------------|-------|-------|
| Brute Force (nested loops)       | O(N²) | O(1)  |
| Sub-optimal (Prefix Sum + Check) | O(N²) | O(N)  |
| Optimal (Sliding Window)         | O(N)  | O(1)  |

**Key idea:** Slide a window; when sum ≥ B shrink from left. All subarrays ending at `right` within the valid window are counted: `right - left + 1`.

---

#### 2.9 Good Subarrays
**File:** `Arrays/problems/2D/Medium/good_subarrays_easy.dart`

Count "good" subarrays: even-length with sum < B, or odd-length with sum > B.

| Approach                        | Time  | Space |
|---------------------------------|-------|-------|
| Brute Force (triple loop)       | O(N³) | O(1)  |
| Sub-optimal (remove inner loop) | O(N²) | O(1)  |
| Optimal (Prefix Sum)            | O(N²) | O(N)  |

---

#### 2.10 Subarray with Least Average
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
**File:** `Sorting/BubbleSort/VeryEasy/arithmetic_progression.dart`

Given an integer array, return 1 if it can be rearranged to form an arithmetic progression, else 0.

| Approach                        | Time       | Space |
|---------------------------------|------------|-------|
| Sort + Check Differences        | O(N log N) | O(1)  |
| Optimal (Math + Set, no sort)   | O(N)       | O(N)  |

**Key idea (optimal):** Compute min, max, and common difference `d = (max - min) / (N - 1)`. Verify every expected term `min + i*d` exists in a hash set — no sorting needed.

---

### Easy

#### 4.2 Bubble Sort
**File:** `Sorting/BubbleSort/Easy/bubble_sort.dart`

Classic bubble sort with early-exit optimization.

| Approach              | Time (worst) | Time (best) | Space |
|-----------------------|--------------|-------------|-------|
| Optimized Bubble Sort | O(N²)        | O(N)        | O(1)  |

**Key idea:** Track a `swapped` flag per pass. If no swap occurs, the array is already sorted — break early.

---

#### 4.3 Elements Removal
**File:** `Sorting/BubbleSort/Easy/elements_removal.dart`

Remove all elements from an array one at a time. Each removal costs the current sum of the array. Find the minimum total cost.

| Approach                       | Time       | Space |
|--------------------------------|------------|-------|
| Sort Descending + Greedy       | O(N log N) | O(1)  |

**Key idea:** Remove the largest elements first so they contribute to fewer subsequent sums. Sort descending and accumulate the running total sum before each removal.

---

#### 4.4 Kth Smallest Element
**File:** `Sorting/BubbleSort/Easy/kth_smallest_element.dart`

Find the Bth smallest element in array `A` using at most B swaps.

| Approach                          | Time           | Space |
|-----------------------------------|----------------|-------|
| Brute Force (sort)                | O(N log N)     | O(1)  |
| Sub-optimal (selection sort ×B)   | O(N·B)         | O(1)  |
| Optimal (QuickSelect)             | O(N) avg       | O(1)  |

**Key idea:** QuickSelect partitions around a pivot — recurse only into the side containing the kth index, discarding the other half on average.

---

#### 4.5 Noble Integer
**File:** `Sorting/BubbleSort/Easy/noble_integer.dart`

Find if any integer `p` in the array satisfies: the count of elements strictly greater than `p` equals `p`. Return 1 if found, -1 otherwise.

| Approach                          | Time       | Space |
|-----------------------------------|------------|-------|
| Brute Force (nested loops)        | O(N²)      | O(1)  |
| Optimal (sort + linear scan)      | O(N log N) | O(1)  |

**Key idea:** Sort ascending. For each element (skipping duplicates), elements to its right are all greater. If `N - i - 1 == A[i]`, it's a noble integer.

---

### QuickSort — Easy

#### 4.6 Factors Sort
**File:** `Sorting/QuickSort/Easy/factors_sort.dart`

Sort an array in increasing order of the number of distinct factors of each element. Break ties by value (smaller value first).

| Approach                                         | Time                    | Space |
|--------------------------------------------------|-------------------------|-------|
| Custom Comparator (sort with factor count)       | O(N·√M·log N)           | O(1)  |

**Key idea:** For each element compute its factor count in O(√M). Pass a custom comparator to `sort()` that compares factor counts, falling back to value for ties.

---

#### 4.7 Largest Number
**File:** `Sorting/QuickSort/Easy/largest_number.dart`

Given an array of non-negative integers, arrange them to form the largest possible number. Return it as a string.

| Approach                                        | Time       | Space |
|-------------------------------------------------|------------|-------|
| Custom Comparator (string concatenation order)  | O(N log N) | O(N)  |

**Key idea:** For two numbers `a` and `b`, prefer the order that yields the larger concatenation: compare `"$a$b"` vs `"$b$a"` as integers.

---

#### 4.8 Tens Digit Sorting
**File:** `Sorting/QuickSort/Easy/tens_digit_sorting.dart`

Sort an array by the tens digit of each element (ascending). Break ties by value (larger value first). Numbers with no tens digit are treated as having tens digit 0.

| Approach                             | Time       | Space |
|--------------------------------------|------------|-------|
| Custom Comparator (tens digit)       | O(N log N) | O(1)  |

**Key idea:** Extract tens digit as `(x ~/ 10) % 10`. Sort ascending by this; for ties sort descending by value (`b - a`).

---

#### 4.9 Wave Array
**File:** `Sorting/problems/QuickSort/Easy/wave_array.dart`

Arrange array elements so that `a1 >= a2 <= a3 >= a4 <= ...`. Return the lexicographically smallest such arrangement.

| Approach                          | Time       | Space |
|-----------------------------------|------------|-------|
| Sort + Swap Adjacent Pairs        | O(N log N) | O(1)  |

**Key idea:** Sort ascending, then swap every pair of adjacent elements `(A[0],A[1])`, `(A[2],A[3])`, … The sorted order guarantees lexicographic minimality.

---

### QuickSort — Medium

#### 4.10 B Closest Points to Origin
**File:** `Sorting/problems/QuickSort/Medium/b_closest_points_to_origin.dart`

Given a list of 2D points and integer `B`, return the `B` closest points to the origin by Euclidean distance.

> **Status:** Stub — implementation pending.

---

## Chapter 5 — Searching

### Binary Search — Easy

#### 5.1 Maximum Height of Staircase
**File:** `Searching/BinarySearch/problems/Easy/maximum_height_of_staircase.dart`

Given `A` square blocks (each height 1), find the maximum height of a staircase where step `i` requires `i` blocks.

| Approach                            | Time       | Space |
|-------------------------------------|------------|-------|
| Brute Force (linear scan)           | O(√A)      | O(1)  |
| Optimal (Binary Search)             | O(log A)   | O(1)  |

**Key idea:** Binary search on the height `h`. Step `h` requires `h*(h+1)/2` blocks total. Find the largest `h` where this sum ≤ `A`.

---

#### 5.2 Sorted Insert Position
**File:** `Searching/BinarySearch/problems/Easy/sorted_insert_position.dart`

Given a sorted array `A` and target `B`, return its index if found; otherwise return the index of the least element ≥ `B`. If no such element exists, return `N`.

| Approach        | Time     | Space |
|-----------------|----------|-------|
| Binary Search   | O(log N) | O(1)  |

**Key idea:** Standard lower-bound binary search. Track the last position where `A[mid] < B` to compute the insertion point.

---

#### 5.3 Square Root of Integer
**File:** `Searching/BinarySearch/problems/Easy/square_root_of_integer.dart`

Compute `floor(sqrt(A))` without using the standard library sqrt. Handle values up to 10⁹.

| Approach                      | Time     | Space |
|-------------------------------|----------|-------|
| Brute Force (linear scan)     | O(√A)    | O(1)  |
| Optimal (Binary Search)       | O(log A) | O(1)  |

**Key idea:** Binary search in `[1, A]`. Use `mid == A/mid` (integer division) to avoid overflow from `mid*mid`. Track the last valid `mid` where `mid < A/mid` as the answer.

---

#### 5.4 Single Element in Sorted Array
**File:** `Searching/BinarySearch/Easy/single_element_in_sorted_array.dart`

Given a sorted array where every element appears twice except one, find the single element. Adjacent duplicates are guaranteed.

| Approach        | Time     | Space |
|-----------------|----------|-------|
| Binary Search   | O(log N) | O(1)  |

**Key idea:** In an undisturbed pair region, even-index elements equal their right neighbor. If `A[mid]` breaks this pattern, the single element is on the left; otherwise on the right.

---

### Binary Search — Medium

#### 5.5 Find Peak Element
**File:** `Searching/BinarySearch/problems/Medium/find_peak_element.dart`

Given array `A`, find any peak element — one that is ≥ both its neighbors (corner elements have only one neighbor). Guaranteed single peak. Return the peak value.

| Approach                  | Time     | Space |
|---------------------------|----------|-------|
| Brute Force (linear scan) | O(N)     | O(1)  |
| Optimal (Binary Search)   | O(log N) | O(1)  |

**Key idea:** If `A[mid] < A[mid+1]`, peak must lie to the right → `low = mid+1`. Otherwise peak is at `mid` or to the left → `high = mid`. Converges to the peak index.

---

#### 5.6 Matrix Search
**File:** `Searching/BinarySearch/problems/Medium/matrix_search.dart`

Given an N×M matrix where rows are sorted and each row's first element ≥ previous row's last element, determine if integer `B` exists. Return 1 if found, 0 otherwise.

| Approach                                       | Time               | Space |
|------------------------------------------------|--------------------|-------|
| Binary search row + Binary search within row  | O(log N + log M)   | O(1)  |

**Key idea:** Binary search rows to find the row where `first <= B <= last`. Then binary search that row for `B`.

---

#### 5.7 Search for Range
**File:** `Searching/BinarySearch/problems/Medium/search_for_range.dart`

Given sorted array `A` and target `B`, return `[leftmost index, rightmost index]` of `B`. Return `[-1, -1]` if not found.

| Approach                          | Time     | Space |
|-----------------------------------|----------|-------|
| Brute Force (linear scan)         | O(N)     | O(1)  |
| Optimal (two binary searches)     | O(log N) | O(1)  |

**Key idea:** `findFirst`: when `A[mid] == B`, record and set `high = mid - 1` to keep searching left. `findLast`: when `A[mid] == B`, record and set `low = mid + 1` to keep searching right.

---

#### 5.8 Rotated Sorted Array Search
**File:** `Searching/BinarySearch/Medium/rotated_sorted_array_search.dart`

Given a sorted array rotated at an unknown pivot, search for target `B`. Return its index or `-1`.

| Approach        | Time     | Space |
|-----------------|----------|-------|
| Binary Search   | O(log N) | O(1)  |

**Key idea:** At each step, one half is always sorted. Check if target lies in the sorted half; if so, search there, otherwise search the other half.

---

#### 5.9 Aggressive Cows
**File:** `Searching/BinarySearch/Medium/aggressive_cow.dart`

Place `B` cows in `N` stalls to maximize the minimum distance between any two cows.

| Approach                           | Time            | Space |
|------------------------------------|-----------------|-------|
| Binary Search on Answer + Greedy   | O(N log(range)) | O(1)  |

**Key idea:** Binary search on the minimum distance. For each candidate distance, greedily place cows left to right — if all `B` fit, try larger; otherwise try smaller.

---

#### 5.10 Painter's Partition Problem
**File:** `Searching/BinarySearch/Medium/painters_partition_problem.dart`

Given `A` painters, time-per-unit `B`, and board lengths `C`, minimize the time to paint all boards (painters paint contiguous sections).

| Approach                           | Time            | Space |
|------------------------------------|-----------------|-------|
| Binary Search on Answer + Greedy   | O(N log(sum))   | O(1)  |

**Key idea:** Binary search on the max board-length capacity per painter. Greedily assign boards; if painters needed ≤ A, the capacity is feasible.

---

#### 5.11 Matrix Median
**File:** `Searching/BinarySearch/Medium/matrix_median.dart`

Given an N×M matrix with sorted rows (N*M is odd), find the overall median.

> **Status:** Stub — implementation pending.

---

#### 5.12 Median of Two Sorted Arrays
**File:** `Searching/BinarySearch/Medium/median_of_two_sorted_arrays.dart`

Given two sorted arrays, return the median of their merged result (floored).

| Approach                         | Time           | Space |
|----------------------------------|----------------|-------|
| Brute Force (merge)              | O(N + M)       | O(N + M) |
| Optimal (Binary Search)          | O(log(min(N,M))) | O(1) |

> **Status:** Brute force implemented; optimal in progress.

---

#### 5.13 Minimum Difference
**File:** `Searching/BinarySearch/Medium/minimum_difference.dart`

Build a 1D array by picking one element per row of a 2D matrix. Minimize the cost (minimum absolute difference between adjacent picks).

> **Status:** Stub — implementation pending.

---

#### 5.14 Add or Not
**File:** `Searching/BinarySearch/Medium/add_or_not.dart`

> **Status:** Stub — implementation pending.

---

#### 5.15 Allocate Books
**File:** `Searching/BinarySearch/Medium/allocate_books.dart`

> **Status:** Stub — implementation pending.

---

#### 5.16 Special Integer
**File:** `Searching/BinarySearch/Medium/special_integer.dart`

> **Status:** Stub — implementation pending.

---

## Chapter 6 — Recursion

### Easy

#### 6.1 Check Palindrome
**File:** `Recursion/Easy/check_palindrome.dart`

Check whether a string is a palindrome using recursion. Return 1 if palindrome, else 0.

| Approach                    | Time | Space    |
|-----------------------------|------|----------|
| Brute Force (linear loop)   | O(N) | O(1)     |
| Recursive (two-pointer)     | O(N) | O(N) stack |

**Key idea:** Compare characters at positions `i` and `N-i-1`, recurse with `i+1`. Base case: `i > N/2`.

---

#### 6.2 Decreasing then Increasing
**File:** `Recursion/Easy/decreasing_increasing_in_one_Function.dart`

Print numbers from N down to 1 and then 1 up to N, using a single recursive function (no loops).

| Approach   | Time | Space    |
|------------|------|----------|
| Recursion  | O(N) | O(N) stack |

**Key idea:** Print `A` before recursion (decreasing) and after recursion (increasing). Base case: `A < 1`.

---

### Medium

#### 6.3 Print Array Using Recursion
**File:** `Recursion/Medium/print_array_using_recursion.dart`

Print all elements of an array sequentially using recursion (no loops).

| Approach   | Time | Space    |
|------------|------|----------|
| Recursion  | O(N) | O(N) stack |

---

#### 6.4 First Index Using Recursion
**File:** `Recursion/Medium/first_index_using_recursion.dart`

Find the first index at which integer `B` appears in array `A`. Return `-1` if not found.

| Approach                  | Time | Space    |
|---------------------------|------|----------|
| Recursive (left to right) | O(N) | O(N) stack |

**Key idea:** Recurse from index 0 forward. Return `i` on first match; return `-1` at end.

---

#### 6.5 Last Index Using Recursion
**File:** `Recursion/Medium/last_index_using_recursion.dart`

Find the last index at which integer `B` appears in array `A`. Return `-1` if not found.

| Approach                  | Time | Space    |
|---------------------------|------|----------|
| Recursive (right to left) | O(N) | O(N) stack |

**Key idea:** Recurse from the last index backward. Return `i` on first match; return `-1` at index < 0.

---

#### 6.6 All Indices of Array
**File:** `Recursion/Medium/all_indices_of_array.dart`

Find all indices at which target `B` occurs in array `A`. Return sorted list of indices.

| Approach                  | Time | Space    |
|---------------------------|------|----------|
| Brute Force (linear loop) | O(N) | O(K)     |
| Recursive                 | O(N) | O(N) stack |

**Key idea:** Recurse through the array, appending index to result list whenever `A[i] == B`.

---

#### 6.7 Max of Array Using Recursion
**File:** `Recursion/Medium/max_of_an_array_using_recursion.dart`

Find the maximum element of an array using recursion.

| Approach                   | Time | Space    |
|----------------------------|------|----------|
| Recursive (carry max)      | O(N) | O(N) stack |

**Key idea:** Pass running max through recursion. Compare `A[i]` with current max at each step.

---

#### 6.8 Tower of Hanoi
**File:** `Recursion/Medium/tower_of_hanoi.dart`

> **Status:** Stub — implementation pending.

---

## Shared Utilities

### `constants.dart`

```dart
class Int {
  static num get max => 9007199254740991;
  static num get min => -9007199254740991;
}
```

Used across problems as a stand-in for integer bounds (e.g., initializing min/max trackers). Import with:

```dart
import '../../../constants.dart';
```

---

## Problems at a Glance

| #  | Problem                              | Topic        | Difficulty | Optimal TC       | File                                                                         |
|----|--------------------------------------|--------------|------------|------------------|------------------------------------------------------------------------------|
| 1  | Generate All Sub-arrays              | Arrays 1D    | VeryEasy   | O(N³)            | `Arrays/1D/VeryEasy/sub_array.dart`                                          |
| 2  | Check Pair Sum                       | Arrays 1D    | Easy       | O(N)             | `Arrays/1D/Easy/check_pair.dart`                                             |
| 3  | Rotate Array                         | Arrays 1D    | Easy       | O(N)             | `Arrays/1D/Easy/rotate_array.dart`                                           |
| 4  | Minimum Time to Equal Elements       | Arrays 1D    | Easy       | O(N)             | `Arrays/1D/Easy/minimum_time.dart`                                           |
| 5  | Second Largest Element               | Arrays 1D    | Easy       | O(N)             | `Arrays/1D/Easy/second_largest_element.dart`                                 |
| 6  | Count Elements < Maximum             | Arrays 1D    | Easy       | O(N)             | `Arrays/1D/Easy/number_of_elements_less_than_maximum.dart`                   |
| 7  | Equilibrium Index                    | Arrays 1D    | Easy       | O(N)             | `Arrays/1D/Easy/equilibrium_index.dart`                                      |
| 8  | Leader in Array                      | Arrays 1D    | Easy       | O(N)             | `Arrays/1D/Easy/leader_in_array.dart`                                        |
| 9  | Best Time to Buy & Sell Stocks       | Arrays 1D    | Easy       | O(N)             | `Arrays/1D/Easy/best_time_to_buy_and_sell_stocks.dart`                       |
| 10 | Even Numbers in a Range              | Arrays 1D    | Easy       | O(N+Q)           | `Arrays/1D/Easy/even_numbers_in_range.dart`                                  |
| 11 | Minimum Swaps                        | Arrays 1D    | Easy       | O(N)             | `Arrays/1D/Easy/minimum_swaps.dart`                                          |
| 12 | Pick From Both Sides                 | Arrays 1D    | Medium     | O(N)             | `Arrays/1D/Medium/pick_from_both_side.dart`                                  |
| 13 | Closest Min & Max                    | Arrays 1D    | Medium     | O(N)             | `Arrays/1D/Medium/closest_min_max.dart`                                      |
| 14 | Special Index                        | Arrays 1D    | Medium     | O(N)             | `Arrays/1D/Medium/special_index.dart`                                        |
| 15 | Maximum Subarray Sum of Fixed Length | Arrays 2D    | VeryEasy   | O(N)             | `Arrays/2D/VeryEasy/maximum_subarray_sum_of_fixed_length.dart`               |
| 16 | Range Sum Query (Even Indices)       | Arrays 2D    | Easy       | O(N+Q)           | `Arrays/2D/Easy/range_sum.dart`                                              |
| 17 | Matrix Multiplication                | Arrays 2D    | Easy       | O(N³)            | `Arrays/2D/Easy/matrix_multiplication.dart`                                  |
| 18 | Maximum Sub Array (bounded)          | Arrays 2D    | Easy       | O(N)             | `Arrays/2D/Easy/maximum_sub_array.dart`                                      |
| 19 | Subarray with Given Sum and Length   | Arrays 2D    | Easy       | O(N)             | `Arrays/2D/Easy/sub_array_with_given_sum_and_length.dart`                    |
| 20 | Sum of All Sub-arrays                | Arrays 2D    | Easy       | O(N)             | `Arrays/2D/Easy/sum_of_all_sub_array.dart`                                   |
| 21 | Anti Diagonals                       | Arrays 2D    | Easy       | O(N²)            | `Arrays/2D/Easy/anti_diagonals.dart`                                         |
| 22 | Counting Subarrays (sum < B)         | Arrays 2D    | Medium     | O(N)             | `Arrays/2D/Medium/counting_subarrays_easy.dart`                              |
| 23 | Good Subarrays                       | Arrays 2D    | Medium     | O(N²)            | `Arrays/2D/Medium/good_subarrays_easy.dart`                                  |
| 24 | Subarray with Least Average          | Arrays 2D    | Medium     | O(N)             | `Arrays/2D/Medium/subarray_with_least_average.dart`                          |
| 25 | Count "AG" Pairs                     | Strings      | Easy       | O(N)             | `String/Easy/pair_count.dart`                                                |
| 26 | Arithmetic Progression               | Sorting      | VeryEasy   | O(N)             | `Sorting/BubbleSort/VeryEasy/arithmetic_progression.dart`                    |
| 27 | Bubble Sort                          | Sorting      | Easy       | O(N²)            | `Sorting/BubbleSort/Easy/bubble_sort.dart`                                   |
| 28 | Elements Removal                     | Sorting      | Easy       | O(N log N)       | `Sorting/BubbleSort/Easy/elements_removal.dart`                              |
| 29 | Kth Smallest Element                 | Sorting      | Easy       | O(N) avg         | `Sorting/BubbleSort/Easy/kth_smallest_element.dart`                          |
| 30 | Noble Integer                        | Sorting      | Easy       | O(N log N)       | `Sorting/BubbleSort/Easy/noble_integer.dart`                                 |
| 31 | Factors Sort                         | Sorting      | Easy       | O(N·√M·lgN)      | `Sorting/QuickSort/Easy/factors_sort.dart`                                   |
| 32 | Largest Number                       | Sorting      | Easy       | O(N log N)       | `Sorting/QuickSort/Easy/largest_number.dart`                                 |
| 33 | Tens Digit Sorting                   | Sorting      | Easy       | O(N log N)       | `Sorting/QuickSort/Easy/tens_digit_sorting.dart`                             |
| 34 | Wave Array                           | Sorting      | Easy       | O(N log N)       | `Sorting/QuickSort/Easy/wave_array.dart`                                     |
| 35 | B Closest Points to Origin           | Sorting      | Medium     | —                | `Sorting/QuickSort/Medium/b_closest_points_to_origin.dart`                   |
| 36 | Maximum Height of Staircase          | Searching    | Easy       | O(log A)         | `Searching/BinarySearch/Easy/maximum_height_of_staircase.dart`               |
| 37 | Sorted Insert Position               | Searching    | Easy       | O(log N)         | `Searching/BinarySearch/Easy/sorted_insert_position.dart`                    |
| 38 | Square Root of Integer               | Searching    | Easy       | O(log A)         | `Searching/BinarySearch/Easy/square_root_of_integer.dart`                    |
| 39 | Single Element in Sorted Array       | Searching    | Easy       | O(log N)         | `Searching/BinarySearch/Easy/single_element_in_sorted_array.dart`            |
| 40 | Find Peak Element                    | Searching    | Medium     | O(log N)         | `Searching/BinarySearch/Medium/find_peak_element.dart`                       |
| 41 | Matrix Search                        | Searching    | Medium     | O(log N+M)       | `Searching/BinarySearch/Medium/matrix_search.dart`                           |
| 42 | Search for Range                     | Searching    | Medium     | O(log N)         | `Searching/BinarySearch/Medium/search_for_range.dart`                        |
| 43 | Rotated Sorted Array Search          | Searching    | Medium     | O(log N)         | `Searching/BinarySearch/Medium/rotated_sorted_array_search.dart`             |
| 44 | Aggressive Cows                      | Searching    | Medium     | O(N log(range))  | `Searching/BinarySearch/Medium/aggressive_cow.dart`                          |
| 45 | Painter's Partition Problem          | Searching    | Medium     | O(N log(sum))    | `Searching/BinarySearch/Medium/painters_partition_problem.dart`              |
| 46 | Matrix Median                        | Searching    | Medium     | —                | `Searching/BinarySearch/Medium/matrix_median.dart`                           |
| 47 | Median of Two Sorted Arrays          | Searching    | Medium     | O(log(min(N,M))) | `Searching/BinarySearch/Medium/median_of_two_sorted_arrays.dart`             |
| 48 | Minimum Difference                   | Searching    | Medium     | —                | `Searching/BinarySearch/Medium/minimum_difference.dart`                      |
| 49 | Add or Not                           | Searching    | Medium     | —                | `Searching/BinarySearch/Medium/add_or_not.dart`                              |
| 50 | Allocate Books                       | Searching    | Medium     | —                | `Searching/BinarySearch/Medium/allocate_books.dart`                          |
| 51 | Special Integer                      | Searching    | Medium     | —                | `Searching/BinarySearch/Medium/special_integer.dart`                         |
| 52 | Check Palindrome                     | Recursion    | Easy       | O(N)             | `Recursion/Easy/check_palindrome.dart`                                       |
| 53 | Decreasing then Increasing           | Recursion    | Easy       | O(N)             | `Recursion/Easy/decreasing_increasing_in_one_Function.dart`                  |
| 54 | Print Array Using Recursion          | Recursion    | Medium     | O(N)             | `Recursion/Medium/print_array_using_recursion.dart`                          |
| 55 | First Index Using Recursion          | Recursion    | Medium     | O(N)             | `Recursion/Medium/first_index_using_recursion.dart`                          |
| 56 | Last Index Using Recursion           | Recursion    | Medium     | O(N)             | `Recursion/Medium/last_index_using_recursion.dart`                           |
| 57 | All Indices of Array                 | Recursion    | Medium     | O(N)             | `Recursion/Medium/all_indices_of_array.dart`                                 |
| 58 | Max of Array Using Recursion         | Recursion    | Medium     | O(N)             | `Recursion/Medium/max_of_an_array_using_recursion.dart`                      |
| 59 | Tower of Hanoi                       | Recursion    | Medium     | O(2^N)           | `Recursion/Medium/tower_of_hanoi.dart`                                       |