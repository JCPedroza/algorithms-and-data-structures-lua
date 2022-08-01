-- Compute nth Fibonacci number using memoization.
local function fibo(index)
  local results = {[0] = 0, [1] = 1}

  local function loop(idx)
    if results[idx] then
      return results[idx]
    end

    results[idx] = loop(idx - 1) + loop(idx - 2)
    return results[idx]
  end

  return loop(index)
end

return {
  algorithm = fibo,
  id = 'recursive memoization'
}
