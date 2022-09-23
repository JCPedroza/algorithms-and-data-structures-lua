--- Compute sum of even Fibonacci numbers whose value does not exceed the given
--- limit. Uses the value of every third fibonacci number and a while loop.
--- Complexity: time O(n), space O(1).
--- @param limit number Inclusive limit of the sequence.
--- @return number sum Sum of the sequence.
local function even_fibo_sum(limit)
  local first
  local second = 1
  local third = 2
  local sum = 0

  while third <= limit do
    sum = sum + third  -- Every third fibo is even
    first = second + third
    second = third + first
    third = first + second
  end

  return sum
end

return {
  fun = even_fibo_sum,
  id = 'value of every third fibo num, while loop'
}
