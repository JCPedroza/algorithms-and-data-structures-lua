# Multiples of 3 or 5

If we list all the natural numbers below 10 that are multiples of 3 or 5, we
get 3, 5, 6 and 9. The sum of these multiples is 23.

## Solve Multiples of 3 or 5

Write a function, `muls_of_3_or_5`, that takes a number, `limit`, as an
argument, and returns the sum of all the multiples of 3 or 5 whose value is
less than `limit`.

## Function Signature

```lua
function muls_of_3_or_5(limit: number): number
```

## Examples

```
in: -1  out:  0
in:  0  out:  0
in:  1  out:  0
in:  3  out:  0
in:  5  out:  3
in:  6  out:  8
in: 10  out: 23
```

## Resources

- [Project Euler Problem 001][0]
- [Project Euler Problem 001 at freeCodeCamp][1]
- [Sum Multiples of 3 or 5 at Rosetta Code][3]

[0]: https://projecteuler.net/problem=1
[1]: https://www.freecodecamp.org/learn/coding-interview-prep/project-euler/problem-1-multiples-of-3-and-5
[2]: https://rosettacode.org/wiki/Sum_multiples_of_3_and_5
