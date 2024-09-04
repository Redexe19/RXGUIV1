local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "RX GUI",
   LoadingTitle = "RX GUI Loading",
   LoadingSubtitle = "by RXScripter",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "RX GUI",
      Subtitle = "Key System",
      Note = "This Script Is Private",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"imnotgay"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local InfoTab = Window:CreateTab("Info", nil) -- Title, Image

local Paragraph = InfoTab:CreateParagraph({Title = "RX GUI - Made By RXScripter", Content = "https://youtube.com/@redx19scripts?si=Bz93rytvd-i8PJgde"})
local Paragraph = InfoTab:CreateParagraph({Title = "Discord", Content = "discord.gg/null"})

local MainTab = Window:CreateTab("Main", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Utilities")

local Button = MainTab:CreateButton({
   Name = "Keybind Script (Red_BloxZ)",
   Callback = function()
-- Keyboard script By Red_BloxZ
-- You screen will freeze for a few seconds when execute because it loading
loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
   end,
})

local MainSection = MainTab:CreateSection("PC")

Rayfield:Notify({
   Title = "RX GUI",
   Content = "Do Not Steal This Script - RXScripter",
   Duration = 6.5,
   Image = nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "Dash [E]",
   Callback = function()
      --35 Stud Dash Press E By RXScripter It's Obfuscated--
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/35StudDash"))()
   end,
})

local MainSection = MainTab:CreateSection("Mobile")

local Button = MainTab:CreateButton({
   Name = "Anime Teleportation",
   Callback = function()
      --Anime Tp Tool By RXScripter It's Obfuscated--
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/AnimeTpTool"))()
   end,
})

local MainSection = MainTab:CreateSection("Visual")

local Button = MainTab:CreateButton({
   Name = "(Buggy) Health Esp",
   Callback = function()
local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PlayerHealthGUI"
screenGui.Parent = playerGui

local playerHealthGUIs = {}

local function updatePlayerHealth(player)
    local playerCharacter = player.Character
    if playerCharacter then
        local humanoid = playerCharacter:FindFirstChild("Humanoid")
        if humanoid then
            local head = playerCharacter:WaitForChild("Head")
            local headPosition, onScreen = workspace.CurrentCamera:WorldToScreenPoint(head.Position)
            
            local healthGui = playerHealthGUIs[player.Name]
            if not healthGui then
                healthGui = Instance.new("TextLabel")
                healthGui.Name = player.Name
                healthGui.Parent = screenGui
                healthGui.Size = UDim2.new(0, 100, 0, 20)
                healthGui.BackgroundTransparency = 1
                healthGui.TextColor3 = Color3.new(1, 0, 0)
                healthGui.Text = "HP: " .. math.floor(humanoid.Health)
                healthGui.TextScaled = true
                healthGui.TextStrokeTransparency = 0.5
                healthGui.TextStrokeColor3 = Color3.new(0, 0, 0)
                playerHealthGUIs[player.Name] = healthGui
            else
                healthGui.Text = "HP: " .. math.floor(humanoid.Health)
            end
            
            healthGui.Position = UDim2.new(0, headPosition.X - 50, 0, headPosition.Y - 100)
            
            if healthGui.Visible == false then
                game:GetService("TweenService"):Create(healthGui, TweenInfo.new(0.2), {Visible = true}):Play()
            end
        end
    end
end

local function removePlayerHealth(player)
    local healthGui = playerHealthGUIs[player.Name]
    if healthGui then
        game:GetService("TweenService"):Create(healthGui, TweenInfo.new(0.2), {Visible = false}):Play()
        wait(0.2)
        healthGui:Destroy()
        playerHealthGUIs[player.Name] = nil
    end
end

-- Add a function to remove all GUI elements
local function removeAllGUI()
    for playerName, healthGui in pairs(playerHealthGUIs) do
        healthGui:Destroy() -- Directly destroy the GUI element
        playerHealthGUIs[playerName] = nil
    end
end

local function updateHealthGUI()
    for _, player in ipairs(game.Players:GetPlayers()) do
        local playerCharacter = player.Character
        if playerCharacter then
            local playerPosition = playerCharacter.PrimaryPart.Position
            local localPlayerPosition = game.Players.LocalPlayer.Character.PrimaryPart.Position
            local distance = (playerPosition - localPlayerPosition).magnitude
            
            if distance <= 75 then
                updatePlayerHealth(player)
            else
                removePlayerHealth(player)
            end
        end
    end
end

local runService = game:GetService("RunService")
local connection = runService.Stepped:Connect(function(deltaTime)
    updateHealthGUI()
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function()
    connection:Disconnect()
end)

game.Players.PlayerRemoving:Connect(function(player)
    removePlayerHealth(player)
end)
   end,
})

local Button = MainTab:CreateButton({
   Name = "Camera Lock [Y]",
   Callback = function()
      --Cam Lock By RXScripter It's Obfuscated--
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/CamLockScript"))()
   end,
})

local ExploitTab = Window:CreateTab("Exploits", nil) -- Title, Image
local ExploitSection = ExploitTab:CreateSection("Notifier Exploits")

local Button = ExploitTab:CreateButton({
   Name = "Death Counter Alert",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/louismich4el/ItsLouisPlayz-Scripts/main/TSB%20Death%20Counter%20Identifier.lua"))()
-- Death Counter Alert
   end,
})

local ExploitSection = ExploitTab:CreateSection("Anti Exploits")
local Button = ExploitTab:CreateButton({
   Name = "Anti Omni",
   Callback = function()
DistanceToDodgeOmni_Table = 75
loadstring(game:HttpGet("https://raw.githubusercontent.com/louismich4el/ItsLouisPlayz-Scripts/main/Auto%20Dodge%20Omni%20And%20Table.lua"))()
-- Anti Omni Directional
   end,
})

local CustomTab = Window:CreateTab("Customization", nil) -- Title, Image
local CustomSection = CustomTab:CreateSection("Hotbar Editor")

local Input = CustomTab:CreateInput({
   Name = "Hotbar 1",
   PlaceholderText = "Text",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
local player = game.Players.LocalPlayer
local playerGui = player.PlayerGui
local hotbar = playerGui:FindFirstChild("Hotbar")
local backpack = hotbar:FindFirstChild("Backpack")
local hotbarFrame = backpack:FindFirstChild("Hotbar")
local baseButton = hotbarFrame:FindFirstChild("1").Base
local ToolName = baseButton.ToolName

ToolName.Text = "(Text)"
   end,
})

local Input = CustomTab:CreateInput({
   Name = "Hotbar 2",
   PlaceholderText = "Text",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
local player = game.Players.LocalPlayer
local playerGui = player.PlayerGui
local hotbar = playerGui:FindFirstChild("Hotbar")
local backpack = hotbar:FindFirstChild("Backpack")
local hotbarFrame = backpack:FindFirstChild("Hotbar")
local baseButton = hotbarFrame:FindFirstChild("2").Base
local ToolName = baseButton.ToolName

ToolName.Text = "(Text)"
   end,
})

local Input = CustomTab:CreateInput({
   Name = "Hotbar 3",
   PlaceholderText = "Text",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
local player = game.Players.LocalPlayer
local playerGui = player.PlayerGui
local hotbar = playerGui:FindFirstChild("Hotbar")
local backpack = hotbar:FindFirstChild("Backpack")
local hotbarFrame = backpack:FindFirstChild("Hotbar")
local baseButton = hotbarFrame:FindFirstChild("3").Base
local ToolName = baseButton.ToolName

ToolName.Text = "(Text)"
   end,
})

local Input = CustomTab:CreateInput({
   Name = "Hotbar 4",
   PlaceholderText = "Text",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
local player = game.Players.LocalPlayer
local playerGui = player.PlayerGui
local hotbar = playerGui:FindFirstChild("Hotbar")
local backpack = hotbar:FindFirstChild("Backpack")
local hotbarFrame = backpack:FindFirstChild("Hotbar")
local baseButton = hotbarFrame:FindFirstChild("4").Base
local ToolName = baseButton.ToolName

ToolName.Text = "(Text)"
   end,
})

local Input = CustomTab:CreateInput({
   Name = "Ultimate Name",
   PlaceholderText = "Text",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local function findGuiAndSetText()
    local screenGui = playerGui:FindFirstChild("ScreenGui")
    if screenGui then

        local magicHealthFrame = screenGui:FindFirstChild("MagicHealth")
        if magicHealthFrame then

            local textLabel = magicHealthFrame:FindFirstChild("TextLabel")
            if textLabel then

                textLabel.Text = "(Text)"
            end
        end
    end
end

playerGui.DescendantAdded:Connect(findGuiAndSetText)
findGuiAndSetText()
   end,
})

local Section = CustomTab:CreateSection("M1 Animation Changer")
local Paragraph = Tab:CreateParagraph({Title = "Coming Soon!", Content = "This Feature Is Still In Development"})

local PlayerTab = Window:CreateTab("Player", nil) -- Title, Image
local PlayerSection = PlayerTab:CreateSection("Movement Boosts")

local Button = PlayerTab:CreateButton({
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
   end,
})

local PlayerSection = PlayerTab:CreateSection("Extra")

local Button = PlayerTab:CreateButton({
   Name = "Noclip [T]",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/noclip"))()
   end,
})

local TpTab = Window:CreateTab("Locations", nil) -- Title, Image
local TpSection = TpTab:CreateSection("Teleports")
    
local Button = TpTab:CreateButton({
   Name = "Dummy Location",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/posdummy"))()
   end,
})

local Button = TpTab:CreateButton({
   Name = "Mountain 1",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/mountain1"))()
   end,
})

    local Button = TpTab:CreateButton({
   Name = "Mountain 2",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/mountain2"))()
   end,
})

local Button = TpTab:CreateButton({
   Name = "Lonely Area 1",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/lonearea1"))()
   end,
})

local Button = TpTab:CreateButton({
   Name = "Lonely Area 2",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/lonearea2"))()
   end,
})

local Button = TpTab:CreateButton({
   Name = "Death Counter Room",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/dcroom"))()
   end,
})

local Button = TpTab:CreateButton({
   Name = "Atomic Slash Room",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/slashroom"))()
   end,
})

local Button = TpTab:CreateButton({
   Name = "Lower Baseplate",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/lower"))()
   end,
})

local Button = TpTab:CreateButton({
   Name = "Upper Baseplate",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/upper"))()
   end,
})

local Section = TpTab:CreateSection("Manual Teleportation")

local Input = TpTab:CreateInput({
   Name = "Position Teleporter",
   PlaceholderText = "0, 0, 0",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function teleportToPosition(position)
    character:SetPrimaryPartCFrame(CFrame.new(position))
end

teleportToPosition(Vector3.new(Text))
   end,
})

local Button = TpTab:CreateButton({
   Name = "Position Displayer",
   Callback = function()
      --Position Displayer By RXScripter It's Obfuscated--
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/posdisplayer"))()
   end,
})

local MiscTab = Window:CreateTab("Misc", nil) -- Title, Image
local MiscSection = MiscTab:CreateSection("Logger Scripts")

local Button = MiscTab:CreateButton({
   Name = "Animation Logger",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/TMkwdWgY"))()
   end,
})

local Button = MiscTab:CreateButton({
   Name = "Audio Logger",
   Callback = function()
loadstring(game:HttpGet(https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/edge's%20audio%20logger))()
   end,
})

local Button = MiscTab:CreateButton({
   Name = "Dex",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
   end,
})

local MiscSection = MiscTab:CreateSection("Command Scripts")

local Button = MiscTab:CreateButton({
   Name = "Inf Yield",
   Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Button = MiscTab:CreateButton({
   Name = "Nameless Admin",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
   end,
})

local Button = MiscTab:CreateButton({
   Name = "Tbao Hub Admin",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubAdmin"))()
   end,
})
