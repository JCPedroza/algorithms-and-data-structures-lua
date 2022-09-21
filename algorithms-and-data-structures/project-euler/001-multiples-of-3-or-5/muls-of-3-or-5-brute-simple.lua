--- Compute sum of multiples of 3 or 5 whose value is below the given limit.
--- Uses brute force trial division and simple recursion.
--- Complexity: time O(n), space O(1).
--- @param limit number Exclusive limit of the series.
--- @return number sum Sum of multiples of 3 or 5 whose value is below the
--- given limit.
local function muls_of_3_or_5(limit)
  local function loop(lim)
    if lim < 3 then return 0 end

    if lim % 3 == 0 or lim % 5 == 0 then
      return lim + loop(lim - 1)
    end

    return loop(lim - 1)
  end

  return loop(limit - 1)
end

return {
  fun = muls_of_3_or_5,
  id = 'brute force and simple recursion'
}
