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

Type annotations in documentation are based on [Teal][50].

[50]: https://github.com/teal-language/
[51]: https://github.com/mpeterv/luacheck
