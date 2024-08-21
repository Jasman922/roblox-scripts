local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Clicker Money game or smth", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Clickers",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab1 = Window:MakeTab({
	Name = "Mining",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local moneyGainActive = false
Tab:AddToggle({
	Name = "Toggle Money Gain",
	Default = false,
	Callback = function(Value)
		moneyGainActive = Value
		if moneyGainActive then
			spawn(function()
				while moneyGainActive do
					game:GetService("ReplicatedStorage").Events.ClickMoney:FireServer()
					wait(0.000000000000001)
				end
			end)
		end
	end    
})

local gemGainActive = false
Tab:AddToggle({
	Name = "Toggle Gem Gain",
	Default = false,
	Callback = function(Value)
		gemGainActive = Value
		if gemGainActive then
			spawn(function()
				while gemGainActive do
					game:GetService("ReplicatedStorage").Events.ClickMoney.ClickGem:FireServer()
					wait(0.000000000000001)
				end
			end)
		end
	end    
})

local upgrade1Active = false
Tab:AddToggle({
	Name = "Toggle Upgrade 1",
	Default = false,
	Callback = function(Value)
		upgrade1Active = Value
		if upgrade1Active then
			spawn(function()
				while upgrade1Active do
					local args = {
						[1] = 1,
						[2] = false
					}
					game:GetService("ReplicatedStorage").Events.Upgrade:FireServer(unpack(args))
					wait(0.000000000000001)
				end
			end)
		end
	end    
})

local upgrade2Active = false
Tab:AddToggle({
	Name = "Toggle Upgrade 2",
	Default = false,
	Callback = function(Value)
		upgrade2Active = Value
		if upgrade2Active then
			spawn(function()
				while upgrade2Active do
					local args = {
						[1] = 2,
						[2] = false
					}
					game:GetService("ReplicatedStorage").Events.Upgrade:FireServer(unpack(args))
					wait(0.000000000000001)
				end
			end)
		end
	end    
})

local upgrade3Active = false
Tab:AddToggle({
	Name = "Toggle Upgrade 3",
	Default = false,
	Callback = function(Value)
		upgrade3Active = Value
		if upgrade3Active then
			spawn(function()
				while upgrade3Active do
					local args = {
						[1] = 3,
						[2] = false
					}
					game:GetService("ReplicatedStorage").Events.Upgrade:FireServer(unpack(args))
					wait(0.000000000000001)
				end
			end)
		end
	end    
})

local mining = false
Tab1:AddToggle({
	Name = "Toggle Auto-Mine",
	Default = false,
	Callback = function(Value)
		mining = Value
		if mining then
			spawn(function()
				while mining do
					local args = {
						[1] = 3,
						[2] = false
					}
					game:GetService("ReplicatedStorage").Events.ClickMoney.ClickMining:FireServer()
					wait(0.000000000000001)
				end
			end)
		end
	end    
})

local MUpgrade1Acive = false
Tab1:AddToggle({
	Name = "Toggle Upgrade 1",
	Default = false,
	Callback = function(Value)
		MUpgrade1Acive = Value
		if MUpgrade1Acive then
			spawn(function()
				while MUpgrade1Acive do
					local args = {
						[1] = 3,
						[2] = false
					}
					local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").Events.Upgrade.MiningUpgrade:FireServer(unpack(args))

					wait(0.000000000000001)
				end
			end)
		end
	end    
})

local MUpgrade2Acive = false
Tab1:AddToggle({
	Name = "Toggle Upgrade 2",
	Default = false,
	Callback = function(Value)
		MUpgrade2Acive = Value
		if MUpgrade2Acive then
			spawn(function()
				while MUpgrade2Acive do
					local args = {
    [1] = 2
}

game:GetService("ReplicatedStorage").Events.Upgrade.MiningUpgrade:FireServer(unpack(args))

					wait(0.000000000000001)
				end
			end)
		end
	end    
})

local MUpgrade3Acive = false
Tab1:AddToggle({
	Name = "Toggle Upgrade 3",
	Default = false,
	Callback = function(Value)
		MUpgrade3Acive = Value
		if MUpgrade3Acive then
			spawn(function()
				while MUpgrade3Acive do
					local args = {
    [1] = 3
}

game:GetService("ReplicatedStorage").Events.Upgrade.MiningUpgrade:FireServer(unpack(args))

					wait(0.000000000000001)
				end
			end)
		end
	end    
})

local MUpgrade4Acive = false
Tab1:AddToggle({
	Name = "Toggle Upgrade 4",
	Default = false,
	Callback = function(Value)
		MUpgrade4Acive = Value
		if MUpgrade4Acive then
			spawn(function()
				while MUpgrade4Acive do
					local args = {
    [1] = 4
}

game:GetService("ReplicatedStorage").Events.Upgrade.MiningUpgrade:FireServer(unpack(args))

					wait(0.000000000000001)
				end
			end)
		end
	end    
})

local MUpgrade5Acive = false
Tab1:AddToggle({
	Name = "Toggle Upgrade 5",
	Default = false,
	Callback = function(Value)
		MUpgrade5Acive = Value
		if MUpgrade5Acive then
			spawn(function()
				while MUpgrade5Acive do
					local args = {
    [1] = 5
}

game:GetService("ReplicatedStorage").Events.Upgrade.MiningUpgrade:FireServer(unpack(args))

					wait(0.000000000000001)
				end
			end)
		end
	end    
})

local MUpgrade6Acive = false
Tab1:AddToggle({
	Name = "Toggle Upgrade 6",
	Default = false,
	Callback = function(Value)
		MUpgrade6Acive = Value
		if MUpgrade6Acive then
			spawn(function()
				while MUpgrade6Acive do
					local args = {
    [1] = 6
}

game:GetService("ReplicatedStorage").Events.Upgrade.MiningUpgrade:FireServer(unpack(args))

					wait(0.000000000000001)
				end
			end)
		end
	end    
})



OrionLib:Init()
