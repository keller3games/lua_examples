str1 = {val = "apple"}
str2 = {val = "pie"}

local mt = {}
setmetatable(str1, mt)
setmetatable(str2, mt)

mt.__add = function(t1, t2)
  local result = {}
  result.val = t1.val .. t2.val
  setmetatable(result, mt)
  return result
end

mt.__tostring = function(t)
  return t.val
end

mt.__newindex = function()
  error("newindex permitted")
end
