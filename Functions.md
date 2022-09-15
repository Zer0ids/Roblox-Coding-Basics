# Functions

This forum will show you on how to create functions...

## ~ Creating a Function ~

Functions are well-known towards the Lua programming language. It is helpful in many ways while coding...

To create a function, you'd simply put in "function" with the bases of "end".

### Example:
```lua
function AnyFunction()
  -- code thingy
end
```

You can put any variables, dependent on what variables it already covers...
```lua
function AnyFunction(var1, var2)
  -- code thingy
  -- include with: var1 & var2...
  
  -- Example:
  return var1, var2
end
```

If you want to use these in binary events towards the database's services (or "game"), the variables are dependent on what the binary events' reserved variables have.

### Example:
```lua
-- Let's do a function about render-stepped...
function RenderStepped(deltaTime)
  print(deltaTime)
end

-- The "render-stepped" binary event...
game:GetService("RunService").RenderStepped:Connect(RenderStepped) -- it's reserved variable depends on how long it took between each frame it last stepped and the one that is about to step. (You'll get used to it when you learn about "Run Service"...)
```

To run or execute the function, you'd simply insert the function's name with two parentheses... or "()".
```lua
function Run()
  print("Hello world!")
end

Run() -- this then will output the message in the console...
```

To use the variable for the function, you would have to manually put it in...

### Example:
```lua
function Run(msg)
  print(msg)
end

-- Since the "msg" variable needs a lookout for a string to print out, you would have to put in the message yourself.
Run("Hello world!") -- this will then output the message (in the console).
```

## ~ How to use Functions "differently" ~

You can actually not include the function's name!
You'd simple have to do the "return" method...
```lua
return function(hi)
  hi = "Hello world!"
  print(hi)
  
  return hi -- I'm actually not sure if it'll work; I'm am amateurish coder, sorry for that...
end
```

...or the variable method...
```lua
local qwerty = function()
  print("Hello")
end

qwerty() -- just like the function's name :)
```

### Distributed by: @Untyper, 2022-23
