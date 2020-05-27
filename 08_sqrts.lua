sqrts = {}
local mt = {}
setmetatable(sqrts, mt)

mt.__index = function(t, n)
  t[n] = math.sqrt(n)
  return t[n]
end
