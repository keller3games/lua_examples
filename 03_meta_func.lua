make_repeat_func = function(func, n)
  local result = function()
    for i = 1, n do
      func()
    end
  end
  return result
end
