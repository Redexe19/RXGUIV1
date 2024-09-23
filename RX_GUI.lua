loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/rxscripttogglebutton"))()

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "RX GUI",
   LoadingTitle = "A TSB Exploit Hub",
   LoadingSubtitle = "by RXScripter",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "RX Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "RX Gui",
      Subtitle = "Key System",
      Note = "This Script Is In Development",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Private"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "DO NOT STEAL",
   Content = "Script Was Made By RXScripter",
   Duration = 3.5,
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

local InfoTab = Window:CreateTab("Info 📚", nil) -- Title, Image
local VerSection = InfoTab:CreateSection("Version")

local Label = InfoTab:CreateLabel("RX GUI Version 0.6")

local CreatorSection = InfoTab:CreateSection("Content")

local Paragraph = InfoTab:CreateParagraph({Title = "RX GUI", Content = "Made By RX"})
local Paragraph = InfoTab:CreateParagraph({Title = "Youtube", Content = "youtube.com/@redx19scripts?si=aLnTWGJgiqIx1u1f"})
local Paragraph = InfoTab:CreateParagraph({Title = "Discord", Content = "discord.gg/%"})

local GuideSection = InfoTab:CreateSection("Uses")

local Label = InfoTab:CreateLabel("Main 🌐")
local Paragraph = InfoTab:CreateParagraph({Title = "Dash Script", Content = "Teleports You 35 Studs Forward."})
local Paragraph = InfoTab:CreateParagraph({Title = "Animated Teleportation Tool", Content = "Teleports You To Anywhere You Click."})
local Paragraph = InfoTab:CreateParagraph({Title = "Auto Void", Content = "Using Certain Moves You Can Insta Kill Players."})
local Paragraph = InfoTab:CreateParagraph({Title = "Manual Void", Content = "Manually Send Players To The Void."})
local Paragraph = InfoTab:CreateParagraph({Title = "Camera Lock / Aimlock", Content = "Your Camera Will Lock Onto A Nearby Player."})
--local Paragraph = InfoTab:CreateParagraph({Title = "ESP", Content = "Highlights Players."})
local Paragraph = InfoTab:CreateParagraph({Title = "Utilities", Content = "Its Self Explanatory."})
local Label = InfoTab:CreateLabel("Exploits 🔓")
local Paragraph = InfoTab:CreateParagraph({Title = "Death Counter Alert", Content = "Shows A Warning Sign Above Players Who Used DC."})
local Paragraph = InfoTab:CreateParagraph({Title = "Anti Omni & Tableflip", Content = "Detects A Omni Or Tableflip 120 Stud Radius And Avoids It If Detected."})
local Paragraph = InfoTab:CreateParagraph({Title = "Invisible Tableflip", Content = "Makes Your Tableflips Invisible."})
local Paragraph = InfoTab:CreateParagraph({Title = "Invisible Serious Punch", Content = "Makes Serious Punches Animation Invisible."})
local Paragraph = InfoTab:CreateParagraph({Title = "Fling All", Content = "Flings All Players."})
local Label = InfoTab:CreateLabel("Customization 👕")
local Paragraph = InfoTab:CreateParagraph({Title = "Hotbar Editor", Content = "Be Able To Rename Your Whole Hotbar."})
local Label = InfoTab:CreateLabel("Characters 🃏")
local Paragraph = InfoTab:CreateParagraph({Title = "Movesets", Content = "Be Able To Use Custom Movesets Made By Myself And Other Creators."})
local Label = InfoTab:CreateLabel("Player 🚹")
local Paragraph = InfoTab:CreateParagraph({Title = "Speed Up", Content = "Makes You Faster (No Stun)."})
local Paragraph = InfoTab:CreateParagraph({Title = "Noclip", Content = "Allows You To Noclip."})
local Paragraph = InfoTab:CreateParagraph({Title = "Tools", Content = "Tools That Play Certain Characters Animations."})
local Label = InfoTab:CreateLabel("Teleports 📌")
local Paragraph = InfoTab:CreateParagraph({Title = "Locations", Content = "Be Bale To Teleport To Recorded Locations."})
local Paragraph = InfoTab:CreateParagraph({Title = "Manual Teleportation", Content = "Visualize And Teleport To Your Own Positions."})
local Label = InfoTab:CreateLabel("Miscellaneous ❔")
local Paragraph = InfoTab:CreateParagraph({Title = "Command Scripts", Content = "Basicly All Admin Command Scripts Ive Used."})

local MainTab = Window:CreateTab("Main 🌐", nil) -- Title, Image
local HacksSection = MainTab:CreateSection("Scripts")

local Label = MainTab:CreateLabel("PC")

local Input = MainTab:CreateInput({
   Name = "Dash",
   PlaceholderText = "E",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local key = "(Text)"  -- Set the default keybind here

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

local function keyToEnum(keyName)
    return Enum.KeyCode[keyName:upper()]
end

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == keyToEnum(key) and not gameProcessedEvent then
        teleportForward()
    end
end)
   end,
})

local Label = MainTab:CreateLabel("Mobile")

local Button = MainTab:CreateButton({
   Name = "Animated Teleportation Tool",
   Callback = function()
      --Anime Tp Tool By RXScripter It's Obfuscated--
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/AnimeTpTool"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Manual Void",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/manualvoid"))()
   end,
})

local Label = MainTab:CreateLabel("Both")

local Button = MainTab:CreateButton({
   Name = "Auto Void",
   Callback = function()
-- PART CREATION
local player = game.Players.LocalPlayer

local part = Instance.new("Part")
part.Parent = game.Workspace
part.Size = Vector3.new(250, 1, 250)
part.Position = Vector3.new(150, -495, 30) 
part.Anchored = true
part.CanCollide = true
part.Transparency = 0.3
-- END
-- TELEPORT FUNCTION
local function teleportPlayer()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local teleportPosition = CFrame.new(150, -493, 30) -- coords to tp 

-- saves pos
local startPos = character.PrimaryPart.CFrame
    
humanoid.Parent = nil
character:SetPrimaryPartCFrame(teleportPosition)
humanoid.Parent = character

wait(1.4) -- Wait for 1.4 seconds

-- teleport back to original location
humanoid.Parent = nil
character:SetPrimaryPartCFrame(startPos)
humanoid.Parent = character
end
-- END
-- ANIMATION DETECTION
function onAnimation(id, func)
    id = tostring(id):gsub("rbxassetid://", "")
    
    local function checkAnimation(char)
        local humanoid = char and char:WaitForChild("Humanoid", 1)
        if char and humanoid then
            humanoid.AnimationPlayed:Connect(function(v)
                local vID = v.Animation.AnimationId:gsub("rbxassetid://", "")
                if id == vID then
                    func(v)
                end
            end)
        end
    end
    
    checkAnimation(game.Players.LocalPlayer.Character)
    game.Players.LocalPlayer.CharacterAdded:Connect(checkAnimation)
end
-- ANIMATIONS AND THEIR FUNCTIONS
onAnimation("14705929107", function(animation)
    wait(1.9)
    teleportPlayer()
    warn("animation id:", animation.Animation.AnimationId)
end)

onAnimation("12296113986", function(animation)
    wait(1)
    teleportPlayer()
    warn("animation id:", animation.Animation.AnimationId)
end)

onAnimation("15145462680", function(animation)
    wait(1.7)
    teleportPlayer()
    warn("animation id:", animation.Animation.AnimationId)
end)

onAnimation("12273188754", function(animation)
    wait(1.3)
    teleportPlayer()
    warn("animation id:", animation.Animation.AnimationId)
end)

onAnimation("16139108718", function(animation)
    wait(0.2)
    teleportPlayer()
    warn("animation id:", animation.Animation.AnimationId)
end)
   end,
})
local VisualSection = MainTab:CreateSection("Visual")

local Input = MainTab:CreateInput({
   Name = "Camera Lock / Aimlock",
   PlaceholderText = "Y",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local camera = game.Workspace.CurrentCamera

local isLocked = false
local targetPlayer = nil
local key = "(Text)"  -- Set the default keybind here

local function keyToEnum(keyName)
    return Enum.KeyCode[keyName:upper()]
end

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
    if input.KeyCode == keyToEnum(key) then
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
   end,
})
--[[
local Label = MainTab:CreateLabel("ESP - 6 Colors")


]]
local UtilSection = MainTab:CreateSection("Utilities")

local Button = MainTab:CreateButton({
   Name = "Custom Keyboard",
   Callback = function()
-- Keyboard script By Red_BloxZ
-- You screen will freeze for a few seconds when execute because it loading
loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Mobile Shiftlock",
   Callback = function()
loadstring(game:HttpGet("https://github.com/ltseverydayyou/uuuuuuu/blob/main/shiftlock?raw=true"))()
   end,
}) -- test end - result = works

local ExploitTab = Window:CreateTab("Exploits 🔓", nil) -- Title, Image
local AlertSection = ExploitTab:CreateSection("Visual")

local Button = ExploitTab:CreateButton({
   Name = "Death Counter Alert (Not Mine)",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/louismich4el/ItsLouisPlayz-Scripts/main/TSB%20Death%20Counter%20Identifier.lua"))()
-- Death Counter Alert

   end,
})

local AvoiderSection = ExploitTab:CreateSection("Avoider")

local Button = ExploitTab:CreateButton({
   Name = "Anti Omni & Tableflip (Not Mine)",
   Callback = function()
DistanceToDodgeOmni_Table = 100
loadstring(game:HttpGet("https://raw.githubusercontent.com/louismich4el/ItsLouisPlayz-Scripts/main/Auto%20Dodge%20Omni%20And%20Table.lua"))()

   end,
})

local Button = ExploitTab:CreateButton({
   Name = "Anti Death Counter",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local InvisSection = ExploitTab:CreateSection("Invisible Moves")

local Button = ExploitTab:CreateButton({
   Name = "Invisible Tableflip",
   Callback = function()
function onAnimation(id, func)
    local id = tostring(id):gsub("rbxassetid://", "")
    
    local char = game:GetService("Players").LocalPlayer.Character
    local humanoid = char and char:WaitForChild("Humanoid", 1)
    if char and humanoid then
        humanoid.AnimationPlayed:Connect(function(v)
            local vID = v.Animation.AnimationId:gsub("rbxassetid://", "")
            if id == vID then
                func(v)
            end
        end)
    end
    game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
        local humanoid = char and char:WaitForChild("Humanoid", 1)
        if char and humanoid then
            humanoid.AnimationPlayed:Connect(function(v)
                local vID = v.Animation.AnimationId:gsub("rbxassetid://", "")
                if id == vID then
                    func(v)
                end
            end)
        end
    end)
end



onAnimation("11365563255", function(animation)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 20
wait(5.5)
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
    warn("animation id:", animation.Animation.AnimationId)
end)
   end,
})

local Button = ExploitTab:CreateButton({
   Name = "Invisible Serious Punch",
   Callback = function()
-- Invisible Serious Punch
local animationId = 12983333733 ---- Get anim id
 
 
local player = game.Players.LocalPlayer
 
local character = player.Character or player.CharacterAdded:Wait()
 
local humanoid = character:WaitForChild("Humanoid")
 
 
local function onAnimationPlayed(animationTrack)
 
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
 
 
local p = game.Players.LocalPlayer
 
local Humanoid = p.Character:WaitForChild("Humanoid")
 
 
for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
 
    animTrack:Stop()
 
end
 
 
local AnimAnim = Instance.new("Animation")
 
AnimAnim.AnimationId = "rbxassetid://10469630950" ---- Change to repulse anim id
 
local Anim = Humanoid:LoadAnimation(AnimAnim)
 
 
local startTime = 0
 
 
Anim:Play()
 
Anim:AdjustSpeed(0)
 
Anim.TimePosition = startTime
 
Anim:AdjustSpeed(100)
 
 
    end
 
end
  
humanoid.AnimationPlayed:Connect(onAnimationPlayed)
   end,
})

local ExtraSection = ExploitTab:CreateSection("Extra")

local Button = ExploitTab:CreateButton({
   Name = "Fling All",
   Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
   end,
})
--[[
local Button = ExploitTab:CreateButton({
   Name = "Walk Fling",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})
]]
local CustomTab = Window:CreateTab("Customization 👕", nil) -- Title, Image
local HotbarSection = CustomTab:CreateSection("Hotbar Editor")

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

ToolName.Text = (Text)
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

ToolName.Text = (Text)
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

ToolName.Text = (Text)
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

ToolName.Text = (Text)
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

                textLabel.Text = (Text)
            end
        end
    end
end

playerGui.DescendantAdded:Connect(findGuiAndSetText)
findGuiAndSetText()
   end,
})

local MouseSection = CustomTab:CreateSection("M1 Animation Changer")
local Paragraph = CustomTab:CreateParagraph({Title = "Coming Soon!", Content = "This Feature Is Still In Development"})
-- test end - test succesful
local MovesetTab = Window:CreateTab("Characters 🃏", nil) -- Title, Image
local MyselfSection = MovesetTab:CreateSection("Made By RXScripter")

local Paragraph = MovesetTab:CreateParagraph({Title = "Coming Soon", Content = "Sorry Im Still Making My Very Own Custom Character"})

local NotmineSection = MovesetTab:CreateSection("Made By Other Creators")

local Paragraph = MovesetTab:CreateParagraph({Title = "Note", Content = "These Scripts Arent Mine (Credits To The Owners)"})

local Label = MovesetTab:CreateLabel("Regular")

local Button = MovesetTab:CreateButton({
   Name = "Saitama X Mixed",
   Callback = function()
--Mixed Moveset FE Script TSB ONLY
loadstring(game:HttpGet("https://pastebin.com/raw/Y3uyGSK6"))()
   end,
})

local Button = MovesetTab:CreateButton({
   Name = "Garou X Suiryu",
   Callback = function()
loadstring(game:HttpGet"https://gist.githubusercontent.com/kjremaker/b092496fc11a57e2c50477154176fa3e/raw/2148f00a036a1799118541765675f3f6a0f8adae/GAROU%20TO%20SURIYU%20BETTER%20THAN%20THE%20OTHERS%20FR")()
   end,
})

local Label = MovesetTab:CreateLabel("Anime")

local Button = MovesetTab:CreateButton({
   Name = "Saitama X Gojo (No Vfx)",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/gojo_moveset.txt"))()
   end,
})

local Button = MovesetTab:CreateButton({
   Name = "Saitama X Gojo (With Vfx)",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/BaldyToSorcerer/main/Latest.lua"))()      
   end,
})

local Button = MovesetTab:CreateButton({
   Name = "Saitama X Toji",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/kademboss/maddyhure/main/fe3feafeaefa"))()
   end,
})

local Button = MovesetTab:CreateButton({
   Name = "Saitama X Vessel",
   Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/vsfSR0Pz'))() 
   end,
})

local Button = MovesetTab:CreateButton({
   Name = "Garou X Goku (No Vfx)",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/Goku%20Moveset%20(Not%20Mine%20Credits%20To%20The%20Owner)",true))()
   end,
})

local Button = MovesetTab:CreateButton({
   Name = "Garou X Goku (With Vfx)",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JayXSama/ray-makk/main/GOKUTSB"))()
   end,
})

local PlayerTab = Window:CreateTab("Player 🚹", nil) -- Title, Image
local MoveSection = PlayerTab:CreateSection("Movement")

local Button = PlayerTab:CreateButton({
   Name = "Speed Up",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/speed%20up"))()
   end,
})

local AvatarSection = PlayerTab:CreateSection("Character")

local Input = PlayerTab:CreateInput({
   Name = "Noclip",
   PlaceholderText = "T",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
local NoclipEnabled = false -- control noclip state
local Noclip = nil
local Clip = nil
local key = "(Text)"  -- Set the default keybind here

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

local function keyToEnum(keyName)
    return Enum.KeyCode[keyName:upper()]
end

UserInputService.InputBegan:Connect(function(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == keyToEnum(key) then
        NoclipEnabled = not NoclipEnabled -- Toggle noclip state
        if NoclipEnabled then
            noclip() -- enable noclip
        else
            clip() -- disable noclip
        end
    end
end)
   end,
})

local ToolsSection = PlayerTab:CreateSection("Tools")
local Label = PlayerTab:CreateLabel("Counters")

local Button = PlayerTab:CreateButton({
   Name = "Fake Preys Peril",
   Callback = function()
-- Fake Omni Or Anyother moves just need anim id btw
local tool = Instance.new("Tool")
tool.RequiresHandle = true
tool.Name = "Fake Preys Peril"
tool.Parent = game.Players.LocalPlayer.Backpack

local mouse = game.Players.LocalPlayer:GetMouse()

local function executeAnimation()
    local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://12351854556" -- change id
    
    local animationTrack = humanoid:LoadAnimation(animation)
    
    animationTrack:Play()
    animationTrack:AdjustSpeed(1)
    animationTrack.Looped = false
    
    animationTrack.Stopped:Wait() 
end

local isAnimating = false

mouse.Button1Down:Connect(function()
    if tool.Parent == game.Players.LocalPlayer.Character or tool.Parent == game.Players.LocalPlayer.StarterGear then
        if not isAnimating then
            isAnimating = true
            executeAnimation()
            isAnimating = false
        end
    end
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    tool.Parent = game.Players.LocalPlayer.Backpack
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    tool.Parent = game.Players.LocalPlayer.StarterGear
end)

game.Players.LocalPlayer.CharacterAdded:Wait()
tool.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local Button = PlayerTab:CreateButton({
   Name = "Fake Split Second Counter",
   Callback = function()
-- Fake Omni Or Anyother moves just need anim id btw
local tool = Instance.new("Tool")
tool.RequiresHandle = true
tool.Name = "Fake SSC"
tool.Parent = game.Players.LocalPlayer.Backpack

local mouse = game.Players.LocalPlayer:GetMouse()

local function executeAnimation()
    local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://15311685628" -- change id
    
    local animationTrack = humanoid:LoadAnimation(animation)
    
    animationTrack:Play()
    animationTrack:AdjustSpeed(1)
    animationTrack.Looped = false
    
    animationTrack.Stopped:Wait() 
end

local isAnimating = false

mouse.Button1Down:Connect(function()
    if tool.Parent == game.Players.LocalPlayer.Character or tool.Parent == game.Players.LocalPlayer.StarterGear then
        if not isAnimating then
            isAnimating = true
            executeAnimation()
            isAnimating = false
        end
    end
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    tool.Parent = game.Players.LocalPlayer.Backpack
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    tool.Parent = game.Players.LocalPlayer.StarterGear
end)

game.Players.LocalPlayer.CharacterAdded:Wait()
tool.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local Button = PlayerTab:CreateButton({
   Name = "Fake Deathblow",
   Callback = function()
-- Fake Omni Or Anyother moves just need anim id btw
local tool = Instance.new("Tool")
tool.RequiresHandle = true
tool.Name = "Fake Death Blow"
tool.Parent = game.Players.LocalPlayer.Backpack

local mouse = game.Players.LocalPlayer:GetMouse()

local function executeAnimation()
    local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://15128849047" -- change id
    
    local animationTrack = humanoid:LoadAnimation(animation)
    
    animationTrack:Play()
    animationTrack:AdjustSpeed(1)
    animationTrack.Looped = false
    
    animationTrack.Stopped:Wait() 
end

local isAnimating = false

mouse.Button1Down:Connect(function()
    if tool.Parent == game.Players.LocalPlayer.Character or tool.Parent == game.Players.LocalPlayer.StarterGear then
        if not isAnimating then
            isAnimating = true
            executeAnimation()
            isAnimating = false
        end
    end
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    tool.Parent = game.Players.LocalPlayer.Backpack
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    tool.Parent = game.Players.LocalPlayer.StarterGear
end)

game.Players.LocalPlayer.CharacterAdded:Wait()
tool.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local Label = PlayerTab:CreateLabel("Serious Series")
local Button = PlayerTab:CreateButton({
   Name = "Fake Tableflip",
   Callback = function()
local tool = Instance.new("Tool")
tool.RequiresHandle = true
tool.Name = "Fake Table Flip"
tool.Parent = game.Players.LocalPlayer.Backpack

local mouse = game.Players.LocalPlayer:GetMouse()

local function executeAnimation()
    local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://11365563255" -- change id
    
    local animationTrack = humanoid:LoadAnimation(animation)
    
    animationTrack:Play()
    animationTrack:AdjustSpeed(1)
    animationTrack.Looped = false
    
    animationTrack.Stopped:Wait() 
end

local isAnimating = false

mouse.Button1Down:Connect(function()
    if tool.Parent == game.Players.LocalPlayer.Character or tool.Parent == game.Players.LocalPlayer.StarterGear then
        if not isAnimating then
            isAnimating = true
            executeAnimation()
            isAnimating = false
        end
    end
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    tool.Parent = game.Players.LocalPlayer.Backpack
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    tool.Parent = game.Players.LocalPlayer.StarterGear
end)

game.Players.LocalPlayer.CharacterAdded:Wait()
tool.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local Button = PlayerTab:CreateButton({
   Name = "Fake Serious Punch",
   Callback = function()
local tool = Instance.new("Tool")
tool.RequiresHandle = true
tool.Name = "Fake Serious Punch"
tool.Parent = game.Players.LocalPlayer.Backpack

local mouse = game.Players.LocalPlayer:GetMouse()

local function executeAnimation()
    local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://12983333733" -- change id
    
    local animationTrack = humanoid:LoadAnimation(animation)
    
    animationTrack:Play()
    animationTrack:AdjustSpeed(1)
    animationTrack.Looped = false
    
    animationTrack.Stopped:Wait() 
end

local isAnimating = false

mouse.Button1Down:Connect(function()
    if tool.Parent == game.Players.LocalPlayer.Character or tool.Parent == game.Players.LocalPlayer.StarterGear then
        if not isAnimating then
            isAnimating = true
            executeAnimation()
            isAnimating = false
        end
    end
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    tool.Parent = game.Players.LocalPlayer.Backpack
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    tool.Parent = game.Players.LocalPlayer.StarterGear
end)

game.Players.LocalPlayer.CharacterAdded:Wait()
tool.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local Button = PlayerTab:CreateButton({
   Name = "Fake Omni",
   Callback = function()
local tool = Instance.new("Tool")
tool.RequiresHandle = true
tool.Name = "Fake Omni"
tool.Parent = game.Players.LocalPlayer.Backpack

local mouse = game.Players.LocalPlayer:GetMouse()

local function executeAnimation()
    local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://13927612951" -- change id
    
    local animationTrack = humanoid:LoadAnimation(animation)
    
    animationTrack:Play()
    animationTrack:AdjustSpeed(1)
    animationTrack.Looped = false
    
    animationTrack.Stopped:Wait() 
end

local isAnimating = false

mouse.Button1Down:Connect(function()
    if tool.Parent == game.Players.LocalPlayer.Character or tool.Parent == game.Players.LocalPlayer.StarterGear then
        if not isAnimating then
            isAnimating = true
            executeAnimation()
            isAnimating = false
        end
    end
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    tool.Parent = game.Players.LocalPlayer.Backpack
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    tool.Parent = game.Players.LocalPlayer.StarterGear
end)

game.Players.LocalPlayer.CharacterAdded:Wait()
tool.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local Paragraph = PlayerTab:CreateParagraph({Title = "Coming Soon", Content = "Adding More Moves In The Future."})
-- test end - worked
local TpTab = Window:CreateTab("Teleports 📌", nil) -- Title, Image
local AreaSection = TpTab:CreateSection("Locations")

local Button = TpTab:CreateButton({
   Name = "Dummy Location",
   Callback = function()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(149, 440, 31))
   end,
})

local Button = TpTab:CreateButton({
   Name = "Mountain 1",
   Callback = function()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-4, 652, -369))
   end,
})

local Button = TpTab:CreateButton({
   Name = "Mountain 2",
   Callback = function()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(304, 671, 395))
   end,
})

local Button = TpTab:CreateButton({
   Name = "Lonely Area 1",
   Callback = function()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-209, 439, 431))
   end,
})

local Button = TpTab:CreateButton({
   Name = "Lonely Area 2",
   Callback = function()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-132, 439, -357))
   end,
})

local Button = TpTab:CreateButton({
   Name = "Death Counter Room",
   Callback = function()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(-64, 29, 20335))
   end,
})

local Button = TpTab:CreateButton({
   Name = "Atomic Slash Room",
   Callback = function()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1064, 131, 23006))
   end,
})

local Button = TpTab:CreateButton({
   Name = "Lower Baseplate",
   Callback = function()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1074, 19, 23143))
   end,
})

local Button = TpTab:CreateButton({
   Name = "Upper Baseplate",
   Callback = function()
game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(1087, 406, 23052))
   end,
})

local ManualSection = TpTab:CreateSection("Manual Teleportation")

local Input = TpTab:CreateInput({
   Name = "Position Teleporter",
   PlaceholderText = "0, 0, 0",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
local player = game.Players.LocalPlayer

local position = Vector3.new(Text) -- Change the coordinates to your desired position
player.Character.HumanoidRootPart.CFrame = CFrame.new(position)
   end,
})

local Button = TpTab:CreateButton({
   Name = "Position Displayer",
   Callback = function()
      --Position Displayer By RXScripter It's Obfuscated--
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/posdisplayer"))()
   end,
})

local MiscTab = Window:CreateTab("Miscellaneous ❔", nil) -- Title, Image
local ServerSection = MiscTab:CreateSection("Server")

local Button = MiscTab:CreateButton({
   Name = "Rejoin",
   Callback = function()
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
   end,
})
