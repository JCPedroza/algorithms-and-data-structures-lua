# Lua Algorithms and Data Structures

Algorithms and data structures implemented in Lua.

## Usage

### Lint, Style, & Format

We use [luacheck][51] for linting, styiling, and formatting. The `.luacheckrc`
file in the root directory contains the configuration.

You can install `luacheck` with `luarocks`.

```bash
luarocks install luacheck
```

To scan all files in a directory, run:

```bash
luacheck .
```

### Typing

The type annotation system used in the documentation is based on [Teal][50].
And the type annotation system used in the comments is based on [LDoc][52].

[50]: https://github.com/teal-language/
[51]: https://github.com/mpeterv/luacheck
[52]: https://github.com/lunarmodules/LDoc
