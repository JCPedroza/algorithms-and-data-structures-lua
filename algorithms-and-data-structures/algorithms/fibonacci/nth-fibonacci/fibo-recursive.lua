-- Compute nth Fibonacci number using simple recursion.
local function fibo(index)
  if index < 2 then
    return index
  end

  return fibo(index - 1) + fibo(index - 2)
end

return {
  algorithm = fibo,
  id = 'simple recursion'
}
