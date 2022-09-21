-- https://en.wikipedia.org/wiki/Triangular_number
-- 1 + 2 + ... + n  =  n (n + 1) / 2
-- 5 + 10 + ... + m  =  5 (1 + 2 + ... + m/5)
-- x (1 + 2 + ... + x/m)  =  x (x/m * (x/m + 1)) / 2
local function sum_for_mul(limit, multiple)
  local scaledLimit = limit // multiple
  return multiple * (scaledLimit * (scaledLimit + 1)) // 2
end

--- Compute sum of multiples of 3 or 5 whose value is below the given limit.
--- Uses an analytic approach.
--- Complexity: time O(1), space O(1).
--- @param limit number Exclusive limit of the series.
--- @return number sum Sum of multiples of 3 or 5 whose value is below the
--- given limit.
local function muls_of_3_or_5(limit)
  local incluLimit = limit - 1
  return sum_for_mul(incluLimit, 3 ) +
    sum_for_mul(incluLimit, 5) -
    sum_for_mul(incluLimit, 15)
end

return {
  fun = muls_of_3_or_5,
  id = 'analytic approach'
}
