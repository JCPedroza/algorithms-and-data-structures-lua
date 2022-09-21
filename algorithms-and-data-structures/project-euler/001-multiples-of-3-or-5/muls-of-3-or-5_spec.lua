local solutions = require('muls-of-3-or-5_repo')

for _, solution in ipairs(solutions) do
  describe(string.format('Euler 001 "%s"', solution.id), function()
    it('sums multiples of 3 or 5 whose value is below the limit', function()
      assert.is_equal(solution.fun(-1), 0)
      assert.is_equal(solution.fun(0), 0)
      assert.is_equal(solution.fun(3), 0)
      assert.is_equal(solution.fun(5), 3)
      assert.is_equal(solution.fun(6), 8)
      assert.is_equal(solution.fun(50), 543)
      assert.is_equal(solution.fun(100), 2318)
    end)
  end)
end
