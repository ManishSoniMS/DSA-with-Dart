# 🗺️ Complete DSA Mastery Roadmap: Beginner → Advanced

## Overview

This roadmap takes you from zero DSA knowledge to **advanced interview-ready level** in a logical, sequenced manner. Each topic builds on the previous one. **Nothing is skipped**, and every foundation is crystal clear before moving forward.

**Estimated Total Time:** 4-6 months (intensive) | 6-12 months (regular pace)

---

## 📊 Learning Architecture

```
Foundation Layer (Weeks 1-3)
    ↓
Core Data Structures (Weeks 4-12)
    ↓
Array-Based Patterns (Weeks 13-16)
    ↓
Tree & Graph Fundamentals (Weeks 17-24)
    ↓
Advanced Algorithms (Weeks 25-32)
    ↓
Interview Patterns & Optimization (Weeks 33-40)
    ↓
Competitive Programming & Edge Cases (Weeks 41+)
```

---

# PHASE 0: Foundation Layer (Weeks 1-3)

**Goal:** Understand core programming concepts, complexity analysis, and problem-solving mindset.

## 0.1 Programming Fundamentals (1 week)
**You MUST know before moving to DSA:**
- [ ] Variables, data types, operators
- [ ] Control flow (if/else, loops, switch)
- [ ] Functions/methods, parameters, return values
- [ ] Basic debugging and testing
- [ ] Code organization and comments

**Why first?** DSA syntax depends on these fundamentals.

---

## 0.2 Time & Space Complexity Analysis (1 week)
**This is the LANGUAGE of DSA. Everything after depends on this.**

### What to Learn:
- [ ] **Big-O notation:** O(1), O(log n), O(n), O(n log n), O(n²), O(2ⁿ), O(n!)
- [ ] **Why it matters:** How algorithms scale with input size
- [ ] **Best/Average/Worst case:** Understanding the difference
- [ ] **Space complexity:** Auxiliary space vs. total space
- [ ] **Trade-offs:** Time vs. Space (a core theme in DSA)

### Key Milestones:
- [ ] Analyze simple loops: `for (int i = 0; i < n; i++)` → O(n)
- [ ] Analyze nested loops: `for i in 0..n; for j in 0..n` → O(n²)
- [ ] Understand logarithmic growth: Binary search concept → O(log n)
- [ ] **Practical:** You can look at code and instantly say "this is O(n²) time, O(1) space"

### Practice:
- Analyze complexity of 20+ simple functions
- Build a "complexity cheat sheet" table for reference

**Why this foundation is critical:** Without complexity thinking, you can't judge if your solution is good. This stays with you forever.

---

## 0.3 Recursion Fundamentals (1 week)
**Why now?** Trees, graphs, and backtracking all depend on recursion. Learn it early.

### What to Learn:
- [ ] **Base case vs. recursive case**
- [ ] **Call stack visualization:** How function calls nest
- [ ] **Recurrence relation:** T(n) = T(n-1) + O(1)
- [ ] **Common patterns:**
    - Linear recursion: `f(n) = f(n-1) + ...`
    - Divide-and-conquer: `f(n) = 2 * f(n/2) + ...`

### Problems to Solve:
- [ ] Factorial, Fibonacci
- [ ] Sum of array elements
- [ ] String reversal
- [ ] Power function (x^n)
- [ ] Count occurrences in array

### Complexity:
- [ ] Understand **recursive space complexity** (call stack depth)
- [ ] Why deep recursion causes stack overflow
- [ ] How to convert recursion to iteration (tail recursion)

### Java & Dart Practice Code:
```java
// Linear recursion
public int factorial(int n) {
    if (n <= 1) return 1;           // Base case
    return n * factorial(n - 1);    // Recursive case
}

// Recurrence: T(n) = T(n-1) + O(1) → O(n) time, O(n) space (call stack)
```

```dart
// Dart equivalent
int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}
```

**Exit criteria for Phase 0:**
- You can write and trace recursive functions without confusion
- You know Big-O instantly for simple code
- You understand call stack depth

---

# PHASE 1: Core Data Structures (Weeks 4-12)

**Goal:** Master fundamental structures that every other topic depends on.

## 1.1 Arrays (1 week)
**Why first?** Arrays are the building block. Everything else references array concepts.

### What to Learn:
- [ ] Array declaration, initialization, access
- [ ] **Index-based access:** O(1)
- [ ] **Iteration:** Single and nested loops
- [ ] **Array operations:**
    - Finding min/max
    - Linear search
    - Counting, summing
- [ ] **Common pitfalls:**
    - Array size vs. last index (off-by-one)
    - Negative indices (not allowed in Java, use carefully in Dart)

### Problems:
- [ ] Find largest/smallest element
- [ ] Reverse an array
- [ ] Check if array is sorted
- [ ] Count frequency of elements
- [ ] Remove duplicates (preserve order)

### Complexity:
- [ ] Access: O(1)
- [ ] Search: O(n)
- [ ] Insert/Delete: O(n) (must shift elements)

**Java Code Example:**
```java
public int findMax(int[] arr) {
    int max = arr[0];
    for (int i = 1; i < arr.length; i++) {
        if (arr[i] > max) {
            max = arr[i];
        }
    }
    return max;
}
// Time: O(n), Space: O(1)
```

**Dart Code Example:**
```dart
int findMax(List<int> arr) {
  int max = arr[0];
  for (int i = 1; i < arr.length; i++) {
    if (arr[i] > max) {
      max = arr[i];
    }
  }
  return max;
}
```

---

## 1.2 Linked Lists (1.5 weeks)
**Prerequisite:** Recursion (Phase 0)
**Why here?** Introduces pointers/references, alternative to arrays, critical for interview problems.

### What to Learn:
- [ ] **Node structure:** data + next pointer
- [ ] **Singly vs. doubly linked lists**
- [ ] **Traversal:** Move through list from head to tail
- [ ] **Operations:**
    - Insert at head: O(1)
    - Insert at tail: O(n) without tail pointer
    - Delete node: O(1) if you have reference, O(n) otherwise
    - Search: O(n)

### Problems:
- [ ] Find middle of linked list
- [ ] Reverse a linked list (iterative AND recursive)
- [ ] Detect cycle (Floyd's algorithm)
- [ ] Remove nth node from end
- [ ] Check if palindrome
- [ ] Merge two sorted lists

### Key Pattern: **Two Pointers (Slow/Fast)**
- Slow pointer: moves 1 step
- Fast pointer: moves 2 steps
- Use case: Find middle, detect cycle, remove duplicate

### Complexity:
- [ ] Access: O(n)
- [ ] Search: O(n)
- [ ] Insert/Delete (with reference): O(1)
- [ ] Space: O(n) for storage

**Java Code Example:**
```java
public class ListNode {
    int val;
    ListNode next;
    ListNode(int val) { this.val = val; }
}

// Reverse a linked list (iterative)
public ListNode reverse(ListNode head) {
    ListNode prev = null;
    ListNode curr = head;
    while (curr != null) {
        ListNode next = curr.next;  // Save next node
        curr.next = prev;            // Reverse the link
        prev = curr;                 // Move prev forward
        curr = next;                 // Move curr forward
    }
    return prev;  // New head
}
// Time: O(n), Space: O(1)
```

**Dart Code Example:**
```dart
class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val);
}

ListNode? reverse(ListNode? head) {
  ListNode? prev;
  ListNode? curr = head;
  while (curr != null) {
    final next = curr.next;
    curr.next = prev;
    prev = curr;
    curr = next;
  }
  return prev;
}
```

---

## 1.3 Stacks & Queues (1.5 weeks)
**Prerequisite:** Arrays or Linked Lists
**Why here?** Fundamental for parsing, BFS, and many problems.

### 1.3a Stacks (LIFO)
**What to Learn:**
- [ ] Push, pop, peek operations
- [ ] **LIFO property:** Last In, First Out
- [ ] Implementation: Using array or linked list
- [ ] Real-world analogy: Plate stack, browser back button

**Problems:**
- [ ] Valid parentheses: Are brackets balanced? `(())` vs `([)]`
- [ ] Evaluate postfix expression: `3 4 +` = 7
- [ ] Daily temperatures: Next greater temperature
- [ ] Largest rectangle in histogram

**Key Insight:** Stack is perfect for **"matching" problems** and **backward traversal**.

**Java Code Example:**
```java
public boolean isValid(String s) {
    Deque<Character> stack = new ArrayDeque<>();  // 📘 Use Deque, not Stack class
    for (char c : s.toCharArray()) {
        if (c == '(' || c == '{' || c == '[') {
            stack.push(c);
        } else {
            if (stack.isEmpty()) return false;
            char top = stack.pop();
            if ((c == ')' && top != '(') || 
                (c == '}' && top != '{') || 
                (c == ']' && top != '[')) {
                return false;
            }
        }
    }
    return stack.isEmpty();
}
// Time: O(n), Space: O(n)
```

### 1.3b Queues (FIFO)
**What to Learn:**
- [ ] Enqueue, dequeue operations
- [ ] **FIFO property:** First In, First Out
- [ ] Implementation: Array (circular buffer) or linked list
- [ ] Real-world analogy: Supermarket queue

**Problems:**
- [ ] Implement queue using stack
- [ ] Reveal cards in order (LeetCode 950)
- [ ] First unique character in stream

**Key Insight:** Queue is perfect for **BFS** and **level-order traversal**.

**Java Code Example:**
```java
public class Queue {
    private Deque<Integer> deque = new ArrayDeque<>();
    
    public void enqueue(int val) {
        deque.addLast(val);  // Add to back
    }
    
    public int dequeue() {
        return deque.removeFirst();  // Remove from front
    }
}
// Time: O(1) per operation, Space: O(n)
```

---

## 1.4 Hash Maps / Hash Tables (1 week)
**Prerequisite:** Arrays (Phase 1.1)
**Why here?** Essential for fast lookups, counting, and many interview patterns.

### What to Learn:
- [ ] **Key-value storage:** O(1) lookup on average
- [ ] **Hash function:** Maps key to index
- [ ] **Collision handling:** Chaining, open addressing
- [ ] **When to use:** Frequency maps, grouping, caching

### Problems:
- [ ] Two Sum: Find two numbers that add to target
- [ ] Valid anagram: Do two strings have same characters?
- [ ] Group anagrams: Partition strings by character frequency
- [ ] LRU Cache: Implement cache with eviction policy
- [ ] Frequency of elements: Count occurrences

### Common Patterns:
- [ ] **Frequency map:** `map[char] = count`
- [ ] **Grouping:** `map[key] = List<value>`
- [ ] **Existence check:** `map.containsKey(key)`

**Java Code Example:**
```java
public int[] twoSum(int[] nums, int target) {
    Map<Integer, Integer> map = new HashMap<>();  // 📘 HashMap: key-value pairs, O(1) lookup
    for (int i = 0; i < nums.length; i++) {
        int complement = target - nums[i];
        if (map.containsKey(complement)) {
            return new int[]{map.get(complement), i};
        }
        map.put(nums[i], i);
    }
    return new int[]{};
}
// Time: O(n), Space: O(n)
```

**Dart Code Example:**
```dart
List<int> twoSum(List<int> nums, int target) {
  final map = <int, int>{};  // Dart map syntax
  for (int i = 0; i < nums.length; i++) {
    final complement = target - nums[i];
    if (map.containsKey(complement)) {
      return [map[complement]!, i];
    }
    map[nums[i]] = i;
  }
  return [];
}
```

---

## 1.5 Heaps (Priority Queues) (1 week)
**Prerequisite:** Arrays, recursion
**Why here?** Essential for Dijkstra, merge K lists, top K problems.

### What to Learn:
- [ ] **Min Heap vs. Max Heap**
- [ ] **Heap property:** Parent ≤ children (min heap)
- [ ] **Operations:**
    - Insert: O(log n)
    - Extract min: O(log n)
    - Peek: O(1)
- [ ] **Array representation:** Parent at `(i-1)/2`, children at `2i+1` and `2i+2`

### Problems:
- [ ] Kth largest element
- [ ] Merge K sorted lists
- [ ] Top K frequent elements
- [ ] Reorganize string (no two same characters adjacent)

**Java Code Example:**
```java
public int findKthLargest(int[] nums, int k) {
    PriorityQueue<Integer> minHeap = new PriorityQueue<>();  // 📘 Min heap by default
    
    for (int num : nums) {
        minHeap.offer(num);
        if (minHeap.size() > k) {
            minHeap.poll();  // Keep only k largest
        }
    }
    return minHeap.peek();
}
// Time: O(n log k), Space: O(k)
```

**Dart Code Example:**
```dart
import 'package:collection/collection.dart';

int findKthLargest(List<int> nums, int k) {
  final minHeap = PriorityQueue<int>((a, b) => a.compareTo(b));
  
  for (final num in nums) {
    minHeap.add(num);
    if (minHeap.length > k) {
      minHeap.removeFirst();
    }
  }
  return minHeap.first;
}
```

---

## 1.6 Strings (1 week)
**Prerequisite:** Arrays, Hash Maps
**Why here?** Strings are crucial for many patterns (anagram, palindrome, pattern matching).

### What to Learn:
- [ ] **String as character array:** Each index is a character
- [ ] **Common operations:**
    - Length, charAt, substring
    - Concatenation (use StringBuilder in Java)
    - Comparison (equals, lexicographic order)
- [ ] **String properties:**
    - Immutable in Java (important for performance)
    - Palindrome: reads same forward/backward
    - Anagram: same characters, different order

### Problems:
- [ ] Longest substring without repeating characters
- [ ] Palindrome: Is string a palindrome?
- [ ] Reverse string / reverse words
- [ ] Longest common prefix
- [ ] Valid parentheses (already covered in stacks, but applicable here)

**Java Code Example:**
```java
public String reverseString(String s) {
    StringBuilder sb = new StringBuilder();  // 📘 Use StringBuilder, not += in loops
    for (int i = s.length() - 1; i >= 0; i--) {
        sb.append(s.charAt(i));
    }
    return sb.toString();
}
// Time: O(n), Space: O(n) (for result)
```

---

**Exit Criteria for Phase 1:**
- [ ] You can implement all core structures from scratch
- [ ] You know when to use each (array vs. linked list, stack vs. queue, hash map for counting)
- [ ] You instantly see complexity trade-offs
- [ ] You can solve 50+ problems across these structures

---

# PHASE 2: Array-Based Patterns (Weeks 13-16)

**Goal:** Master algorithmic patterns that work on arrays. These are INTERVIEW HEAVY.

## 2.1 Sorting Algorithms (1 week)
**Prerequisite:** Arrays, recursion, complexity analysis
**Why critical?** Many problems require sorting. Understanding sorts deeply helps pattern recognition.

### Algorithms to Implement from Scratch:
- [ ] **Bubble Sort:** O(n²) — simple, good for understanding
- [ ] **Merge Sort:** O(n log n) — divide-and-conquer, stable
- [ ] **Quick Sort:** O(n log n) avg, O(n²) worst — in-place, often used
- [ ] **Heap Sort:** O(n log n) — uses heap structure
- [ ] **Counting Sort:** O(n+k) — linear, for specific ranges
- [ ] **Radix Sort:** O(nk) — for integers with limited digits

### Problems:
- [ ] Sort array of integers
- [ ] Sort by custom comparator (e.g., strings by length)
- [ ] Find kth smallest / largest (using partition from QuickSort)
- [ ] Dutch flag problem: Arrange array so colors are grouped

**Key Insight:** Learn QuickSort partition technique — it's used in QuickSelect for kth element finding.

**Java Code Example:**
```java
public void mergeSort(int[] arr, int left, int right) {
    if (left >= right) return;
    int mid = left + (right - left) / 2;
    mergeSort(arr, left, mid);         // Sort left half
    mergeSort(arr, mid + 1, right);    // Sort right half
    merge(arr, left, mid, right);      // Merge sorted halves
}

private void merge(int[] arr, int left, int mid, int right) {
    int[] temp = new int[right - left + 1];
    int i = left, j = mid + 1, k = 0;
    
    while (i <= mid && j <= right) {
        if (arr[i] <= arr[j]) {
            temp[k++] = arr[i++];
        } else {
            temp[k++] = arr[j++];
        }
    }
    while (i <= mid) temp[k++] = arr[i++];
    while (j <= right) temp[k++] = arr[j++];
    
    System.arraycopy(temp, 0, arr, left, temp.length);
}
// Time: O(n log n), Space: O(n)
```

---

## 2.2 Two Pointers (1 week)
**Prerequisite:** Arrays, sorting
**Why critical?** SUPER common pattern. Used in many interview problems.

### What to Learn:
- [ ] **Pattern:** Maintain two indices, move based on condition
- [ ] **When to use:**
    - Two sorted arrays or two ends of one array
    - Pairs that satisfy a condition
    - Partitioning

### Problems:
- [ ] Two Sum II (sorted array): Find two numbers that sum to target
- [ ] Container With Most Water: Find two lines that hold most water
- [ ] 3Sum: Find all triplets that sum to zero
- [ ] Remove duplicates from sorted array (in-place)
- [ ] Merge sorted array (in-place)
- [ ] Valid palindrome (ignore non-alphanumeric)

**Key Insight:** Two pointers often optimize from O(n²) brute force to O(n) or O(n log n).

**Java Code Example:**
```java
public int[] twoSum(int[] numbers, int target) {
    int left = 0, right = numbers.length - 1;
    
    while (left < right) {
        int sum = numbers[left] + numbers[right];
        if (sum == target) {
            return new int[]{left + 1, right + 1};
        } else if (sum < target) {
            left++;   // Need larger sum, move left pointer right
        } else {
            right--; // Need smaller sum, move right pointer left
        }
    }
    return new int[]{};
}
// Time: O(n), Space: O(1)
```

---

## 2.3 Sliding Window (1 week)
**Prerequisite:** Arrays, hash maps, two pointers
**Why critical?** VERY common for substring/subarray problems.

### What to Learn:
- [ ] **Pattern:** Maintain a window of elements
- [ ] **Expand/contract window** based on condition
- [ ] **When to use:**
    - Longest/shortest substring/subarray with property
    - Anagrams in strings
    - Problems asking "all contiguous..."

### Problems:
- [ ] Longest substring without repeating characters
- [ ] Minimum window substring (contains all target chars)
- [ ] Max consecutive ones (after flipping)
- [ ] Longest repeating character replacement
- [ ] Permutation in string (sliding window anagram check)

**Key Insight:** Maintain window size or shrink/expand dynamically. Use hash map to track window contents.

**Java Code Example:**
```java
public int lengthOfLongestSubstring(String s) {
    Map<Character, Integer> map = new HashMap<>();  // char -> last index
    int maxLen = 0, left = 0;
    
    for (int right = 0; right < s.length(); right++) {
        char c = s.charAt(right);
        
        // If character is in window, move left past it
        if (map.containsKey(c)) {
            left = Math.max(left, map.get(c) + 1);
        }
        
        map.put(c, right);  // Update character's latest index
        maxLen = Math.max(maxLen, right - left + 1);
    }
    return maxLen;
}
// Time: O(n), Space: O(min(26, n)) → O(1) for ASCII
```

---

## 2.4 Prefix Sum (1 week)
**Prerequisite:** Arrays, hash maps
**Why critical?** Converts O(n²) range query to O(n).

### What to Learn:
- [ ] **Prefix sum array:** `prefix[i]` = sum of elements 0..i-1
- [ ] **Range sum:** Sum from index `i` to `j` = `prefix[j+1] - prefix[i]`
- [ ] **2D prefix sum:** For matrix range queries
- [ ] **When to use:** Any "sum of subarray" or "range sum" problem

### Problems:
- [ ] Contiguous array (subarray sum equals target)
- [ ] Subarray sum equals K
- [ ] Maximum subarray sum (Kadane's algorithm)
- [ ] Range sum query (immutable and mutable)
- [ ] Product of array except self

**Key Insight:** Precompute prefix sums to answer range queries in O(1) instead of O(n).

**Java Code Example:**
```java
public int[] productExceptSelf(int[] nums) {
    int n = nums.length;
    int[] result = new int[n];
    
    // prefix[i] = product of all elements before index i
    result[0] = 1;
    for (int i = 1; i < n; i++) {
        result[i] = result[i - 1] * nums[i - 1];
    }
    
    // suffix = product of all elements after index i
    int suffix = 1;
    for (int i = n - 1; i >= 0; i--) {
        result[i] *= suffix;
        suffix *= nums[i];
    }
    
    return result;
}
// Time: O(n), Space: O(1) (excluding result array)
```

---

**Exit Criteria for Phase 2:**
- [ ] You can solve 50+ array pattern problems
- [ ] You recognize patterns instantly: Is this two-pointer? Sliding window? Prefix sum?
- [ ] You optimize from O(n²) brute force to O(n) or O(n log n)

---

# PHASE 3: Tree & Graph Fundamentals (Weeks 17-24)

**Goal:** Master trees and graphs, the most important structures for interviews.

## 3.1 Binary Trees - Fundamentals (2 weeks)
**Prerequisite:** Linked lists, recursion, queues, stacks
**Why critical?** Trees are in nearly every interview. Start simple, master traversals.

### 3.1a Tree Structure & Traversals
**What to Learn:**
- [ ] **Tree anatomy:** Root, leaves, parent-child, subtrees
- [ ] **Tree types:** Full, complete, perfect, balanced, degenerate
- [ ] **Height vs. depth:** Height from node to leaves, depth from root to node

### Traversals (All critical):
- [ ] **Inorder (Left, Node, Right):** For BST, gives sorted output
- [ ] **Preorder (Node, Left, Right):** For copying trees
- [ ] **Postorder (Left, Right, Node):** For deleting trees
- [ ] **Level-order (BFS):** Print level by level

### Problems:
- [ ] Implement all 4 traversals (both recursive and iterative)
- [ ] Binary tree level-order traversal
- [ ] Invert binary tree (mirror)
- [ ] Maximum depth of tree
- [ ] Balanced binary tree (height balanced)

**Java Code Example:**
```java
public class TreeNode {
    int val;
    TreeNode left, right;
    TreeNode(int val) { this.val = val; }
}

// Inorder traversal (recursive)
public void inorder(TreeNode root) {
    if (root == null) return;
    inorder(root.left);
    System.out.println(root.val);
    inorder(root.right);
}
// Time: O(n), Space: O(h) where h = height

// Level-order traversal (iterative BFS)
public List<List<Integer>> levelOrder(TreeNode root) {
    List<List<Integer>> result = new ArrayList<>();
    if (root == null) return result;
    
    Queue<TreeNode> queue = new LinkedList<>();
    queue.add(root);
    
    while (!queue.isEmpty()) {
        int size = queue.size();  // 📘 Key: Snapshot level size
        List<Integer> level = new ArrayList<>();
        
        for (int i = 0; i < size; i++) {
            TreeNode node = queue.poll();
            level.add(node.val);
            if (node.left != null) queue.add(node.left);
            if (node.right != null) queue.add(node.right);
        }
        result.add(level);
    }
    return result;
}
// Time: O(n), Space: O(w) where w = max width
```

---

### 3.1b Path & Distance Problems
**What to Learn:**
- [ ] Root-to-leaf paths
- [ ] Path sum: Sum of node values
- [ ] Lowest common ancestor (LCA)
- [ ] Distance between nodes
- [ ] Diameter of tree (longest path)

### Problems:
- [ ] Sum root to leaf numbers
- [ ] Path sum I & II
- [ ] Lowest common ancestor
- [ ] Binary tree diameter
- [ ] Flatten binary tree to linked list

**Java Code Example:**
```java
// Path sum: Find if there's a root-to-leaf path with given sum
public boolean pathSum(TreeNode root, int targetSum) {
    return dfs(root, 0, targetSum);
}

private boolean dfs(TreeNode node, int currentSum, int target) {
    if (node == null) return false;
    
    currentSum += node.val;
    
    // Check if leaf node and sum matches
    if (node.left == null && node.right == null) {
        return currentSum == target;
    }
    
    return dfs(node.left, currentSum, target) || 
           dfs(node.right, currentSum, target);
}
// Time: O(n), Space: O(h)
```

---

## 3.2 Binary Search Trees (BST) (1.5 weeks)
**Prerequisite:** Binary trees fundamentals
**Why critical?** Interview favorite. Combines structure + search property.

### What to Learn:
- [ ] **BST property:** Left < Node < Right (for all nodes)
- [ ] **Operations:**
    - Search: O(log n) avg, O(n) worst
    - Insert: O(log n) avg, O(n) worst
    - Delete: Three cases (no child, one child, two children)
    - Find min/max: Leftmost/rightmost node
- [ ] **Inorder traversal:** Returns sorted sequence
- [ ] **Validation:** Not just left < right, but entire subtree must satisfy BST property

### Problems:
- [ ] Validate binary search tree
- [ ] Insert into BST
- [ ] Delete node from BST
- [ ] Search in BST
- [ ] Inorder successor
- [ ] BST to sorted doubly linked list
- [ ] Recover BST (two nodes are swapped)

**Java Code Example:**
```java
// Validate BST - WRONG approach (only checks immediate children)
public boolean isValidBST_WRONG(TreeNode root) {
    if (root == null) return true;
    if (root.left != null && root.left.val >= root.val) return false;
    if (root.right != null && root.right.val <= root.val) return false;
    return isValidBST_WRONG(root.left) && isValidBST_WRONG(root.right);
}
// Problem: [10, 5, 15, null, null, 6, 20] → False positive (6 < 10 violated)

// CORRECT approach (track min/max bounds)
public boolean isValidBST(TreeNode root) {
    return isValid(root, Long.MIN_VALUE, Long.MAX_VALUE);
}

private boolean isValid(TreeNode node, long minVal, long maxVal) {
    if (node == null) return true;
    
    // Node must be within bounds
    if (node.val <= minVal || node.val >= maxVal) {
        return false;
    }
    
    // Left subtree: all values < node.val
    // Right subtree: all values > node.val
    return isValid(node.left, minVal, node.val) && 
           isValid(node.right, node.val, maxVal);
}
// Time: O(n), Space: O(h)
```

---

## 3.3 Graphs - Fundamentals (2 weeks)
**Prerequisite:** Arrays, linked lists, queues, stacks
**Why critical?** Graphs are everywhere: networks, maps, social graphs, dependencies.

### 3.3a Graph Representation
**What to Learn:**
- [ ] **Adjacency list:** List of neighbors for each node (preferred)
- [ ] **Adjacency matrix:** 2D array of edges (dense graphs)
- [ ] **Weighted vs. unweighted:** Edges have costs or not
- [ ] **Directed vs. undirected:** Edges point one way or both ways

### 3.3b Graph Traversals
**BFS (Breadth-First Search):**
- [ ] Queue-based, explores level by level
- [ ] Shortest path in unweighted graphs
- [ ] Time: O(V + E), Space: O(V)

**DFS (Depth-First Search):**
- [ ] Stack-based (or recursion), explores as far as possible
- [ ] Topological sorting, cycle detection
- [ ] Time: O(V + E), Space: O(V)

### Problems:
- [ ] Number of islands (connected components)
- [ ] Clone graph (deep copy)
- [ ] Course schedule (topological sort, cycle detection)
- [ ] Word ladder (BFS shortest path)
- [ ] Pacific Atlantic water flow
- [ ] Surrounded regions

**Java Code Example:**
```java
// Number of islands - count connected components
public int numIslands(char[][] grid) {
    int count = 0;
    for (int i = 0; i < grid.length; i++) {
        for (int j = 0; j < grid[0].length; j++) {
            if (grid[i][j] == '1') {
                dfs(grid, i, j);
                count++;
            }
        }
    }
    return count;
}

private void dfs(char[][] grid, int i, int j) {
    if (i < 0 || i >= grid.length || j < 0 || j >= grid[0].length || grid[i][j] == '0') {
        return;
    }
    grid[i][j] = '0';  // Mark as visited
    dfs(grid, i + 1, j);
    dfs(grid, i - 1, j);
    dfs(grid, i, j + 1);
    dfs(grid, i, j - 1);
}
// Time: O(m * n), Space: O(m * n) for recursion stack
```

---

## 3.4 Advanced Tree Patterns (1.5 weeks)
**Prerequisite:** Binary trees, BST, graph DFS/BFS

### What to Learn:
- [ ] **Segment trees:** Range query/update in O(log n)
- [ ] **Tries:** Prefix tree, for strings
- [ ] **Union-Find:** Disjoint set, for connectivity
- [ ] **AVL trees:** Self-balancing BST (nice to know, not always asked)

### Problems:
- [ ] Implement Trie (prefix tree)
- [ ] Implement Trie with search and startsWith
- [ ] Design add and search word data structure (regex)
- [ ] Word search II (Trie + DFS)
- [ ] Redundant connection (Union-Find)
- [ ] Number of islands II (Union-Find)

---

**Exit Criteria for Phase 3:**
- [ ] You can implement all tree traversals from scratch
- [ ] You understand BST property deeply
- [ ] You solve 60+ tree and graph problems
- [ ] You recognize when to use BFS vs. DFS vs. Trie vs. Union-Find

---

# PHASE 4: Advanced Algorithms (Weeks 25-32)

**Goal:** Master high-level algorithmic patterns that combine multiple techniques.

## 4.1 Dynamic Programming (2 weeks)
**Prerequisite:** Recursion, arrays, trees
**Why critical?** Hard interview problems often use DP. Requires pattern recognition.

### 4.1a DP Fundamentals
**What to Learn:**
- [ ] **Optimal substructure:** Problem can be solved by combining solutions to subproblems
- [ ] **Overlapping subproblems:** Same subproblems computed multiple times
- [ ] **Top-down (memoization):** Recursion + caching
- [ ] **Bottom-up (tabulation):** Build solution iteratively

### 4.1b Classic DP Problems
- [ ] Fibonacci (base case, recurrence)
- [ ] Climbing stairs (variants: 1 or 2 steps, any sequence)
- [ ] House robber (can't rob adjacent houses)
- [ ] 0/1 Knapsack (classic optimization)
- [ ] Coin change (minimum coins for amount)
- [ ] Longest increasing subsequence (LIS)
- [ ] Edit distance (Levenshtein distance)
- [ ] Longest common subsequence (LCS)

### 4.1c 2D DP
- [ ] Unique paths (grid path counting)
- [ ] Minimum path sum
- [ ] Maximal square
- [ ] Distinct subsequences

**Java Code Example:**
```java
// Coin change: minimum coins to make amount
public int coinChange(int[] coins, int amount) {
    int[] dp = new int[amount + 1];
    Arrays.fill(dp, amount + 1);  // 📘 Initialize with impossible value
    dp[0] = 0;  // Base case: 0 coins for amount 0
    
    for (int i = 1; i <= amount; i++) {
        for (int coin : coins) {
            if (coin <= i) {
                dp[i] = Math.min(dp[i], dp[i - coin] + 1);
            }
        }
    }
    
    return dp[amount] > amount ? -1 : dp[amount];
}
// Time: O(amount * coins), Space: O(amount)

// Recurrence: dp[i] = min(dp[i - coin] + 1) for all coins <= i
```

---

## 4.2 Backtracking (1 week)
**Prerequisite:** Recursion, trees
**Why critical?** Generate all possibilities, search exhaustively, constraint satisfaction.

### What to Learn:
- [ ] **Pattern:** Try option → recurse → undo (backtrack)
- [ ] **When to use:** Permutations, combinations, N-Queens, Sudoku, word search
- [ ] **Pruning:** Cut branches that can't lead to solution

### Problems:
- [ ] Permutations
- [ ] Combinations
- [ ] Generate parentheses (all valid bracket combinations)
- [ ] N-Queens (place queens on chessboard)
- [ ] Sudoku solver
- [ ] Word search
- [ ] Subset/power set

**Java Code Example:**
```java
// Generate all permutations
public List<List<Integer>> permute(int[] nums) {
    List<List<Integer>> result = new ArrayList<>();
    backtrack(nums, new ArrayList<>(), new boolean[nums.length], result);
    return result;
}

private void backtrack(int[] nums, List<Integer> current, boolean[] used, List<List<Integer>> result) {
    // Base case: all numbers used
    if (current.size() == nums.length) {
        result.add(new ArrayList<>(current));
        return;
    }
    
    // Try each unused number
    for (int i = 0; i < nums.length; i++) {
        if (!used[i]) {
            // Choose
            current.add(nums[i]);
            used[i] = true;
            
            // Explore
            backtrack(nums, current, used, result);
            
            // Unchoose (backtrack)
            current.remove(current.size() - 1);
            used[i] = false;
        }
    }
}
// Time: O(n! * n), Space: O(n) for recursion + result
```

---

## 4.3 Greedy Algorithms (1 week)
**Prerequisite:** Arrays, sorting, graphs
**Why critical?** Problems that don't need DP, but smart local choices.

### What to Learn:
- [ ] **Pattern:** Make locally optimal choice at each step
- [ ] **When it works:** Greedy choice property + optimal substructure
- [ ] **Proof:** Why the choice is safe

### Problems:
- [ ] Activity selection (schedule non-overlapping events)
- [ ] Interval scheduling maximization
- [ ] Jump game
- [ ] Gas station
- [ ] Minimum interval to include each query
- [ ] Maximum units on a truck

**Key Insight:** Greedy works when you can **prove** that the local choice doesn't block the global optimum.

---

## 4.4 Binary Search & Variants (1 week)
**Prerequisite:** Arrays, sorting, complexity analysis
**Why critical?** O(log n) is powerful. Search space can be more than just "found element".

### What to Learn:
- [ ] **Classic binary search:** Search for element
- [ ] **Search on answer space:** Can the answer be X? → Find min/max possible answer
- [ ] **Rotated arrays:** Handle pivots
- [ ] **Almost-sorted:** Search in partially sorted data

### Problems:
- [ ] Search in rotated sorted array
- [ ] Find first and last position
- [ ] Median of two sorted arrays
- [ ] Capacity to ship packages (binary search on answer)
- [ ] Minimum divisor (search on answer)

---

## 4.5 Bit Manipulation (1 week)
**Prerequisite:** Binary numbers, basic operators
**Why critical?** Elegant solutions, often required for hard problems.

### What to Learn:
- [ ] **Bitwise operators:** AND, OR, XOR, NOT, shift
- [ ] **XOR properties:** `a ^ a = 0`, `a ^ 0 = a`, `a ^ b = b ^ a` (commutative)
- [ ] **Bit masking:** Use bits to represent set membership
- [ ] **Bit counting:** Count set bits

### Problems:
- [ ] Single number (find unique element using XOR)
- [ ] Power of two (check if `n & (n-1) == 0`)
- [ ] Hamming distance
- [ ] Number of 1 bits
- [ ] Bitwise AND of numbers range

---

**Exit Criteria for Phase 4:**
- [ ] You can identify DP problems and set up recurrence
- [ ] You solve backtracking problems systematically
- [ ] You recognize greedy problems and can justify the approach
- [ ] You solve 100+ medium-hard problems

---

# PHASE 5: Interview Patterns & Optimization (Weeks 33-40)

**Goal:** Recognize high-level patterns that combine techniques. Interview-ready.

## 5.1 Pattern Recognition Framework

Learn to ask these questions:

1. **"What are we finding?"** Min/max, count, existence, all solutions
2. **"What's the constraint?"** Time limit, space limit, must modify in-place
3. **"Is there a sorted/ordered property?"** Binary search, two pointers
4. **"Do elements repeat?"** Hash map for frequency
5. **"Is it about subarrays/substrings?"** Sliding window, prefix sum
6. **"Does problem have optimal substructure?"** Dynamic programming, greedy
7. **"All permutations/combinations?"** Backtracking

## 5.2 Meta Patterns (How to Combine Techniques)

### Two-Pointer + Hash Map
- Sliding window with character frequency
- 3Sum with sorting + two pointers

### BFS + Hash Map
- Level-order traversal with state tracking
- Shortest path with visited set

### DFS + Backtracking
- All paths in tree
- Word search in grid

### DP + Memoization
- Recursive solution with caching
- Matrix path problems

---

## 5.3 System Design / Advanced Patterns

- [ ] LRU Cache (hash map + doubly linked list)
- [ ] Trie + DFS (word search, autocomplete)
- [ ] Union-Find (connectivity, cycles)
- [ ] Segment trees (range queries)

---

# PHASE 6: Competitive Programming & Edge Cases (Weeks 41+)

**Goal:** Master edge cases, optimize for speed, handle tricky variants.

## 6.1 Edge Case Mastery
- [ ] Empty input
- [ ] Single element
- [ ] All same elements
- [ ] Negative numbers
- [ ] Large numbers (overflow, use long)
- [ ] Null/None values

## 6.2 Optimization Techniques
- [ ] Early termination (break when answer found)
- [ ] Caching / memoization
- [ ] Space-time trade-offs
- [ ] In-place modifications

## 6.3 Hard Interview Problems
- [ ] Merge K sorted lists (min heap + linked lists)
- [ ] Trapping rain water (dynamic programming)
- [ ] Regular expression matching (DP)
- [ ] Burst balloons (DP interval)
- [ ] Median finder (two heaps)

---

# 📋 Study Schedule Template

## Weekly Plan (Adjust based on pace)

```
Week X: [Topic]

Monday-Tuesday: Concept & intuition
  - Read explanation
  - Understand key properties
  - Trace examples by hand

Wednesday-Thursday: Implement
  - Code from scratch in Java
  - Code from scratch in Dart
  - Verify on sample inputs

Friday-Saturday: Practice
  - Solve 5-10 problems (easy → medium)
  - Optimize solutions
  - Analyze complexity

Sunday: Review & Consolidate
  - Summarize key insights
  - Create mental models
  - Plan next week
```

---

# 🎯 Success Metrics

- [ ] **1-2 weeks:** Foundation layer complete, can analyze complexity instantly
- [ ] **4 weeks:** All core structures understood, 50+ problems solved
- [ ] **8 weeks:** Trees & graphs mastered, 100+ problems solved
- [ ] **12 weeks:** DP & backtracking patterns clear, 150+ problems solved
- [ ] **16 weeks:** Can solve random interview problems, optimization habits formed
- [ ] **20+ weeks:** Advanced patterns, competitive programming ready

---

# 📚 Practice Platforms & Resources

- **LeetCode:** Most comprehensive, recommended difficulty progression
- **HackerRank:** Good explanations, editorial solutions
- **GeeksforGeeks:** Theory explanations
- **Neetcode.io:** Problem categorization by pattern
- **InterviewBit:** Interview-focused, curated problems

---

# 🔧 How to Use This Roadmap

1. **Week 1-3:** Do Phase 0 completely. Don't skip recursion or complexity.
2. **Week 4-12:** Master Phase 1 structures one by one. Solve problems at each.
3. **Week 13-16:** Apply array patterns. This is where DSA becomes fun.
4. **Week 17-24:** Trees & graphs. Spend time here. These are interview favorites.
5. **Week 25-32:** DP, backtracking, greedy. Hard problems start here.
6. **Week 33-40:** Recognition & optimization. Solve random problems.
7. **Week 41+:** Competitive programming, edge cases, mastery.

---

# ✅ You'll Know You're Ready When:

- [ ] You can implement any data structure from scratch
- [ ] You instantly recognize problem patterns
- [ ] You solve medium problems in 20-30 minutes
- [ ] You explain complexity and trade-offs confidently
- [ ] You handle edge cases naturally
- [ ] You optimize without hints
- [ ] You can communicate your solution clearly to interviewers

---

**This roadmap is YOUR blueprint. Stick to it. Nothing will be left behind.** 🚀