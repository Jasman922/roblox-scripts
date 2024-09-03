local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Bsktbl Card opening game", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Toggleables",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PDPack = false
Tab:AddToggle({
	Name = "Toggle PD Pack",
	Default = false,
	Callback = function(Value)
		PDPack = Value
		if PDPack then
			spawn(function()
				while PDPack do
					local args = {
    [1] = "PinkDiamondPack",
    [2] = true,
    [3] = false
}

game:GetService("ReplicatedStorage").Remotes.Unpacking.RequestUnpack:InvokeServer(unpack(args))
					wait(0.000000000000001)
				end
			end)
		end
	end    
})

local RubyPack = false
Tab:AddToggle({
	Name = "Toggle Ruby Pack",
	Default = false,
	Callback = function(Value)
		RubyPack = Value
		if RubyPack then
			spawn(function()
				while RubyPack do
					local args = {
    [1] = "RubyPack",
    [2] = true,
    [3] = false
}

game:GetService("ReplicatedStorage").Remotes.Unpacking.RequestUnpack:InvokeServer(unpack(args))
					wait(0.000000000000001)
				end
			end)
		end
	end    
})

local FO = false
Tab:AddToggle({
	Name = "Toggle Fast Open",
	Default = false,
	Callback = function(Value)
		FO = Value
		if FO then
			spawn(function()
				while FO do
					game:GetService("ReplicatedStorage").Remotes.Unpacking.EndUnpacking:FireServer()
					wait(0.000000000000001)
				end
			end)
		end
	end    
})

local FP = false
Tab:AddToggle({
	Name = "Toggle Fast Pickup",
	Default = false,
	Callback = function(Value)
		FP = Value
		if FP then
			spawn(function()
				while FP do
					game:GetService("ReplicatedStorage").Remotes.Cards.FinishPickUp:FireServer()
					wait(0.000000000000001)
				end
			end)
		end
	end    
})

local SA = false
Tab:AddToggle({
	Name = "Toggle Auto Sell",
	Default = false,
	Callback = function(Value)
		SA = Value
		if SA then
			spawn(function()
				while SA do
					game:GetService("ReplicatedStorage").Remotes.Cards.RequestSellAll:InvokeServer()
					wait(0.000000000000001)
				end
			end)
		end
	end    
})
OrionLib:Init()
