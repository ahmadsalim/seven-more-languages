function ends_in_3(num)
  return math.abs(num) % 10 == 3
end

function is_prime(num)
  if num <= 2 then
    return true
  else
    for i=2,math.sqrt(num),1 do
      if num % i == 0 then
        return false
      end
    end
    return true
  end
end

function first_prime_ending_in_3(num)
  local i = 1
  local c = 0
  while true do
    if is_prime(i) and ends_in_3(i) then
      print(i)
      c = c + 1
    end
    if c >= num then
      break
    end
    i = i + 1
  end
end

function for_loop(a, b, f)
  if a > b then
    return
  end
  local i = a
  while i <= b do
    f(i)
    i = i + 1
  end
end

function reduce(max, init, f)
  local v = init
  for i=1,max do
    v = f(v, i)
  end
  return v
end

function factorial(num)
  function mult(prev, next)
    return prev * next
  end
  return reduce(num, 1, mult)
end
