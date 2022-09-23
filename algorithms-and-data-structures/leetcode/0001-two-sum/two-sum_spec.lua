local solutions = require('two-sum_repo')

for _, solution in ipairs(solutions) do
  describe(string.format('Leet 1 "%s"', solution.id), function()
    it('finds indexes of values that add up to target value', function()
      assert.same(
        solution.fun(12, {11, 3, 9, 15}),
        {2, 3})

      assert.same(
        solution.fun(6, {2, 3, 4}),
        {1, 3})

      assert.same(
        solution.fun(-16, {5, 6, -8, 13, -8}),
        {3, 5})
    end)

    it('returns {-1, -1} when no solution is found', function()
      assert.same(
        solution.fun(0, {0}),
        {-1, -1})

      assert.same(
        solution.fun(5, {}),
        {-1, -1})
    end)
  end)
end
