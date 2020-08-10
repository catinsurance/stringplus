# stringplus
An extended string library for Lua including more useful features.
This library is intended to replace the default string library. It includes more features built using the default string library.

## Installation

Currently not on luarocks or luvit/lit but I'm working on that.

## Usage

This adds many new functions to the vanilla string library. An example is shown below.

```lua
local string = require("main")
local foo = "I have a favorite number."

print(foo) -- I have a favorite number.

print(string.insert(foo, 2, "don't ")) -- I don't have a favorite number.

```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0)
