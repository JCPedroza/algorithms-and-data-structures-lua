local test_subjects = {
  require('is-palindrome')
}

for _, subject in ipairs(test_subjects) do
  describe(string.format('Is-palindrome algorithm "%s"', subject.id), function()
    it('recognizes strings that are palindromes', function()
      assert.is_true(subject.fun(''))
      assert.is_true(subject.fun('TenEt'))
      assert.is_true(subject.fun('Anita  .laVa la? T!INA'))
    end)

    it('recognizes strings that are not palindromes', function()
      assert.is_false(subject.fun('Not a palindrome'))
    end)
  end)
end
