--- Compute sum of even Fibonacci numbers whose value does not exceed the given
--- limit. Uses a skipped sequence and tail call recursion.
--- Complexity: time O(n), space O(n).
--- @param limit number Inclusive limit of the sequence.
--- @return number sum Sum of the sequence.
local function even_fibo_sum(limit)
  -- next = 4 * next + current iterates through even fibos only
  local function loop(sum, current, next)
    if current > limit then return sum end
    return loop(sum + current, next, 4 * next + current)
  end

  return loop(0, 2, 8)
end

return {
  fun = even_fibo_sum,
  id = 'skipped sequence, tail call'
}
