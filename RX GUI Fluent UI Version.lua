--[[

    RX GUI

██████╗ ██╗  ██╗     ██████╗ ██╗   ██╗██╗
██╔══██╗╚██╗██╔╝    ██╔════╝ ██║   ██║██║
██████╔╝ ╚███╔╝     ██║  ███╗██║   ██║██║
██╔══██╗ ██╔██╗     ██║   ██║██║   ██║██║
██║  ██║██╔╝ ██╗    ╚██████╔╝╚██████╔╝██║
╚═╝  ╚═╝╚═╝  ╚═╝     ╚═════╝  ╚═════╝ ╚═╝
                                         

Keybinds
E - Dash
J - SCJ or Shadow Clone Jutsu
G - Void
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/rxscripttogglebutton"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/part"))()
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "RX GUI V2",
    SubTitle = "by RX Scripter",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.K -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main 🌐", Icon = "" }),
    Expl = Window:AddTab({ Title = "Exploits 🔓", Icon = "" }),
    Cust = Window:AddTab({ Title = "Customization 👕", Icon = "" }),
    Char = Window:AddTab({ Title = "Characters 🃏", Icon = "" }),
    Play = Window:AddTab({ Title = "Player 🚹", Icon = "" }),
    Map = Window:AddTab({ Title = "Map 🗺️", Icon = "" }),
    Tele = Window:AddTab({ Title = "Teleports 📌", Icon = "" }),
    Misc = Window:AddTab({ Title = "Miscellaneous ❔", Icon = "" }),
}

local Options = Fluent.Options

do
Fluent:Notify({
        Title = "DO NOT STEAL",
        Content = "You do not have rights to own this script.",
        SubContent = "From RXScripter", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })

  Tabs.Main:AddParagraph({
        Title = "PC",
        Content = "Exploits Made For Devices With A Keyboard"
    })
  
Tabs.Main:AddButton({
        Title = "Dash Script",
        Description = "Teleport 35 Studs Forward\nKeybind is E",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/35StudDash"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("≠")
                        end
                    }
                }
            })
        end
    })
  
Tabs.Main:AddButton({
        Title = "Shadow Clone Jutsu",
        Description = "Summon Clones That You Teleport To\nKeybind is J (2×)",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/SSJ"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("≠")
                        end
                    }
                }
            })
        end
    })
  
  Tabs.Main:AddParagraph({
        Title = "Mobile",
        Content = "Exploits Made For Mobile Devices"
    })
  
    Tabs.Main:AddButton({
        Title = "Animated Teleportation Tool",
        Description = "A Tool Which Allows You To Teleport",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/AnimeTpTool"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
  
    Tabs.Main:AddButton({
        Title = "Limitless Teleportation Tool",
        Description = "A Tool Which Teleports You Behijd The Nearest Player\n(30 Studs)",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/LimitlessToolForMobile"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
  
    Tabs.Main:AddButton({
        Title = "Teleportation Clone",
        Description = "A Clone To Teleport To",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/TeleportationCloneButtonForMobile"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
  
    Tabs.Main:AddParagraph({
        Title = "Visual",
        Content = "Scripts That Only Affect Your Screen"
    })
  
    Tabs.Main:AddButton({
        Title = "Camera Lock / Aim Lock",
        Description = "Lock Unto The Nearest Player \n(75 Studs) Keybind is Y",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/CamLockScript"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
  
    Tabs.Main:AddParagraph({
        Title = "Utilities",
        Content = "Useful Scripts"
    })
  
    Tabs.Main:AddButton({
        Title = "Custom Keyboard GUI",
        Description = "Useful For Mobile Users\n(Not Mine)",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
  
    Tabs.Main:AddButton({
        Title = "Mobile Shiftlock",
        Description = "Draggable Shift Lock Button\n(Not Mine)",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://github.com/ltseverydayyou/uuuuuuu/blob/main/shiftlock?raw=true"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Expl:AddParagraph({
        Title = "Visual",
        Content = "Scripts That Only Affect You"
    })
    
    Tabs.Expl:AddButton({
        Title = "Death Counter Alert",
        Description = "Shows A Warning Sign Above A Player Who Used Death Counter",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/louismich4el/ItsLouisPlayz-Scripts/main/TSB%20Death%20Counter%20Identifier.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
  
    Tabs.Expl:AddButton({
        Title = "Kill Display",
        Description = "Makes A Gui Showing Your Total Kills",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/KillDisplay"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Expl:AddButton({
        Title = "Kill Notification",
        Description = "Shows A Notification Whenever Your Kills Value Updates",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/KillNotif"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Expl:AddParagraph({
        Title = "Avoider",
        Content = "Scripts That Avoid Certain Ultimate Moves"
    })
    
    Tabs.Expl:AddButton({
        Title = "Anti Table Flip & Omni Directional Punch",
        Description = "Teleports You Behind The Player Who Used Table Flip Or Omni\n(Not Mine And Only Works If Their 100 Studs Near)",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            DistanceToDodgeOmni_Table = 100
loadstring(game:HttpGet("https://raw.githubusercontent.com/louismich4el/ItsLouisPlayz-Scripts/main/Auto%20Dodge%20Omni%20And%20Table.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Expl:AddButton({
        Title = "Anti Death Counter",
        Description = "Attempts To Avoids Death Counter",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/AntiDeathCounter"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Expl:AddParagraph({
        Title = "Invisible Moves",
        Content = "Scripts That Makes Certain Ultimate Moves Invisible"
    })
    
    Tabs.Expl:AddButton({
        Title = "Invisible Table Flip",
        Description = "Removes The Trails When You Use Table Flip",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/InvisTablef"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Expl:AddButton({
        Title = "Invisible Serious Punch",
        Description = "Removes Serious Punch Animation",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/InvisSPunch"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Expl:AddButton({
        Title = "Invisible Omni Directional",
        Description = "Removes Omni Animation",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/InvisOmni"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Expl:AddParagraph({
        Title = "Kill Options",
        Content = "Scripts That Kills Players\n(Doesnt Increase Total Kills)"
    })
    
-- TELEPORT FUNCTION
teleportPosition = CFrame.new(150, -497, 30) -- Default to "Void" position

local function punishTp()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

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
toggleActive = false

function onAnimation(id, func)
    id = tostring(id):gsub("rbxassetid://", "")
    
    function checkAnimation(char)
        humanoid = char and char:WaitForChild("Humanoid", 1)
        if char and humanoid then
            humanoid.AnimationPlayed:Connect(function(v)
                if toggleActive then
                    vID = v.Animation.AnimationId:gsub("rbxassetid://", "")
                    if id == vID then
                        func(v)
                    end
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
    punishTp()
    warn("animation id:", animation.Animation.AnimationId)
end)

onAnimation("12296113986", function(animation)
    wait(1)
    punishTp()
    warn("animation id:", animation.Animation.AnimationId)
end)

onAnimation("15145462680", function(animation)
    wait(1.7)
    punishTp()
    warn("animation id:", animation.Animation.AnimationId)
end)

onAnimation("12273188754", function(animation)
    wait(1.3)
    punishTp()
    warn("animation id:", animation.Animation.AnimationId)
end)

onAnimation("16139108718", function(animation)
    wait(0.1)
    punishTp()
    warn("animation id:", animation.Animation.AnimationId)
end)

-- UI TOGGLE AND DROPDOWN INTEGRATION

Toggle = Tabs.Expl:AddToggle("AutoVoidToggle", {Title = "Auto Void or Punish", Default = false })

Toggle:OnChanged(function(Value)
    toggleActive = Value
    print("autovoidorpunish", toggleActive and "ON" or "OFF")
end)

Dropdown = Tabs.Expl:AddDropdown("PunishLocation", {
    Title = "Punish Locations",
    Values = {"Void", "Map Center", "Beach", "Mountain", "Outside Area", "Lower Baseplate", "Upper Baseplate", "Atomic Slash Room", "DC Room"},
    Multi = false,
    Default = 1,
})

Dropdown:SetValue("Void")

Dropdown:OnChanged(function(Value)
    -- Set teleportPosition based on selected option
    positions = {
        Void = Vector3.new(1500, -497, 1500),
        ["Map Center"] = Vector3.new(149, 440, 31),
        Beach = Vector3.new(723, 440, -218),
        Mountain = Vector3.new(-4, 652, -369),
        ["Outside Area"] = Vector3.new(-132, 439, -357),
        ["Lower Baseplate"] = Vector3.new(1074, 19, 23143),
        ["Upper Baseplate"] = Vector3.new(1087, 406, 23052),
        ["Atomic Slash Room"] = Vector3.new(1064, 131, 23006),
        ["DC Room"] = Vector3.new(-64, 29, 20335),
    }
    teleportPosition = CFrame.new(positions[Value])
    print("punishlocation?", Value)
end)
    
    Tabs.Expl:AddButton({
        Title = "Manual Punish",
        Description = "Bring Players To Certain Locations\n(Mobile Version)",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/ManualPunishMobileVer"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Expl:AddButton({
        Title = "Manual Void",
        Description = "Teleport Players To The Void\n(PC Version) Keybind is G",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/ManualVoidPcVerPressG"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Expl:AddButton({
        Title = "Manual Void",
        Description = "Teleport Players To The Void\n(Mobile Version)",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/ManualVoidScriptMobileVer"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Expl:AddParagraph({
        Title = "Auto Farm",
        Content = "Scripts That Kills Players Or Certain Entities"
    })
    
    Tabs.Expl:AddButton({
        Title = "Kill Steal Button",
        Description = "Finds Players With HP Lower Than 20\n(Mobile Version)",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/KillFinderButtonForMobile"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
player = game.Players.LocalPlayer
teleportEnabled = false -- Variable to track teleport status

-- Custom function to run when the Crab Boss isn't found
function noCrab()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Error!";
        Text = "Crab Boss Not Found.";
        Duration = 4;
        Button1 = "Okay.";
    })
    -- Add your custom code here
end

function teleportToCrabHead()
    character = player.Character or player.CharacterAdded:Wait()
    head = game.Workspace:FindFirstChild("Live") and game.Workspace.Live:FindFirstChild("Crab Boss") and game.Workspace.Live["Crab Boss"]:FindFirstChild("Head")

    if not head then
        noCrab() -- Run custom function if the head isn't found
        return
    end

    while teleportEnabled and character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0 do
        character:MoveTo(head.Position)
        wait(0.1) -- Adjust the wait time as needed
    end
end

-- Toggle function for enabling/disabling teleportation
function onToggleChanged()
    teleportEnabled = Options.AutoFarmCrab.Value -- Update teleport status based on toggle
    if teleportEnabled then
        teleportToCrabHead() -- Start teleporting if enabled
    end
end

-- UI Toggle Implementation
Toggle = Tabs.Expl:AddToggle("AutoFarmCrab", {Title = "Auto Farm Crab", Default = false })

Toggle:OnChanged(onToggleChanged) -- Set the toggle callback

-- Function to handle character respawn
function onCharacterAdded(character)
    if teleportEnabled then
        teleportToCrabHead() -- Restart teleporting if enabled
    end
end

-- Connect to CharacterAdded event
player.CharacterAdded:Connect(onCharacterAdded)

-- Start the teleporting function if the character is already loaded
if player.Character then
    onCharacterAdded(player.Character) -- Call the function if the character already exists
end
    
    Tabs.Expl:AddParagraph({
        Title = "Moves",
        Content = "Scripts That Modify With Moves"
    })
    
Players = game:GetService("Players")
RunService = game:GetService("RunService")

savedCFrame = CFrame.new(0, 0, 0) -- Default CFrame

-- Function to save player's CFrame
function saveCFrame()
    local player = Players.LocalPlayer
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        savedCFrame = player.Character.HumanoidRootPart.CFrame
    end
end

-- Function to teleport to a player
function teleportToPlayer(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local playerCFrame = player.Character.HumanoidRootPart.CFrame
        Players.LocalPlayer.Character.HumanoidRootPart.CFrame = playerCFrame
    end
end

-- Function to teleport to all players
function teleportToAllPlayers()
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer then
            task.wait(0.1)
            teleportToPlayer(player)
        end
    end
end

-- Function to teleport back to saved CFrame
function teleportBack()
    if savedCFrame ~= CFrame.new(0, 0, 0) then
        Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedCFrame
    end
end

function onAnimation(id, func)
    id = tostring(id):gsub("rbxassetid://", "")

    -- Function to check if the animation is playing using Animator
    local function checkPlayingAnimation()
        local humanoid = Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        local animator = humanoid and humanoid:FindFirstChild("Animator")

        if animator then
            local playingTracks = animator:GetPlayingAnimationTracks()
            for _, track in pairs(playingTracks) do
                local trackID = tostring(track.Animation.AnimationId):gsub("rbxassetid://", "")
                if trackID == id then
                    func(track) -- Execute the callback function when the animation is detected
                end
            end
        end
    end

    -- Continuously check for the animation being played every frame
    RunService.Heartbeat:Connect(function()
        if Players.LocalPlayer.Character then
            checkPlayingAnimation()
        end
    end)
end

-- Toggle functionality
isToggled = false -- Initialize toggle state

Toggle = Tabs.Expl:AddToggle("SavageTornadoBringAll", {Title = "Savage Tornado Bring All", Default = false })

Toggle:OnChanged(function()
    isToggled = Toggle.Value -- Update toggle state
end)

-- Handle the character respawn to reinitialize everything
Players.LocalPlayer.CharacterAdded:Connect(function()
    -- Reset and reconnect everything on character respawn
    savedCFrame = CFrame.new(0, 0, 0) -- Reset saved CFrame
    wait(0.1) -- Ensure the character is fully loaded before setting up the animation detection

    onAnimation("14719290328", function(animation)
        if isToggled then -- Check if toggle is active
            wait(0.9)
            saveCFrame()
            teleportToAllPlayers()
            task.wait(0.1)
            teleportBack()
            task.wait(0.1)
            warn("Animation id:", animation.Animation.AnimationId)
        end
    end)
end)

-- Initialize the script for the first time
onAnimation("14719290328", function(animation)
    if isToggled then -- Check if toggle is active
        wait(0.9)
        saveCFrame()
        teleportToAllPlayers()
        task.wait(0.1)
        teleportBack()
        task.wait(0.1)
        warn("Animation id:", animation.Animation.AnimationId)
    end
end)
    
    Tabs.Expl:AddParagraph({
        Title = "Safety",
        Content = "Scripts That Attempt To Keep You Alive"
    })
    
player = game.Players.LocalPlayer
teleportEnabled = false
teleportThreshold = 30
teleportPosition = Vector3.new(-4, 652, -369)  -- Default to Mountain 1 position
delayTime = 0.5
teleportRepetitions = 7

-- Define teleport positions
teleportPositions = {
    ["Mountain 1"] = Vector3.new(-4, 652, -369),
    ["Mountain 2"] = Vector3.new(304, 671, 395),
    ["Mountain 3"] = Vector3.new(-305, 641, 227),
    ["Waterfall Top"] = Vector3.new(1153, 816, -793)
}

-- UI Library Code
Toggle = Tabs.Expl:AddToggle("HPSafetyToggle", {Title = "Low Health Safety", Default = false})
Toggle:OnChanged(function(Value)
    teleportEnabled = Value
    print("hpsafety:", Value)
end)

Slider = Tabs.Expl:AddSlider("HpAmount", {
    Title = "Amount Of Health",
    Description = "Amount Of Health That Triggers The Safety Mechanic",
    Default = 30,
    Min = 0,
    Max = 100,
    Rounding = 5,
    Callback = function(Value)
        teleportThreshold = Value
        print("amthp:", Value)
    end
})

Slider:OnChanged(function(Value)
    teleportThreshold = Value
    print("Slider changed:", Value)
end)

Dropdown = Tabs.Expl:AddDropdown("HPSafetyLocation", {
    Title = "Safety Location",
    Values = {"Mountain 1", "Mountain 2", "Mountain 3", "Waterfall Top"},
    Multi = false,
    Default = 1,
})

Dropdown:OnChanged(function(Value)
    teleportPosition = teleportPositions[Value]
    print("safeloc:", Value)
end)

-- Teleport Functionality
function setupHealthCheck()
    character = player.Character or player.CharacterAdded:Wait()
    humanoid = character:WaitForChild("Humanoid")

    humanoid.HealthChanged:Connect(function(health)
        if teleportEnabled and health <= teleportThreshold then
            for i = 1, teleportRepetitions do
                character:SetPrimaryPartCFrame(CFrame.new(teleportPosition))
                wait(delayTime)
            end
        end
    end)
end

-- Set up the health check initially and after every respawn
player.CharacterAdded:Connect(setupHealthCheck)
if player.Character then
    setupHealthCheck()
end
    
    Tabs.Expl:AddParagraph({
        Title = "Animation",
        Content = "Scripts That Removes Or Replaces Animations"
    })
    
-- Animation IDs to replace
singleAnimationIdToReplace = "rbxassetid://10470389827"
multipleAnimationIdsToReplace = {
    "rbxassetid://15128849047",
    "rbxassetid://12351854556",
    "rbxassetid://15311685628"
}

-- Replacement animation ID
replacementAnimationId = "rbxassetid://10469630950"

player = game.Players.LocalPlayer
singleAnimationEnabled = false -- Track if the single animation toggle is enabled
multipleAnimationsEnabled = false -- Track if the multiple animations toggle is enabled

function onAnimationPlayed(animationTrack, humanoid)
    local animationId = animationTrack.Animation.AnimationId

    -- Check if the animation matches the single ID and the single toggle is enabled
    if animationId == singleAnimationIdToReplace and singleAnimationEnabled then
        replaceAnimation(humanoid)

    -- Check if the animation matches any ID in the multiple list and multiple toggle is enabled
    elseif table.find(multipleAnimationIdsToReplace, animationId) and multipleAnimationsEnabled then
        replaceAnimation(humanoid)
    end
end

function replaceAnimation(humanoid)
    print("rep") -- Debugging line

    -- Stop all currently playing animations
    for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
        animTrack:Stop()
    end

    -- Load and play the replacement animation
    local AnimAnim = Instance.new("Animation")
    AnimAnim.AnimationId = replacementAnimationId
    local Anim = humanoid:LoadAnimation(AnimAnim)

    Anim:Play()
    Anim:AdjustSpeed(0)
    Anim.TimePosition = 0
    Anim:AdjustSpeed(1000)
end

function setupCharacter(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.AnimationPlayed:Connect(function(animationTrack)
        onAnimationPlayed(animationTrack, humanoid)
    end)
end

-- Set up the character when the script first runs
if player.Character then
    setupCharacter(player.Character)
end

-- Connect to CharacterAdded event to set up the new character upon respawn
player.CharacterAdded:Connect(setupCharacter)

-- UI Toggle for enabling/disabling the single animation replacement
SingleToggle = Tabs.Expl:AddToggle("SingleAnimReplace", {Title = "No Block Animation", Default = false})
SingleToggle:OnChanged(function(Value)
    singleAnimationEnabled = Value -- Update the single animation toggle state
    print("noblock:", Value) -- Debugging line
end)

-- UI Toggle for enabling/disabling the multiple animations replacement
MultipleToggle = Tabs.Expl:AddToggle("MultipleAnimReplace", {Title = "No Counter Animation", Default = false})
MultipleToggle:OnChanged(function(Value)
    multipleAnimationsEnabled = Value -- Update the multiple animations toggle state
    print("nocounter:", Value) -- Debugging line
end)

-- Set initial toggle values programmatically
Options.SingleAnimReplace:SetValue(false)
Options.MultipleAnimReplace:SetValue(false)
    
    Tabs.Expl:AddParagraph({
        Title = "Extra",
        Content = "Other Scripts"
    })

    Tabs.Expl:AddButton({
        Title = "Fling All",
        Description = "Attempts To Fling All Players In The Server\n(Not Mine)",
        Callback = function()
            Window:Dialog({
                Title = "Execute This Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Cust:AddParagraph({
        Title = "Kills Editor",
        Content = "Edit The Amount Of Kills You Have\n(Client Only)"
    })
    
Input = Tabs.Cust:AddInput("KllsEdit", {
    Title = "Current Kills Editor",
    Default = "0",
    Placeholder = "Enter Amount",
    Numeric = true,
    Finished = true,
    Callback = function(Value)
        player = game.Players.LocalPlayer
        leaderstats = player:FindFirstChild("leaderstats")
        
        if leaderstats then
            killsStat = leaderstats:FindFirstChild("Kills")
            if killsStat then
                killsStat.Value = tonumber(Value)
            else
                warn("Kills stat not found")
            end
        else
            warn("Leaderstats not found")
        end
    end
})

Input = Tabs.Cust:AddInput("TtlKills", {
    Title = "Total Kills Editor",
    Default = "0",
    Placeholder = "Enter Amount",
    Numeric = true,
    Finished = true,
    Callback = function(Value)
        player = game.Players.LocalPlayer
        leaderstats = player:FindFirstChild("leaderstats")
        
        if leaderstats then
            totalKills = leaderstats:FindFirstChild("Total Kills")
            if totalKills then
                totalKills.Value = tonumber(Value)
            else
                warn("Total Kills stat not found")
            end
        else
            warn("Leaderstats not found")
        end
    end
})
    
    Tabs.Cust:AddParagraph({
        Title = "Hotbar Editor",
        Content = "Edit The Names Of Your Hotbar Items Or Gui"
    })

player = game.Players.LocalPlayer
playerGui = player.PlayerGui
hotbar = playerGui:FindFirstChild("Hotbar")
backpack = hotbar:FindFirstChild("Backpack")
hotbarFrame = backpack:FindFirstChild("Hotbar")

-- Hotbar 1
baseButton1 = hotbarFrame:FindFirstChild("1").Base
ToolName1 = baseButton1.ToolName

Input1 = Tabs.Cust:AddInput("HBOne", {
    Title = "Hotbar 1",
    Default = "",
    Placeholder = "Name Here",
    Numeric = false,
    Finished = true,
    Callback = function(Value)
        print("hbar1:", Value)
        ToolName1.Text = Value
    end
})

-- Hotbar 2
baseButton2 = hotbarFrame:FindFirstChild("2").Base
ToolName2 = baseButton2.ToolName

Input2 = Tabs.Cust:AddInput("HBTwo", {
    Title = "Hotbar 2",
    Default = "",
    Placeholder = "Name Here",
    Numeric = false,
    Finished = true,
    Callback = function(Value)
        print("hbar2:", Value)
        ToolName2.Text = Value
    end
})

-- Hotbar 3
baseButton3 = hotbarFrame:FindFirstChild("3").Base
ToolName3 = baseButton3.ToolName

Input3 = Tabs.Cust:AddInput("HBThree", {
    Title = "Hotbar 3",
    Default = "",
    Placeholder = "Name Here",
    Numeric = false,
    Finished = true,
    Callback = function(Value)
        print("hbar3:", Value)
        ToolName3.Text = Value
    end
})

-- Hotbar 4
baseButton4 = hotbarFrame:FindFirstChild("4").Base
ToolName4 = baseButton4.ToolName

Input4 = Tabs.Cust:AddInput("HBFour", {
    Title = "Hotbar 4",
    Default = "",
    Placeholder = "Name Here",
    Numeric = false,
    Finished = true,
    Callback = function(Value)
        print("hbar4:", Value)
        ToolName4.Text = Value
    end
})
    
Input4 = Tabs.Cust:AddInput("UltName", {
    Title = "Ultimate Name",
    Default = "",
    Placeholder = "Name Here",
    Numeric = false,
    Finished = true,
    Callback = function(Value)
       Players = game:GetService("Players")
player = Players.LocalPlayer
playerGui = player:WaitForChild("PlayerGui")

function findGuiAndSetText()
    screenGui = playerGui:FindFirstChild("ScreenGui")
    if screenGui then
        magicHealthFrame = screenGui:FindFirstChild("MagicHealth")
        if magicHealthFrame then
            textLabel = magicHealthFrame:FindFirstChild("TextLabel")
            if textLabel then
                textLabel.Text = (Value)
            end
        end
    end
end

playerGui.DescendantAdded:Connect(findGuiAndSetText)
findGuiAndSetText()
    end
})
    
    Tabs.Char:AddParagraph({
        Title = "Made By RXScripter",
        Content = "Coming Soon\nSorry, Im Still Making My Very Own Custom Character"
    })

    Tabs.Char:AddParagraph({
        Title = "Made By Other Creators",
        Content = "Custom Character Scripts Made By Other People\n(Full Credits To The Owners)"
    })

    Tabs.Char:AddButton({
        Title = "Saitama To Mixed Powers",
        Description = "Made By NetlessKJ",
        Callback = function()
            Window:Dialog({
                Title = "Execute This Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            --Mixed Moveset FE Script TSB ONLY
loadstring(game:HttpGet("https://pastebin.com/raw/Y3uyGSK6"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Char:AddButton({
        Title = "Garou To Suiryu",
        Description = "Made By SummonedKJ",
        Callback = function()
            Window:Dialog({
                Title = "Execute This Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet"https://gist.githubusercontent.com/kjremaker/b092496fc11a57e2c50477154176fa3e/raw/2148f00a036a1799118541765675f3f6a0f8adae/GAROU%20TO%20SURIYU%20BETTER%20THAN%20THE%20OTHERS%20FR")()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Char:AddButton({
        Title = "Saitama To Gojo 1",
        Description = "Made By ???",
        Callback = function()
            Window:Dialog({
                Title = "Execute This Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/gojo_moveset.txt"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Char:AddButton({
        Title = "Saitama To Gojo 2",
        Description = "Made By Kyra",
        Callback = function()
            Window:Dialog({
                Title = "Execute This Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/BaldyToSorcerer/main/Latest.lua"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Char:AddButton({
        Title = "Atomic Samurai To Sukuna",
        Description = "Made By ???",
        Callback = function()
            Window:Dialog({
                Title = "Execute This Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            -- Atomic Samurai To Sukuna
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local AK = character:FindFirstChild("#KATANAWEAPON")
local AS = character:FindFirstChild("Sheathe")
local NK = character:FindFirstChild("#NinjaKATANA")
local NS = character:FindFirstChild("Sheathed")
local MBW = character:FindFirstChild("#BATWEAPON")
if AK and AS then
    AK:Destroy()
    AS:Destroy()
end
if NK and NS then
    NK:Destroy()
    NS:Destroy()
end
if MBW then
MBW:Destroy()
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/zyrask/Nexus-Base/main/atomic-blademaster%20to%20sukuna"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Char:AddButton({
        Title = "Garou To Goku",
        Description = "Made By ???",
        Callback = function()
            Window:Dialog({
                Title = "Execute This Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/Goku%20Moveset%20(Not%20Mine%20Credits%20To%20The%20Owner)",true))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Char:AddButton({
        Title = "Garou To Goku",
        Description = "Made By Raymakk",
        Callback = function()
            Window:Dialog({
                Title = "Execute This Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/JayXSama/ray-makk/main/GOKUTSB"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Play:AddParagraph({
        Title = "Movement",
        Content = "Scripts That Toggle With Your Movement"
    })
    
Players = game:GetService("Players")
RunService = game:GetService("RunService")

lplr = Players.LocalPlayer
chr = lplr.Character or lplr.CharacterAdded:Wait()
hum = chr:WaitForChild("Humanoid")

tspeed = 10 -- Default speed value
isSpeeding = false

-- Function to check if a value is a number
function isNumber(value)
    return tonumber(value) ~= nil or value == 'inf'
end

-- Function to handle teleport-based movement
function tpwalk()
    hb = RunService.Heartbeat
    tpwalking = true

    while tpwalking and hb:Wait() and chr and hum and hum.Parent do
        if hum.MoveDirection.Magnitude > 0 and isSpeeding then
            if isNumber(tspeed) then
                chr:TranslateBy(hum.MoveDirection * (tspeed / 10)) -- Adjust speed factor as needed
            else
                chr:TranslateBy(hum.MoveDirection)
            end
        end
    end
end

-- Toggle for enabling/disabling speed
Toggle = Tabs.Play:AddToggle("Speed", {
    Title = "Speed Up",
    Default = false
})

Toggle:OnChanged(function(Value)
    isSpeeding = Value
    if Value then
        tpwalk() -- Start tpwalk if toggled on
    end
end)

Options.Speed:SetValue(false) -- Default to disabled at start

-- Slider for adjusting speed amount
Slider = Tabs.Play:AddSlider("SpeedAmount", {
    Title = "Speed Value",
    Description = "The Amount Of Speed",
    Default = tspeed,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(Value)
        tspeed = Value -- Update the speed value when the slider changes
    end
})

Slider:OnChanged(function(Value)
    tspeed = Value -- Update tspeed when slider changes
end)

Slider:SetValue(tspeed) -- Set initial slider value to default

-- Ensure tpwalking starts when the character is added
lplr.CharacterAdded:Connect(function(newChar)
    chr = newChar
    hum = chr:WaitForChild("Humanoid")
    if isSpeeding then
        tpwalk() -- Restart tpwalking if the toggle is still on
    end
end)
    
-- Script

player = game.Players.LocalPlayer
tweenService = game:GetService("TweenService")

jumpTeleportEnabled = false -- Initialize toggle state
teleportHeight = 10 -- Initialize teleport height

-- Function to smoothly teleport up when jumping
function setupJumpDetection(character)
    humanoid = character:WaitForChild("Humanoid")

    function onJump()
        if jumpTeleportEnabled and humanoid:GetState() == Enum.HumanoidStateType.Jumping then
            targetPosition = character.PrimaryPart.Position + Vector3.new(0, teleportHeight, 0)
            tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear) -- Smooth transition over 0.5 seconds
            goal = { CFrame = CFrame.new(targetPosition) }

            tween = tweenService:Create(character.PrimaryPart, tweenInfo, goal)
            tween:Play()
        end
    end

    -- Detect jump state change
    humanoid.StateChanged:Connect(function(_, newState)
        if newState == Enum.HumanoidStateType.Jumping then
            onJump()
        end
    end)
end

-- Initial setup
if player.Character then
    setupJumpDetection(player.Character)
end

-- Reconnect when the character respawns
player.CharacterAdded:Connect(setupJumpDetection)

-- Toggle for the jump teleport
Toggle = Tabs.Play:AddToggle("JBToggle", {Title = "Jump Boost", Default = false })

Toggle:OnChanged(function()
    jumpTeleportEnabled = Options.JBToggle.Value -- Update toggle state
end)

-- Slider for the teleport height
Slider = Tabs.Play:AddSlider("JBAmount", {
    Title = "Jump Height",
    Description = "Adjust the height you teleport when jumping",
    Default = 10,
    Min = 0,
    Max = 500,
    Rounding = 5,
})

Slider:OnChanged(function(Value)
    teleportHeight = Value -- Update teleport height based on slider
end)
    
    Tabs.Play:AddParagraph({
        Title = "Character",
        Content = "Scripts That Toggle With Your Character"
    })
    
player = game.Players.LocalPlayer
character = player.Character or player.CharacterAdded:Wait()
noclipEnabled = false -- Track noclip state

function setCollisions(enabled)
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = not enabled
        end
    end
end

function toggleNoclip(value)
    noclipEnabled = value
    setCollisions(noclipEnabled)
end

-- Create the toggle
Toggle = Tabs.Play:AddToggle("ToggleNoclip", {Title = "Noclip", Default = false })

Toggle:OnChanged(function(value)
    toggleNoclip(value)
    if value then
        while noclipEnabled do
            wait(0.1) -- Keep disabling collisions while noclip is enabled
            setCollisions(noclipEnabled)
        end
    end
end)

Options.ToggleNoclip:SetValue(false) -- Set default toggle state to off

-- Optional: Reset collision when character respawns
character.AncestryChanged:Connect(function(_, parent)
    if not parent then
        wait() -- Wait for the character to be fully re-added
        character = player.Character or player.CharacterAdded:Wait() -- Update character reference
        setCollisions(noclipEnabled) -- Reset collision state
    end
end)
    
    Tabs.Play:AddButton({
        Title = "No Stun",
        Description = "Removes Slows And Freezes While Using Moves\n(Dissapears On Death)",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/AntiStun"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Play:AddButton({
        Title = "No Ragdoll",
        Description = "Attempts To Make You Unable To Be Ragdolled\n(Dissapears On Death)",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/AntiRagdoll"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Play:AddParagraph({
        Title = "Animations",
        Content = "Scripts That Plays Animations"
    })
    
    Tabs.Play:AddButton({
        Title = "Animation GUI",
        Description = "Makes A GUI Where You Can Play Animations\n(Dissapears On Death)",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/AnimationGui"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Play:AddParagraph({
        Title = "Tools",
        Content = "Scripts That Gives Tools Which Plays Animations"
    })
    --tool script here 
    Tabs.Play:AddButton({
        Title = "Preys Peril Tool",
        Description = "Gives A Tool Which Plays Preys Peril Animation",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/PreysPerilTool"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Play:AddButton({
        Title = "Split Second Counter Tool",
        Description = "Gives A Tool Which Plays Split Second Counter Animation",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/SSCTool"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Play:AddButton({
        Title = "Death Blow Tool",
        Description = "Gives A Tool Which Plays Death Blow Animation",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/DeathBlowTool"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Play:AddButton({
        Title = "Serious Punch Tool",
        Description = "Gives A Tool Which Plays Serious Punch Animation",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/SeriousPunchTool"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Play:AddButton({
        Title = "Table Flip Tool",
        Description = "Gives A Tool Which Plays Table Flip Animation",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/TableFlipTool"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Play:AddButton({
        Title = "Omni Directional Punches Tool",
        Description = "Gives A Tool Which Plays Omni Directional Punches Animation",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/OmniTool"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Map:AddParagraph({
        Title = "Remover",
        Content = "Scripts That Remove Certain Parts Of The Map"
    })
    
    -- Function to set transparency and collision for parts
function setTransparencyAndCollision(model, transparency, canCollide)
    for _, part in ipairs(model:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Transparency = transparency
            part.CanCollide = canCollide
        end
    end
end

walls = game.Workspace.Map:FindFirstChild("Walls")
grassTop = game.Workspace.Map:FindFirstChild("GrassTop")
tunnel1 = game.Workspace.Map:FindFirstChild("Tunnel")
tunnel2 = game.Workspace.Map:FindFirstChild("Tunnel")
part1 = game.Workspace.Map:FindFirstChild("Part")
part2 = game.Workspace.Map:FindFirstChild("Part")

-- Function to toggle parts' transparency and collision
function toggleParts(isEnabled)
    local transparency = isEnabled and 1 or 0
    local canCollide = not isEnabled
    
    if walls then setTransparencyAndCollision(walls, transparency, canCollide) end
    if grassTop then setTransparencyAndCollision(grassTop, transparency, canCollide) end
    if tunnel1 then setTransparencyAndCollision(tunnel1, transparency, canCollide) end
    if tunnel2 then setTransparencyAndCollision(tunnel2, transparency, canCollide) end
    if part1 then setTransparencyAndCollision(part1, transparency, canCollide) end
    if part2 then setTransparencyAndCollision(part2, transparency, canCollide) end
end

-- UI Toggle Setup
Toggle = Tabs.Map:AddToggle("NoWallsNew", {Title = "No Walls", Default = false })

-- When the toggle value changes, toggle the parts' properties
Toggle:OnChanged(function()
    local toggleValue = Options.NoWallsNew.Value
    toggleParts(toggleValue)
end)

-- Set the initial value to false (in case needed)
Options.NoWallsNew:SetValue(false)
    
    Tabs.Tele:AddParagraph({
        Title = "Locations",
        Content = "Scripts That Teleport You To Certain Positions"
    })
    
-- Mapping location names to coordinates
teleportLocations = {
    ["Spawn 1"] = Vector3.new(220, 440, -7),
    ["Spawn 2"] = Vector3.new(57, 440, 6),
    ["Spawn 3"] = Vector3.new(381, 441, -70),
    ["Spawn 4"] = Vector3.new(-65, 441, 90),
    ["Spawn 5"] = Vector3.new(-38, 441, -112),
    ["Spawn 6"] = Vector3.new(90, 441, 269),
    ["Spawn 7"] = Vector3.new(212, 441, -241),
    ["Spawn 8"] = Vector3.new(371, 441, 145),
    ["Dummy Spawn Location"] = Vector3.new(149, 440, 31),
    ["Mountain 1"] = Vector3.new(-4, 652, -369),
    ["Mountain 2"] = Vector3.new(304, 671, 395),
    ["Mountain 3"] = Vector3.new(-305, 641, 227),
    ["Regular Map Corner 1"] = Vector3.new(48, 441, 490),
    ["Regular Map Corner 2"] = Vector3.new(-230, 440, -236),
    ["Regular Map Corner 3"] = Vector3.new(233, 441, -446),
    ["Regular Map Corner 4"] = Vector3.new(520, 440, 293),
    ["Beach"] = Vector3.new(723, 440, -218),
    ["Crab"] = Vector3.new(395, 440, -587),
    ["Dock"] = Vector3.new(928, 445, -273),
    ["Waterfall Bottom"] = Vector3.new(1018, 442, -692),
    ["Waterfall Top"] = Vector3.new(1153, 816, -793),
    ["Beach Map Corner 1"] = Vector3.new(1231, 442, 408),
    ["Beach Map Corner 2"] = Vector3.new(768, 442, -1137),
    ["Outside / Lonely Area 1"] = Vector3.new(-209, 439, 431),
    ["Outside / Lonely Area 2"] = Vector3.new(-132, 439, -357),
    ["Death Counter Room"] = Vector3.new(-64, 29, 20335),
    ["Atomic Slash Room"] = Vector3.new(1064, 131, 23006),
    ["Lower Baseplate"] = Vector3.new(1074, 19, 23143),
    ["Upper Baseplate"] = Vector3.new(1087, 406, 23052),
}

-- Variable to store the selected location
selectedLocation = "Spawn 1"  -- Default selection

-- Create Dropdown for location selection
Dropdown = Tabs.Tele:AddDropdown("TpLocation", {
    Title = "Locations",
    Values = {"Upper Baseplate","Lower Baseplate","Atomic Slash Room","Death Counter Room","Outside / Lonely Area 2","Outside / Lonely Area 1","Beach Map Corner 2","Beach Map Corner 1","Waterfall Top","Waterfall Bottom","Dock","Crab","Beach","Regular Map Corner 4","Regular Map Corner 3","Regular Map Corner 2","Regular Map Corner 1","Mountain 3","Mountain 2","Mountain 1","Dummy Spawn Location","Spawn 8","Spawn 7","Spawn 6","Spawn 5","Spawn 4","Spawn 3","Spawn 2","Spawn 1"},
    Multi = false,
    Default = 1,
})

Dropdown:SetValue("Spawn 1")  -- Set initial dropdown value

-- Update selectedLocation when dropdown changes
Dropdown:OnChanged(function(Value)
    selectedLocation = Value  -- Store selected value in variable
    print("loc?:", selectedLocation)
end)

-- Create Teleport Button
Tabs.Tele:AddButton({
    Title = "Teleport",
    Description = "Teleport To A Selected Location",
    Callback = function()
        -- Open dialog asking for confirmation
        Window:Dialog({
            Title = "Confirm Teleport",
            Content = "Do you want to teleport to the selected location?",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        player = game.Players.LocalPlayer
                        character = player.Character or player.CharacterAdded:Wait()
                        hrp = character:FindFirstChild("HumanoidRootPart")

                        -- Teleport the player using selectedLocation variable
                        if hrp and teleportLocations[selectedLocation] then
                            hrp.CFrame = CFrame.new(teleportLocations[selectedLocation])
                            print("tped to?", selectedLocation)
                        else
                            print("null invalid location")
                        end
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Teleport cancelled.")
                    end
                }
            }
        })
    end
})
    
    Tabs.Tele:AddParagraph({
        Title = "GUI",
        Content = "Scripts That Help You Check Your Coordinates"
    })
    
    Tabs.Tele:AddButton({
        Title = "Position Displayer",
        Description = "Makes A Gui Showing Your Current Position",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                                  --Position Displayer By RXScripter It's Obfuscated--
loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/main/posdisplayer"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Misc:AddParagraph({
        Title = "Server",
        Content = "Scripts That Do Something Related To The Server"
    })
    
    Tabs.Misc:AddButton({
        Title = "Rejoin",
        Description = "Rejoin The Server",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Misc:AddButton({
        Title = "Console",
        Description = "Opens The Logs",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            game:GetService("StarterGui"):SetCore("DevConsoleVisible",true)
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    Tabs.Misc:AddParagraph({
        Title = "Game",
        Content = "Scripts That Do Something Related To Your Game"
    })
    
    Tabs.Misc:AddButton({
        Title = "FPS Boost",
        Description = "Makes The Game Low Quality To Boost Fps",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/FpsBoost"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
    local Input = Tabs.Misc:AddInput("FovAmt", {
        Title = "Fov",
        Default = "",
        Placeholder = "Amount Here",
        Numeric = true, -- Only allows numbers
        Finished = true, -- Only calls callback when you press enter
        Callback = function(Value)
            -- Set the desired FOV value
wantedforgamingFOV = (Value)  -- Change this to whatever FOV value you want

-- Get the local player's Camera
camera = game:GetService("Workspace").CurrentCamera

-- Set the Camera's Field of View
camera.FieldOfView = wantedforgamingFOV
        end
    })
    
    Tabs.Misc:AddParagraph({
        Title = "Destroyer",
        Content = "Scripts That Destroys Your Gameplay"
    })
    
player = game.Players.LocalPlayer
character = player.Character
humanoid = character:FindFirstChild("Humanoid")

-- Define your death functions
deathFunctions = {
    function() player:Kick("\nYou Died...\nHow Unfortunate...") end,
    function() player:Kick("\nPathetic...") end,
    function() player:Kick("\nYou Have Died...") end,
    function() player:Kick("\nHow Bad Are You?") end,
    function() player:Kick("\nShould Have Played Safe...") end,
    function() player:Kick("\nOh You Died Welp Nice Try") end,
    function() player:Kick("\nMSG FROM CREATOR THE KEY FOR NEXT UPDATE IS\n\nnah jk") end,
    function() player:Kick("\n...") end,
    function() player:Kick("\nBad Luck..,") end,
    function() player:Kick("\nHow Weak...") end,
}

-- UI library toggle
Toggle = Tabs.Misc:AddToggle("KickOnDeath", {Title = "Kick On Death", Default = false })
Toggle:OnChanged(function(value)
    if value then
        -- Enable KickOnDeath
        humanoid.HealthChanged:Connect(function(health)
            if health <= 0 then
                randomFunctionIndex = math.random(1, #deathFunctions)
                deathFunction = deathFunctions[randomFunctionIndex]
                deathFunction()
            end
        end)
    else
        -- Disable KickOnDeath
        humanoid.HealthChanged:Disconnect(function(health)
            if health <= 0 then
                randomFunctionIndex = math.random(1, #deathFunctions)
                deathFunction = deathFunctions[randomFunctionIndex]
                deathFunction()
            end
        end)
    end
end)

    Tabs.Misc:AddButton({
        Title = "Suicide",
        Description = "A Script Which Makes You Select To Ban Yourself",
        Callback = function()
            Window:Dialog({
                Title = "Execute Script?",
                Content = "Y/N",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/BanScript"))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    
-- END
  
-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("RXGUI")
SaveManager:SetFolder("RXGUI/the-strongest-battlegrounds")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "Add Credits",
    Content = "If You Are Ever Showcasing RX GUI On A Social Platform.",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
end