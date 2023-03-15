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
