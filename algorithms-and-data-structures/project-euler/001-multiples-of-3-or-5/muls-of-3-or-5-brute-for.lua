--- Compute sum of multiples of 3 or 5 whose value is below the given limit.
--- Uses brute force trial division and a for loop.
--- Complexity: time O(n), space O(1).
--- @param limit number Exclusive limit of the series.
--- @return number sum Sum of multiples of 3 or 5 whose value is below the
--- given limit.
local function muls_of_3_or_5(limit)
  local sum = 0

  for num = 1, limit - 1, 1 do
    if num % 3 == 0 or num % 5 == 0 then
      sum = sum + num
    end
  end

  return sum
end

return {
  fun = muls_of_3_or_5,
  id = 'brute force in a for loop'
}
