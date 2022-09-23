--- Compute sum of even Fibonacci numbers whose value does not exceed the given
--- limit. Uses a skipped sequence and a while loop.
--- Complexity: time O(n), space O(1).
--- @param limit number Inclusive limit of the sequence.
--- @return number sum Sum of the sequence.
local function even_fibo_sum(limit)
  local current = 2
  local next = 8
  local sum = 0

  -- next = 4 * next + current iterates through even fibos only
  while current <= limit do
    sum = sum + current
    current, next = next, 4 * next + current
  end

  return sum
end

return {
  fun = even_fibo_sum,
  id = 'skipped sequence, while loop'
}
