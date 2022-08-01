local test_subjects = {
  require('fibo-recursive'),
  require('fibo-tail-call'),
  require('fibo-memoized')
}

for _, subject in ipairs(test_subjects) do
  describe(string.format('Fibonacci algorithm "%s"', subject.id), function()
    it('computes the nth Fibonacci number', function()
      assert.is_equal(subject.algorithm(0), 0)
      assert.is_equal(subject.algorithm(1), 1)
      assert.is_equal(subject.algorithm(2), 1)
      assert.is_equal(subject.algorithm(3), 2)
      assert.is_equal(subject.algorithm(4), 3)
      assert.is_equal(subject.algorithm(5), 5)
      assert.is_equal(subject.algorithm(6), 8)
    end)
  end)
end
