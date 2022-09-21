--- Compute sum of multiples of 3 or 5 whose value is below the given limit.
--- Uses skipped sequences (no trial division) and two while loops in series.
--- Complexity: time O(n), space O(1).
--- @param limit number Exclusive limit of the series.
--- @return number sum Sum of multiples of 3 or 5 whose value is below the
--- given limit.
local function muls_of_3_or_5(limit)
  local threes = 3
  local fives = 5
  local sum = 0

  -- Count both multiples of 3 and 5 until the 'fives' sequence reaches the
  -- limit (it will always reach it faster than the 'threes').
  while fives < limit do
    if fives % 3 ~= 0 then -- Don't count multiples of both twice.
      sum = sum + fives
    end
    sum = sum + threes
    fives = fives + 5
    threes = threes + 3
  end

  -- Count the remaining multiples of 3.
  while threes < limit do
    sum = sum + threes
    threes = threes + 3
  end

  return sum
end

return {
  fun = muls_of_3_or_5,
  id = 'only multiples in series whiles'
}
