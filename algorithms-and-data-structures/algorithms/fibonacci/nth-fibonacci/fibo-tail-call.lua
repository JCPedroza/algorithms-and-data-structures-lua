-- Compute nth Fibonacci number using tail call recursion.
local function fibo(index)
  local function loop(now, nxt, idx)
    if idx < 1 then
      return now
    end

    return loop(nxt, now + nxt, idx - 1)
  end

  return loop(0, 1, index)
end

return {
  algorithm = fibo,
  id = 'tail call recursion'
}
