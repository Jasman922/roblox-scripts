local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Clicker Money game or smth", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Currencies",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab1 = Window:MakeTab({
	Name = "Runes",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local moneyGainActive = false
Tab:AddToggle({
	Name = "Toggle OP Money Gain",
	Default = false,
	Callback = function(Value)
		moneyGainActive = Value
		if moneyGainActive then
			spawn(function()
				while moneyGainActive do
					game:GetService("ReplicatedStorage").Events.Clicks.factoryRan:FireServer()
					wait(0.0000000000000000000000001)
				end
			end)
		end
	end    
})

Tab:AddButton({
    Name = "Upgrade everything you can (only upgrades once)",
    Callback = function()
        local args = {
            [1] = game:GetService("Players").LocalPlayer
        }

        -- Optional initial delay before starting the loop
        wait(0.1)

        for _ = 1, 18 do
            for i = 1, 12 do
                game:GetService("ReplicatedStorage").Events.Upgrades["upg" .. i]:FireServer(unpack(args))
            end
            wait(0.1) -- Slightly increased wait time to ensure smooth execution
        end
    end    
})


local runeGainActive
Tab1:AddToggle({
   	Name = "Toggle Noob Runes",
	Default = false,
	Callback = function(Value)
		runeGainActive = Value
		if runeGainActive then
			spawn(function()
				while runeGainActive do
					game:GetService("ReplicatedStorage").Events.Runes.noobRune:FireServer()
					wait(0.0000000000000000000000001)
				end
			end)
		end
	end    
})

local rune2GainActive
Tab1:AddToggle({
   	Name = "Toggle Rebirth Runes",
	Default = false,
	Callback = function(Value)
		rune2GainActive = Value
		if rune2GainActive then
			spawn(function()
				while rune2GainActive do
					game:GetService("ReplicatedStorage").Events.Runes.rebirthRune:FireServer()
					wait(0.0000000000000000000000001)
				end
			end)
		end
	end    
})

Tab:AddButton({
	Name = "OP Click Gain (Stacks + Makes Lag)",
	Callback = function()
      		while true do
	local args = {
 	   [1] = game:GetService("Players").LocalPlayer
	}
	
	game:GetService("ReplicatedStorage").Events.Clicks.clicked:FireServer(unpack(args))
	wait(0.000000000000000001)
end
  	end    
})

Tab:AddToggle({
   	Name = "Toggle Click Gain OP (Doesn't stack with itself)",
	Default = false,
	Callback = function(Value)
		clickGainActive = Value
		if clickGainActive then
			spawn(function()
				while clickGainActive do
					local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Events.Clicks.clicked:FireServer(unpack(args))
					wait(0.0000000000000000000000001)
				end
			end)
		end
	end    
})

local rune3GainActive
Tab1:AddToggle({
   	Name = "Toggle Expert/Time Runes",
	Default = false,
	Callback = function(Value)
		rune3GainActive = Value
		if rune3GainActive then
			spawn(function()
				while rune3GainActive do
					local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Events.Runes.expertRune:FireServer(unpack(args))
					wait(0.0000000000000000000000001)
				end
			end)
		end
	end    
})

local timeTokenGainActive
Tab:AddToggle({
   	Name = "Toggle OP Time Token Gain",
	Default = false,
	Callback = function(Value)
		timeTokenGainActive = Value
		if timeTokenGainActive then
			spawn(function()
				while timeTokenGainActive do
					local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Events.timeToken:FireServer(unpack(args))
					wait(0.0000000000000000000000001)
				end
			end)
		end
	end    
})

local rune4GainActive
Tab1:AddToggle({
   	Name = "Toggle Celestial Runes",
	Default = false,
	Callback = function(Value)
		rune4GainActive = Value
		if rune4GainActive then
			spawn(function()
				while rune4GainActive do
					local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Events.Runes.celestialRune:FireServer(unpack(args))
					wait(0.0000000000000000000000001)
				end
			end)
		end
	end    
})

local rune5GainActive
Tab1:AddToggle({
   	Name = "Toggle Mystic Runes",
	Default = false,
	Callback = function(Value)
		rune5GainActive = Value
		if rune5GainActive then
			spawn(function()
				while rune5GainActive do
					local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Events.Runes.mysticRune:FireServer(unpack(args))
					wait(0.0000000000000000000000001)
				end
			end)
		end
	end    
})

local rune6GainActive
Tab1:AddToggle({
   	Name = "Toggle Galactic Runes",
	Default = false,
	Callback = function(Value)
		rune6GainActive = Value
		if rune6GainActive then
			spawn(function()
				while rune6GainActive do
					local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Events.Runes.galacticRune:FireServer(unpack(args))
					wait(0.0000000000000000000000001)
				end
			end)
		end
	end    
})
