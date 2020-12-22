#Big O Cheat Sheet:

- Big OsO(1) Constant- no loops
  1. O(log N) Logarithmic- usually searching algorithms have log n if they are sorted (Binary Search)
  2. O(n) Linear- for loops, while loops through n items
  3. O(n log(n)) Log Liniear- usually sorting operations
  4. O(n^2) Quadratic- every element in a collection needs to be compared to ever other element. Two nested loops
  5. O(2^n) Exponential- recursive algorithms that solves a problem of size N
  6. O(n!) Factorial- you are adding a loop for every element

  * Iterating through half a collection is still O(n)
  * Two separate collections: O(a * b)
- What can cause time in a function?-
  1. Operations (+, -, *, /)
  2. Comparisons (<, >, ==)
  3. Looping (for, while)
  4. Outside Function call (function())
-  Rules
  Rule 1: Always worst Case
  Rule 2: Remove Constants
  Rule 3: Different inputs should have different variables. O(a+b). A and B arrays nested would be
    O(a*b)
    + for steps in order
    * for nested steps
  Rule 4: Drop Non-dominant terms
- What causes Space complexity?-
  1. Variables
  2. Data Structures
  3. Function Call
  4. Allocations
