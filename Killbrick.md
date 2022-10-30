# How to Make a Killbrick
## Beginner Level
To make a killbrick, you have to use a part and then, insert a script inside it...
![image](https://user-images.githubusercontent.com/100814109/198859259-0cbcf47d-061c-4905-bf55-1d9b82cd6818.png)

Then, you have to input the script text with this:
```lua
script.Parent.Touched:Connect(function(hit)
	local humanoid = hit.Parent:FindFirstChildOfClass("Humanoid")
	if humanoid then
		humanoid.Health = 0
	end
end)
```
`What the script should look like:`

![image](https://user-images.githubusercontent.com/100814109/198859397-8fcfd303-61c0-4ece-a9fd-57566d35ef83.png)

(I'll explain on how it works...)

**Finally, you simply play and it'll work!**

`Example:`

![image](https://user-images.githubusercontent.com/100814109/198859599-76728fdb-8eb5-44b1-8f0f-2485bf9e1275.png)

### How it Works?

`Code:`

![image](https://user-images.githubusercontent.com/100814109/198859397-8fcfd303-61c0-4ece-a9fd-57566d35ef83.png)

By looking at the code, it seems pretty simplistic. If you don't know how these functions and these kinds of code work, I'll show you:

At the top, the `Touched` signal will fire any thread when a part has touched the script's parent.
The `:Connect()` function will fire a thread or function if a signal is triggered for their belonged signal.
(Keep in mind that the `hit` variable is belonged to the signal's first argument.)

By getting the variable, `humanoid`, the part touched will only be a `BasePart` class. (It will make the touched part one of our body parts in our character.)
By getting the character, we simply have to put in `<BasePartName>.Parent` to replace the variable with the character.
Our target is the `Humanoid`, so we have to type in, `:FindFirstChildOfClass()` and put in `"Humanoid"` as its argument.

It should look like this:
```lua
local humanoid = hit.Parent:FindFirstChildOfClass("Humanoid")
```


## Expert Level
