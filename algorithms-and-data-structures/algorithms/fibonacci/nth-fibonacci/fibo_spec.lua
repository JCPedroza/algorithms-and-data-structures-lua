local test_subjects = {
  require('fibo-recursive'),
  require('fibo-tail-call'),
  require('fibo-memoized')
}

for _, subject in ipairs(test_subjects) do
  describe(string.format('Fibonacci algorithm "%s"', subject.id), function()
    it('computes the first Fibonacci numbers', function()
      assert.is_equal(subject.fun(0), 0)
      assert.is_equal(subject.fun(1), 1)
      assert.is_equal(subject.fun(2), 1)
      assert.is_equal(subject.fun(3), 2)
      assert.is_equal(subject.fun(4), 3)
      assert.is_equal(subject.fun(5), 5)
      assert.is_equal(subject.fun(6), 8)
    end)
  end)
end
