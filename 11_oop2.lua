Player = {}

Player.take = function(self, thing)
  table.insert(self.bag, thing)
end

Player.new = function(name, bag)
  local result = {}
  result.name = name
  result.bag = bag or {}
  setmetatable(result, {__index = Player })
  return result
end
