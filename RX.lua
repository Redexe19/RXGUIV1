local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "RX GUI", HidePremium = false, SaveConfig = true, ConfigFolder = "RXScript"})

local InfoTab = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://nil",
	PremiumOnly = false
})

InfoTab:AddParagraph("Guide Or Information","This Gui Was Made By RxScripter Any Type Of Editing, Plagiarism, Copying, And Using Without Credits Will Result In This Gui Getting Deleted")

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://nil",
	PremiumOnly = false
})

OrionLib:MakeNotification({
	Name = "DO NOT STEAL",
	Content = "This Script Is Made By RXSCRIPTER",
	Image = "nil",
	Time = 5
})

local UtilSection = MainTab:AddSection({
	Name = "Utilities"
})

MainTab:AddButton({
	Name = "Custom Keyboard",
	Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
  	end    
})

local PcSection = MainTab:AddSection({
	Name = "PC"
})

MainTab:AddButton({
	Name = "Dash [E]",
	Callback = function()
print("Dash Script Activated Press E To Dash (Teleports You 35 Studs Foward)")
        end
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local function teleportForward()
    local Character = LocalPlayer.Character
    if Character then
        local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
        if HumanoidRootPart then
            local forwardDirection = Vector3.new(Camera.CFrame.lookVector.X, 0, Camera.CFrame.lookVector.Z)
            forwardDirection = forwardDirection.unit
            local targetPosition = HumanoidRootPart.Position + forwardDirection * 35
            HumanoidRootPart.CFrame = CFrame.new(targetPosition) 
        else
            warn("HumanoidRootPart not found.")
        end
    end
end

local function onCharacterAdded(character)
    teleportForward()

    character.Humanoid.Died:Connect(function()
        teleportForward()
    end)
end

LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.E and not gameProcessedEvent then
        teleportForward()
    end
end)
  	end    
})

local MobileSection = MainTab:AddSection({
	Name = "Mobile"
})

MainTab:AddButton({
	Name = "Animated Teleportation",
	Callback = function()
local mouse = game.Players.LocalPlayer:GetMouse()
local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Anime TP"

local animationId = "15957361339" -- id

tool.Activated:Connect(function()
    local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
    pos = CFrame.new(pos.X, pos.Y, pos.Z)
    
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://" .. animationId
    local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
    local track = humanoid:LoadAnimation(animation)
    track:Play()

    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(pos)
end)

tool.Parent = game.Players.LocalPlayer.Backpack
  	end    
})

local VisSection = MainTab:AddSection({
	Name = "Visual"
})

MainTab:AddButton({
	Name = "Camera Lock",
	Callback = function()
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local camera = game.Workspace.CurrentCamera

local isLocked = false
local targetPlayer = nil

local function getNearestPlayer()
	local closestDistance = math.huge
	local closestPlayer = nil
	local myPosition = Players.LocalPlayer.Character.HumanoidRootPart.Position

	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= Players.LocalPlayer then
			local distance = (player.Character.HumanoidRootPart.Position - myPosition).magnitude
			if distance < closestDistance and distance <= 100 then
				closestDistance = distance
				closestPlayer = player
			end
		end
	end

	return closestPlayer
end

local function lockCameraToPlayer(player)
	if player then
		targetPlayer = player
		isLocked = true
	end
end

local function unlockCamera()
	targetPlayer = nil
	isLocked = false
end

local function onCharacterAdded(character)
	if character.Parent == Players.LocalPlayer then
		character.Humanoid.Died:Connect(function()
			-- Re-execute the script on player death
			unlockCamera()
			wait(1) -- Wait for 1 second before re-executing
			lockCameraToPlayer(getNearestPlayer())
		end)
	end
end

Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(onCharacterAdded)
end)

UserInputService.InputBegan:Connect(function(input, isProcessed)
	if input.KeyCode == Enum.KeyCode.Y then
		if isLocked then
			unlockCamera()
		else
			local nearestPlayer = getNearestPlayer()
			lockCameraToPlayer(nearestPlayer)
		end
	end
end)

game:GetService("RunService").RenderStepped:Connect(function()
	if isLocked and targetPlayer then
		local targetPosition = targetPlayer.Character.HumanoidRootPart.Position
		local direction = (targetPosition - camera.CFrame.Position).unit
		local cameraFocus = targetPosition - (direction * 10) -- adjust the 10 for distance from player

		camera.CFrame = CFrame.new(camera.CFrame.Position, cameraFocus)
	end
end)
  	end    
})

local ExTab = Window:MakeTab({
	Name = "Exploits",
	Icon = "rbxassetid://nil",
	PremiumOnly = false
})

local VisualSection = ExTab:AddSection({
	Name = "Visual Exploits"
})

ExTab:AddButton({
	Name = "Death Counter Alert",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/louismich4el/ItsLouisPlayz-Scripts/main/TSB%20Death%20Counter%20Identifier.lua"))()
-- Death Counter Alert
  	end    
})

local AntiSection = ExTab:AddSection({
	Name = "Anti Exploits"
})

ExTab:AddButton({
	Name = "Anti Omni-Directional And Tableflip",
	Callback = function()
DistanceToDodgeOmni_Table = 120
loadstring(game:HttpGet("https://raw.githubusercontent.com/louismich4el/ItsLouisPlayz-Scripts/main/Auto%20Dodge%20Omni%20And%20Table.lua"))()
-- Anti Omni Directional
  	end    
})

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://nil",
	PremiumOnly = false
})

local MoveSection = PlayerTab:AddSection({
	Name = "Movement"
})

PlayerTab:AddButton({
	Name = "Speed Up",
	Callback = function()
function isNumber(str)
  if tonumber(str) ~= nil or str == 'inf' then
    return true
  end
end

local tspeed = 1
local hb = game:GetService("RunService").Heartbeat
local tpwalking = true
local player = game:GetService("Players")
local lplr = player.LocalPlayer
local chr = lplr.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

while tpwalking and hb:Wait() and chr and hum and hum.Parent do
  if hum.MoveDirection.Magnitude > 0 then
    if tspeed and isNumber(tspeed) then
      chr:TranslateBy(hum.MoveDirection * tonumber(tspeed))
    else
      chr:TranslateBy(hum.MoveDirection)
    end
  end
end
  	end    
})


local CharacterSection = PlayerTab:AddSection({
	Name = "Character"
})

PlayerTab:AddButton({
	Name = "Noclip [T]",
	Callback = function()
local NoclipEnabled = false -- control noclip state

local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if NoclipEnabled and game.Players.LocalPlayer.Character ~= nil then -- Check if noclip is enabled
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

-- toggling noclip
local Player = game.Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.T then
        NoclipEnabled = not NoclipEnabled -- Toggle noclip state
        if NoclipEnabled then
            noclip() -- enable noclip
        else
            clip() -- disable noclip
        end
    end
end)
  	end    
})

local TpTab = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://nil",
	PremiumOnly = false
})
