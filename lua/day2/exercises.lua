require "util"
function concatenate(a1, a2)
  local result = {}
  for i=1,#a1 do
    result[#result + 1] = a1[i]
  end
  for i=1,#a2 do
    result[#result + 1] = a2[i]
  end
  return result
end

-- With help from https://forums.pragprog.com/forums/351/topics/13237
function newindex(table, key, value)
  rawset(table, key, value)
  if type(value) == "table" then
    setmetatable(table[key], { __add = concatenate })
  end
end

local mt = { __newindex = newindex }

setmetatable(_G, mt)
