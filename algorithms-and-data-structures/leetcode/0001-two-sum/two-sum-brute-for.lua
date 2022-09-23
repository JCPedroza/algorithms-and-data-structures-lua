--- Find indexes of two numbers that add up to the target.
--- @param target number Target value of the sum.
--- @param nums number[] Array of numbers.
--- @return number[] indexes Indexes of the solution, or {-1, -1} if no solution
--- was found.
local function two_sum(target, nums)
  for pivot_idx, pivot_val in ipairs(nums) do
    for addend_idx = pivot_idx + 1, #nums, 1 do
      if pivot_val + nums[addend_idx] == target then
        return {pivot_idx, addend_idx}
      end
    end
  end

  return {-1, -1} -- No solution was found
end

return {
  fun = two_sum,
  id = 'brute force, nested for loops'
}
