-- Two dashes start a one-line comment
--[[
  Adding to ['s and ]'s makes it a
  multiline comment
--]]
-- Variables and control flow
num = 42 --All numbers are doubles
s = 'example'
t = "double quotes"
u = [[
      Multiline strings
      can be written like this
    ]]
t = nil --Undefines t; Lua uses garbage collection
while num < 50 do
  num = num + 1
end

if num > 40 then
  print('over 40')
elseif s~= 'example' then
  io.write('not over 40\n')
else 
  thisIsGlobal = 5 --Variables are global by default
  local line = io.read() --Reads next stdin line
  print('Winter is coming '.. line)-- .. operator to concatenate strings
end

foo = anUnkownVariable -- foo will be nil in this case

aBoolValue = false

if not aBoolValue then print('it was false') end
ans = aBoolValue and 'yes' or 'no' -- This is similar to a ternary expression

sum = 0
for i = 1, 100 do -- The range includes both end
 sum = sum + i
end
print(sum)

countDownSum = 0
for j = 100, 1, -1 do countDownSum = countDownSum + j end
print(countDownSum)

repeat
  print('the way of the future')
  num = num - 1
until num == 0

-- Functions
function fib(n)
  if n < 2 then return 1 end
  return fib(n - 2) + fib(n - 1)
end

print(fib(10))

-- Closures and anonymous functions
function adder(x)
  return function (y) return x + y end -- The returned function is created when adder is called, and remembers the value of x:
end

a1=adder(9)
print(a1(16))


x, y, z = 1, 2, 3, 4 -- 4 is thrown away

-- Functions are first-class and the functions below acts in a similar way
function f(x) return x * x end
f = function (x) return x * x end

-- The function below will be a local function, even though it has been declared in the global context
local function g(x) return math.sin(x) end
local g = function (x) return math.sin(x) end

-- Hashtables in Lua --
table = {key1 = 'value1', key2 = false} -- Dict literals will have string keys by default
print(table.key1)
table.newKey = {} -- Adds a new key/value pair
table.key2 = nil -- Remove key2
-- Literal notation for any (non-nil) value as key:
u = {['@!#'] = 'qbert', [{}] = 1729, [6.28] = 'tau'}
print(u[6.28])  -- prints "tau"

-- Key matching is basically by value for numbers
-- and strings, but by identity for tables.
a = u['@!#']  -- Now a = 'qbert'.
b = u[{}]     -- We might expect 1729, but it's nil:
-- b = nil since the lookup fails. It fails
-- because the key we used is not the same object
-- as the one used to store the original value. So
-- strings & numbers are more portable keys.
function h(x) print(x.key1) end
h{key1 = 'Sudu'}

for key, val in pairs(u) do
  print(key, val)
end


