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



