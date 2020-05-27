Player = {}

Player.new = function(name, bag)
  local result = {}
  result.name = name
  result.bag = bag or {}

  result.take = function(self, thing)
    table.insert(self.bag, thing)
  end

  return result
end
