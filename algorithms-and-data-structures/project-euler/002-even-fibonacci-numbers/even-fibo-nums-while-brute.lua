--- Compute sum of even Fibonacci numbers whose value does not exceed the given
--- limit. Uses brute force trial division and a while loop.
--- Complexity: time O(n), space O(1).
--- @param limit number Inclusive limit of the sequence.
--- @return number sum Sum of the sequence.
local function even_fibo_sum(limit)
  local current = 0
  local next = 1
  local sum = 0

  while next <= limit do
    current, next = next, current + next
    if current % 2 == 0 then sum = sum + current end
  end

  return sum
end

return {
  fun = even_fibo_sum,
  id = 'brute force trial division, while loop'
}
