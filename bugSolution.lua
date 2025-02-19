local function foo(a)
  if a == nil then
    return nil
  else
    return a + 1
  end
end

local b = foo(nil)
print(b)  -- Output: nil

local c = foo(10)
print(c)  -- Output: 11

--The correct way to call foo with no arguments is to explicitly pass nil:
local d = foo(nil)
print(d) -- Output: nil

--Alternatively, you can use multiple arguments and check which arguments are provided using the select function
local function foo2(...)
  local numArgs = select('#', ...)
  if numArgs == 0 then
    return nil
  else
    local sum = 0
    for i = 1, numArgs do
        sum = sum + select(i, ...)
    end
    return sum + numArgs --Add the number of arguments for a different result
  end
end

print(foo2()) --Output: nil
print(foo2(1,2,3)) --Output: 9
print(foo2(5)) --Output: 6