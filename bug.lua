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

--The bug is in this line:
local d = foo()
print(d) --Output: 1, this is not expected behavior because the function should return nil if no argument is given