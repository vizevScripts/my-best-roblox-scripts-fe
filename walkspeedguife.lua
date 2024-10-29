-- Gui to Lua
-- Version: 3.2

-- Instances:

local SpeedChangerGuibyVizev = Instance.new("ScreenGui")
local ThisImage = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local Speed = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local Confirm = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Close = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Open = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

local nyan = Instance.new("Sound", SpeedChangerGuibyVizev)
nyan.SoundId = "rbxassetid://9067256917"
nyan.Looped = true
nyan:Play()

--Properties:

SpeedChangerGuibyVizev.Name = "Speed Changer Gui by Vizev"
SpeedChangerGuibyVizev.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SpeedChangerGuibyVizev.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ThisImage.Name = "ThisImage"
ThisImage.Parent = SpeedChangerGuibyVizev
ThisImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ThisImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
ThisImage.BorderSizePixel = 0
ThisImage.Position = UDim2.new(0.210597828, 0, 0.371638149, 0)
ThisImage.Size = UDim2.new(0, 525, 0, 374)
ThisImage.Image = "rbxassetid://935105946"
ThisImage.Active = true
ThisImage.Draggable = true

UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = ThisImage

Speed.Name = "Speed"
Speed.Parent = ThisImage
Speed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Speed.BackgroundTransparency = 0.500
Speed.BorderColor3 = Color3.fromRGB(0, 0, 0)
Speed.BorderSizePixel = 0
Speed.Position = UDim2.new(0.28952381, 0, 0.451871663, 0)
Speed.Size = UDim2.new(0, 200, 0, 50)
Speed.Font = Enum.Font.Arial
Speed.PlaceholderColor3 = Color3.fromRGB(255, 0, 0)
Speed.Text = ""
Speed.TextColor3 = Color3.fromRGB(0, 0, 0)
Speed.TextScaled = true
Speed.TextSize = 36.000
Speed.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 16)
UICorner_2.Parent = Speed

Confirm.Name = "Confirm"
Confirm.Parent = ThisImage
Confirm.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
Confirm.BorderColor3 = Color3.fromRGB(0, 0, 0)
Confirm.BorderSizePixel = 0
Confirm.Position = UDim2.new(0.28952381, 0, 0.745989323, 0)
Confirm.Size = UDim2.new(0, 200, 0, 50)
Confirm.Font = Enum.Font.Arial
Confirm.Text = "CONFIRM"
Confirm.TextColor3 = Color3.fromRGB(85, 255, 0)
Confirm.TextScaled = true
Confirm.TextSize = 14.000
Confirm.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 63)
UICorner_3.Parent = Confirm

Close.Name = "Close"
Close.Parent = ThisImage
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 0.700
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.807619035, 0, 0.0320855603, 0)
Close.Size = UDim2.new(0, 82, 0, 37)
Close.Font = Enum.Font.Arial
Close.Text = "Close"
Close.TextColor3 = Color3.fromRGB(85, 255, 0)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 110)
UICorner_4.Parent = Close

Open.Name = "Open"
Open.Parent = SpeedChangerGuibyVizev
Open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Open.BackgroundTransparency = 0.700
Open.BorderColor3 = Color3.fromRGB(0, 0, 0)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(-2.08169022e-05, 0, 0.59321022, 0)
Open.Size = UDim2.new(0, 82, 0, 37)
Open.Font = Enum.Font.Arial
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(85, 255, 0)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 110)
UICorner_5.Parent = Open

local function TTKY_fake_script() -- Close.Script 
	local script = Instance.new('Script', Close)

	script.Parent.MouseButton1Click:Connect(function()
		ThisImage.Visible = false
		local ny = nyan
		ny:Pause()
	end)
end
coroutine.wrap(TTKY_fake_script)()

local function XHZUC_fake_script() -- SpeedChangerGuibyVizev.LocalScript 
	local script = Instance.new('LocalScript', SpeedChangerGuibyVizev)

	function NOTIFY(title, text, icon, time)
		return game.StarterGui:SetCore("SendNotification", {
			Title = title;
			Text = text;
			Icon = icon;
			Duration = time
		})
	end
	
	local Humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	
	NOTIFY("Vizev made this :O", "https://creations.mtdv.me/click-for-information-","rbxassetid://18690228161",110)
	
	local thisImage = script.Parent.ThisImage
	local speedBox = thisImage.Speed
	local confirm = thisImage.Confirm
	
	game.StarterGui:SetCore("DevConsoleVisible", true)

	warn'made by vizev!'
end
coroutine.wrap(XHZUC_fake_script)()
local function IVKEGP_fake_script() -- SpeedChangerGuibyVizev.LocalScript 
	local script = Instance.new('LocalScript', SpeedChangerGuibyVizev)

	local thisImage = script.Parent.ThisImage
	local speedBox = thisImage.Speed
	local confirm = thisImage.Confirm
	
	local Humanoid = game.Players.LocalPlayer.Character.Humanoid
	
	confirm.MouseButton1Click:Connect(function()
		local Speed = tonumber(speedBox.Text)
		
		Humanoid.WalkSpeed = Speed
	end)
end
coroutine.wrap(IVKEGP_fake_script)()
local function ERDPVLS_fake_script() -- Open.Script 
	local script = Instance.new('Script', Open)

	script.Parent.MouseButton1Click:Connect(function()
		SpeedChangerGuibyVizev.ThisImage.Visible = true
		local ny = nyan
		ny:Resume()
	end)
end
coroutine.wrap(ERDPVLS_fake_script)()
