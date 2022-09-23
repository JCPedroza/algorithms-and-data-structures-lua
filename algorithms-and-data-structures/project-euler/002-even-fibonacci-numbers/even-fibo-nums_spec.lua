local solutions = require('even-fibo-nums_repo')

for _, solution in ipairs(solutions) do
  describe(string.format('Euler 002 "%s"', solution.id), function()
    it('computes sum of even fibonacci numbers up to the given limit', function()
      assert.is_equal(solution.fun(-1), 0)
      assert.is_equal(solution.fun(0), 0)
      assert.is_equal(solution.fun(2), 2)
      assert.is_equal(solution.fun(10), 10)
      assert.is_equal(solution.fun(60), 44)
    end)
  end)
end
