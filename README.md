# Love2D_Collision
Collision detection for Love2D

```lua
local c = require 'collision'

local r1 = c.rect(10, 10, 100, 100) -- create Rectangle x=10 y=10 w=100 h=100
local r2 = c.rect(25, 13, 100, 100) -- create the Second Rectangle

-- Check collision between them
print(c.check(r1, r2)) -- First option
print(r1:check(r2)) -- Second option
```

## Installation
Just add this Library next to your 'main.lua'<br>
Inside 'main.lua' write this code:
```lua
local c = require 'collision'
```
