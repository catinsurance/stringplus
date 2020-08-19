local stringplus = {
  _VERSION = "VERSION 0.0.1 RUNNING IN " .. _VERSION:upper();
  _LICENCE = "SEE APACHE LICENCE 2.0 OR THE GITHUB PAGE."
}

function stringplus.ascii()
  local str
  local overrides = { [0]="(Null)", [9]="(Tab)",[10]="(\\n Newline)", [13]="(\\r Return)", [32]="(Space)"}
	local c
  local ascii = {}

	for n=0,126 do
		if overrides[n] then c = overrides[n] else c = string.char(n) end

    ascii[c] = n
	end

  return ascii
end

function stringplus.split(arg1, arg2)
  local str = assert(type(arg1) == "string", "arg1 of split is not type string. type is " .. type(arg1)) and arg1
  local separator = assert(type(arg2) == "string", "arg2 of split is not type string. type is " .. type(arg2)) and arg2

  local r = {}
  for s in string.gmatch(str, "([^" .. separator .. "]+)") do
    table.insert(r, s)
  end

  return r
end

function stringplus.totable(arg1)
  local str =  assert(type(arg1) == "string", "arg1 of totable is not type string. type is " .. type(arg1)) and arg1
  local n = {}
  for i = 1, string.len(str) do
    table.insert(n, i, string.sub(str, i, i))
  end

  return n
end

function stringplus.explode(arg1, arg2)
  return stringplus.split(arg1, arg2)
end

function stringplus.insert(arg1, arg2, arg3)
   local str = assert(type(arg1) == "string", "arg1 of insert is not type string. type is " .. type(arg1)) and arg1
   local n = assert(type(arg2) == "number", "arg2 of insert is not type number. type is " .. type(arg2)) and arg2
   local p = assert(type(arg3) == "string", "arg3 of insert is not type string. type is " .. type(arg3)) and arg3

   return string.sub(str, 1, n) .. p .. string.sub(str, n + 1, string.len(str))
end

function stringplus.startswith(arg1, arg2)
  local str = assert(type(arg1) == "string", "arg1 of endswith is not type string. type is " .. type(arg1)) and arg1
  local with = assert(type(arg2) == "string", "arg2 of endswith is not type string. type is " .. type(arg2)) and arg2

  return string.sub(str, 1, with:len()) == with
end

function stringplus.endswith(arg1, arg2)
  local str = assert(type(arg1) == "string", "arg1 of endswith is not type string. type is " .. type(arg1)) and arg1
  local with = assert(type(arg2) == "string", "arg2 of endswith is not type string. type is " .. type(arg2)) and arg2

  return string.sub(str, (str:len() - with:len()) + 1, str:len()) == with
end

function stringplus.toboolean(arg1)
  local str = assert(type(arg1) == "string", "arg1 of toboolean is not type string. type is " .. type(arg1)) and arg1
  return str == "true" and true or str == "false" and false or nil
end

function stringplus.implode(arg1, arg2)
  local str = assert(type(arg1) == "string", "arg1 of implode is not type string. type is " .. type(arg1)) and arg1
  local t = assert(type(arg2) == "table", "arg2 of implode is not type table. type is " .. type(arg2)) and arg2
  local newstr = ""

  for _,v in pairs(arg2) do
    newstr = newstr .. (v or "") .. str
  end

  return newstr
end

function stringplus.fromtable(arg1, arg2)
  return stringplus.implode(arg1, arg2)
end

function stringplus.left(arg1, arg2)
  local str = assert(type(arg1) == "string", "arg1 of left is not type string. type is " .. type(arg1)) and arg1
  local n = assert(type(arg2) == "number", "arg2 of left is not type number. type is " .. type(arg2)) and arg2

  return string.sub(str, 1, n)
end

function stringplus.right(arg1, arg2)
  local str = assert(type(arg1) == "string", "arg1 of right is not type string. type is " .. type(arg1)) and arg1
  local n = assert(type(arg2) == "number", "arg2 of right is not type number. type is " .. type(arg2)) and arg2

  return string.sub(str, (str:len() - n) + 1, str:len())
end

function stringplus.replace(arg1, arg2)
  local str = assert(type(arg1) == "string", "arg1 of replace is not type string. type is " .. type(arg1)) and arg1
  local r = assert(type(arg2) == "string", "arg2 of replace is not type string. type is " .. type(arg2)) and arg2

  local tab = {}
  for s in string.gmatch(str, "([^" .. r .. "]+)") do
    table.insert(r, s)
  end

  return stringplus.fromtable("", tab)
end

function stringplus.byte(...)
  return string.byte(...)
end

function stringplus.char(...)
  return string.char(...)
end

function stringplus.find(...)
  return string.find(...)
end

function stringplus.format(...)
  return string.format(...)
end

function stringplus.gmatch(...)
  return string.gmatch(...)
end

function stringplus.gsub(...)
  return string.gsub(...)
end

function stringplus.len(...)
  return string.len(...)
end

function stringplus.lower(...)
  return string.lower(...)
end

function stringplus.match(...)
  return string.match(...)
end

function stringplus.rep(...)
  return string.rep(...)
end

function stringplus.sub(...)
  return string.sub(...)
end

function stringplus.upper(...)
  return string.upper(...)
end

function stringplus.reverse(...)
  return string.reverse(...)
end

return stringplus
