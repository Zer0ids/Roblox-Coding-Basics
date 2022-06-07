--[[
If you want to know how to make a killbrick without using the 'Toolbox', here's how...

Create a script to a part, which makes it the part's child (that is the script). Start typing with 'script.Parent' to detect the parent of the script:
script.Parent

Then type in the event called, 'Touched', to activate the function on-touch on the part.
script.Parent.Touched

Then, of course, get the ':Connect' and add between the parentheses '()', 'function([add_sample_word_here])'. It should appear like this:
script.Parent.Touched:Connect(function(part)
    
end)

Start by making a local to the humanoid. The part's parent will detect the touchinterest's character that touched the part that had the interest:
script.Parent.Touched:Connect(function(part)
    local hum = part.Parent:WaitForChild('Humanoid')
end)

Make sure the hum is visible with, 'if hum ~= nil':
script.Parent.Touched:Connect(function(part)
    local hum = part.Paret:WaitForChild('Humanoid')
    
    if hum ~= nil then
        
    end
end)

Then add the health set to zero, making the character die.
script.Parent.Touched:Connect(function(part)
    local hum = part.Paret:WaitForChild('Humanoid')
    
    if hum ~= nil then
        hum.Health = 0
    end
end)

For else reasons, you can try to do the function, :TakeDamage(), for more "expertism".
script.Parent.Touched:Connect(function(part)
    local hum = part.Paret:WaitForChild('Humanoid')
    
    if hum ~= nil then
        hum:TakeDamage(math.huge)    --// math.huge is what it makes the character die instantly; huge number :)))))))))
    end
end)

You can try the other way below (the 2nd code). But I'm too tired to get instructions here, so just copy it down below.


--// by: @Untyper, 2022 //--
The 2 codes below is the final product:
--]]

script.Parent.Touched:Connect(function(part)
    local hum = part.Parent:WaitForChild('Humanoid')
    
    if hum ~= nil then
      hum.Health = 0
      -- hum.Health:TakeDamage(math.huge)
    end
end)

--{}

function onTouched(part)
  local hum = part.Parent:WaitForChild('Humanoid')
  
  if hum ~= nil then
    hum.Health = 0
    -- hum.Health:TakeDamage(math.huge)
  end
end

script.Parent.Touched:Connect(onTouched)
