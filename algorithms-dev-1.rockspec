package = "algorithms"
version = "dev-1"
source = {
   url = "https://github.com/JCPedroza/algorithms-and-data-structures-lua"
}
description = {
   homepage = "https://github.com/JCPedroza/algorithms-and-data-structures-lua",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.3",
   "luacheck >= 0.26.1",
   "lanes >= 3.16",
   "busted >= 2.0.0"
}
build = {
   type = "builtin",
   modules = {}
}
