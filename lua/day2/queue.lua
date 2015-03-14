Queue = {
  new = function(self)
    local obj = {
      _data = {},
      _head = 1,
      _tail = 1
    }
    setmetatable(obj, self)
    self.__index = self
    return obj
  end,

  empty = function(self)
    return self._head == self._tail
  end,

  __tostring = function(self)
    local result = "["
    if not self:empty() then
      for i = self._head, self._tail - 1 do
        result = result .. tostring(self._data[i]) .. "  "
      end
    end
    result = result .. "]"
    return result
  end
}

function Queue:add(value)
  self._data[self._tail] = value
  self._tail = self._tail + 1
end

function Queue:remove()
  if self:empty() then
    return nil
  else
    local value = self._data[self._head]
    self._head = self._head + 1
    return value
  end
end
