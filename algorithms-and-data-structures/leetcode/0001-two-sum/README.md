# Two Sum

Given an `array` of integers *nums* and an integer *target*, return the
indexes of the two numbers that add add up to the *target* value.

You cannot use the same element twice. If no solution is found, return {-1, -1}.

The indexes in the answer must be in ascending order.

## Function Signature

```lua
function two_sum(target: number, nums: {number}): {number}
```

## Examples

```text
in: target = 12, nums = [11, 3, 9, 15]
out: [2, 3]

in: target = 6, nums = [2, 3, 4]
out: [1, 3]

in: target = -16, nums = [5, 6, -8, 13, -8]
out: [3, 5]

in: target = 0, nums = [1]
out: [-1, -1]

in: target = 5, nums = []
out: [-1, -1]
```

## Constraints

```text
0 <= length of nums list <= 100
-100 <= number value <= 100
-100 <= target value <= 100
There's either one solution or no solution.
```

## Extra

Find a solution with time complexity below `O(n²)`.

## Resources

- [LeetCode 0001 Two Sum][0]

[0]: https://leetcode.com/problems/two-sum/
