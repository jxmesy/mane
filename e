--libraries and main stuff
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("cobblestone hub [WIP]", "Synapse")


--tabs
local playertab = Window:NewTab("player stuff")
local aimtab = Window:NewTab("aim stuff")
local funtab = Window:NewTab("fun stuff")
local animtab = Window:NewTab("animations")

-- sections
local playersection = playertab:NewSection("player stuff")
local aimsection = aimtab:NewSection("aim stuff")
local funsection = funtab:NewSection("fun stuff")
local animsection = animtab:NewSection("animations")

-- buttons
playersection:NewButton("speedboost", "no anticheat detection, cobblestone hub one of the only hubs that actually bypass anticheat.", function()
    local Players = game:GetService("Players")
local character = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local RunService = game:GetService("RunService")

local currentConnection
local speedMultiplier = 1

local function moveCharacter(multiplier)
    if currentConnection then currentConnection:Disconnect() end
    speedMultiplier = multiplier
    currentConnection = RunService.RenderStepped:Connect(function(delta)
        character:TranslateBy(humanoid.MoveDirection * speedMultiplier * delta * 5)
    end)
end

local function toggleSpeed()
    moveCharacter(speedMultiplier == 1 and 4 or 1)
end

toggleSpeed()
end)

playersection:NewButton("ESP", "see everyone", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
end)

funsection:NewButton("tp tool", "teleport tool, anticheat has no detection for teleporting.", function()
    local TpTool = Instance.new("Tool")
	TpTool.Name = "tp"
	TpTool.RequiresHandle = false
	TpTool.Parent = speaker.Backpack
	TpTool.Activated:Connect(function()
		local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
		local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
		if not Char or not HRP then
			return warn("Failed to find HumanoidRootPart")
		end
		HRP.CFrame = CFrame.new(IYMouse.Hit.X, IYMouse.Hit.Y + 3, IYMouse.Hit.Z, select(4, HRP.CFrame:components()))
	end)
end)


aimsection:NewButton("aim assist", "aim assist, anticheat has no detection for this stuff.", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/quVVM78M"))()
end)

aimsection:NewButton("aimbot", "better than aim assist tbh", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/6HmX99Fy"))()
end)

animsection:NewButton("pipe anim", "yk", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/5fppAT9s"))()
end)

animsection:NewButton("masturbate LOL", "yk", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/77JXx8kX"))()
end)

animsection:NewButton("punch idle", "yk", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/QbFV03Y9"))()
end)

animsection:NewButton("stomp thing", "yk", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/tametxCw"))()
end)

animsection:NewButton("getting shot", "yk", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/vD2ZVXqg"))()
end)

animsection:NewButton("glock hold", "yk", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/qbg93azq"))()
end)

animsection:NewButton("drag", "yk", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/1tZsuRTf"))()
end)
