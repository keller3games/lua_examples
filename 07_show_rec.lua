function show_rec(t, level)
  level = level or 0
  local intend = string.rep("  ", level)
  for k, v in pairs(t) do
	if type(v) == "table" then
	  print(intend .. k .. ": table" )
	  show_rec(v, level+1)
	else
	  print(intend .. k .. ": " .. tostring(v))
    end
  end
end
