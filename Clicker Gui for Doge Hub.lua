--Made by vizev_c00l or mrNugget34284320 (Vizev's Accounts in Roblox). Plus Used Plugin: Gui To Lua.
--Made for Doge Hub.

local ClickerGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local DogeHubIcon = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local WindowName = Instance.new("TextLabel")
local ClicksCounter = Instance.new("TextLabel")
local MainClicker = Instance.new("ImageButton")
local CongratsImage = Instance.new("ImageLabel")

ClickerGui.Name = "Clicker Gui"
ClickerGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ClickerGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ClickerGui
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 159, 239)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.0497512445, 0, 0.152811736, 0)
MainFrame.Size = UDim2.new(0, 511, 0, 377)

UICorner.CornerRadius = UDim.new(0, 26)
UICorner.Parent = MainFrame

Frame.Parent = MainFrame
Frame.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(0, 511, 0, 56)

UICorner_2.CornerRadius = UDim.new(0, 26)
UICorner_2.Parent = Frame

DogeHubIcon.Name = "DogeHubIcon"
DogeHubIcon.Parent = Frame
DogeHubIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DogeHubIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
DogeHubIcon.BorderSizePixel = 0
DogeHubIcon.Position = UDim2.new(0.0352250487, 0, 0, 0)
DogeHubIcon.Size = UDim2.new(0, 58, 0, 56)
DogeHubIcon.Image = "rbxassetid://1168967955"

UICorner_3.CornerRadius = UDim.new(0, 16)
UICorner_3.Parent = DogeHubIcon

WindowName.Name = "WindowName"
WindowName.Parent = Frame
WindowName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WindowName.BackgroundTransparency = 1.000
WindowName.BorderColor3 = Color3.fromRGB(0, 0, 0)
WindowName.BorderSizePixel = 0
WindowName.Position = UDim2.new(0.148727998, 0, 0.0535714291, 0)
WindowName.Size = UDim2.new(0, 233, 0, 50)
WindowName.Font = Enum.Font.Code
WindowName.Text = "clicker.exe"
WindowName.TextColor3 = Color3.fromRGB(0, 0, 0)
WindowName.TextScaled = true
WindowName.TextSize = 14.000
WindowName.TextWrapped = true

ClicksCounter.Name = "ClicksCounter"
ClicksCounter.Parent = Frame
ClicksCounter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClicksCounter.BackgroundTransparency = 1.000
ClicksCounter.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClicksCounter.BorderSizePixel = 0
ClicksCounter.Position = UDim2.new(0.0352250487, 0, 6.0070715, 0)
ClicksCounter.Size = UDim2.new(0, 234, 0, 32)
ClicksCounter.Font = Enum.Font.SourceSans
ClicksCounter.Text = "Clicks Count"
ClicksCounter.TextColor3 = Color3.fromRGB(0, 0, 0)
ClicksCounter.TextScaled = true
ClicksCounter.TextSize = 14.000
ClicksCounter.TextWrapped = true

MainClicker.Name = "MainClicker"
MainClicker.Parent = Frame
MainClicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainClicker.BackgroundTransparency = 1.000
MainClicker.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainClicker.BorderSizePixel = 0
MainClicker.Position = UDim2.new(0.0939334631, 0, 1.64854109, 0)
MainClicker.Size = UDim2.new(0, 58, 0, 57)
MainClicker.Image = "rbxassetid://8408806737"

CongratsImage.Name = "CongratsImage"
CongratsImage.Parent = Frame
CongratsImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CongratsImage.BackgroundTransparency = 1.000
CongratsImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
CongratsImage.BorderSizePixel = 0
CongratsImage.Position = UDim2.new(0.0352250487, 0, 6.73214293, 0)
CongratsImage.Size = UDim2.new(0, 462, 0, 0)
CongratsImage.Image = "rbxassetid://4602279031"

-- Scripts:

local function EKISIC_fake_script() -- ClicksCounter.LocalScript 
	local script = Instance.new('LocalScript', ClicksCounter)

	while wait() do
		local Clicks = script.Parent.Parent.Parent.Clicks

		local Text = script.Parent

		Text.Text = 'Clicks Count: ' .. Clicks.Value
	end
end
coroutine.wrap(EKISIC_fake_script)()
local function XFAT_fake_script() -- MainClicker.LocalScript 
	local script = Instance.new('LocalScript', MainClicker)

	local Clicks = script.Parent.Parent.Parent.Clicks
	local Button = script.Parent

	Button.MouseButton1Click:Connect(function()
		Clicks.Value = Clicks.Value + 1

		local ClickSound = Instance.new('Sound')
		ClickSound.Name = 'Click'
		ClickSound.SoundId = 'rbxassetid://452267918'
		ClickSound.Volume = 10
		ClickSound:Play()

		wait(ClickSound.TimeLength)

		ClickSound:Destroy()

		if Clicks.Value == 100 
			or Clicks.Value == 200 
			or Clicks.Value == 300 
			or Clicks.Value == 400
			or Clicks.Value == 500 
			or Clicks.Value == 600 
			or Clicks.Value == 700 
			or Clicks.Value == 800 
			or Clicks.Value == 900 
			or Clicks.Value == 1000 
		then
			print('Congrats!')
			script.Parent.Parent.CongratsImage:TweenSize(UDim2.new(0, 462, 0, -346))
			wait(3)
			script.Parent.Parent.CongratsImage:TweenSize(UDim2.new(0, 462, 0, 0))
		end
	end)

	while wait() do
		local random = math.random()
		Button:TweenPosition(UDim2.new(random, random, random, random))
	end
end

coroutine.wrap(XFAT_fake_script)()
