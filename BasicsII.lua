--https://ebens.me/post/lua-for-programmers-part-1/
-- Loops --
i = 1

-- Basic while Loops
while i < 5 do
  i = i + 1
  print(i)
end

-- repeat (The same as do while)
repeat
  i = i - 1
  print(i)
until i == 1

-- for The numeric version (Apparently there are two types of for loops)

x = 1
for i = 1, 11, 2 do
  x = x * i
  print(x)
end
