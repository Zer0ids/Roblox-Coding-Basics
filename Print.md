# print() Function

To basically code this, you'll have to start by using the "print" function, and then you'll have to put in a string, or a message between apostrophes...

### Example:
```lua
print("Hello world!")
```

You can make a variable as a string and use the "print" function, as well...

### Variable Example:
```lua
local message = "Hello world!"
print(message)
```

If you want to make multiple messages, you should add either these:
* + (a plus)
* .. (two dots; recommended)
* , (comma, tab-likewise character used)

### Multiple Messages Examples:
```lua
-- Don't do this...
print("Hello" .. "world!") -- "Helloworld!" (add a space to one of the messages to spacen out, so that it doesn't make a "word".

-- Try adding a space!
print("Hello " .. "world!") -- "Hello world!"
print("Hello " + "world!") -- "Hello world!"
print("Hello", "world!") -- "Hello    world!" [with a tab character]
```

You can also do this to variables...
```lua
local msg1 = "Hello "
local msg2 = "world!"

print(msg1 .. msg2) -- "Hello world!"
```

### Distributed by: @Untyper, 2022-23
