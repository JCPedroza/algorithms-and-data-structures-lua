-- Check if a string is a palindrome.
local function is_palindrome(str)
  local str_normal = str
    :lower()
    :gsub('%W', '') -- Remove all non-word characters
  local str_reverse = str_normal:reverse()
  return str_normal == str_reverse
end

return {
  fun = is_palindrome,
  id = 'standard'
}
