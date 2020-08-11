# stringplus
An extended string library for Lua including more useful features.
This library is intended to replace the default string library. It includes more features built using the default string library.

## Installation

Currently not on luarocks or luvit/lit but I'm working on that.

## Usage

This adds many new functions to the vanilla string library. A few examples are shown below.

```lua
local string = require("stringplus")
local foo = "I have a favorite number."

print(foo) -- I have a favorite number.

print(string.insert(foo, 2, "don't ")) -- I don't have a favorite number.

```

```lua
local string = require("stringplus")
local foo = "There are 26 letters in the alphabet."

local bar = string.split(foo, " ")
for _,v in pairs(bar) do
  print(v)
end

-- There
-- are
-- 26
-- letters
-- in
-- the
-- alphabet.
```

## Documentation

Documentation can be found on the wiki found [here.](https://github.com/maya-bee/stringplus/wiki)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0)
