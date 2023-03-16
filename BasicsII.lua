--https://ebens.me/post/lua-for-programmers-part-1/
-- Loops --
i = 1

-- Basic while Loops
while i < 5 do
  i = i + 1
--  print(i)
end

-- repeat (The same as do while)
repeat
  i = i - 1
--  print(i)
until i == 1

-- for The numeric version (Apparently there are two types of for loops)

x = 1
for i = 1, 11, 2 do
  x = x * i
--  print(x)
end

-- Loop termination in Lua
while true do
  if condition then
    x = x ^ 2
  else
    break
  end
end
-- Lua doesn't have a continue keyword
-- Generic for loops and Tables
a = { x = 400, y = 300, [20] = "foo" }
b = { 20, 30, 40 }

for key, value in pairs(a) do
--  print(key, value)
end

for index, value in ipairs(b) do
--  print(index, value)
end
t = { 23, 25, 54, 33, 59 }
table.insert(t, 50) -- Insert 50 at the end
table.insert(t, 3, 88) -- Inserts 88 at index 3, remember that index in lua begins from 1
table.remove(t, 2) -- removes item at index 2
table.sort(t)
for index, value in ipairs(t) do
  print(value)
end
