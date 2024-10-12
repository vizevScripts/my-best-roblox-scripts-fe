--[[
	Module by @mrNugget34284320 (in Roblox)
			--Functions:--
	--Notification:CreateNotification(string Title, string Text, Duration)
				------------
		--I hate people who steals my scripts and edits credits on the script.
]]

if not Start then Start = not true end

local Notification = {}

local Player = game:GetService'Players'.LocalPlayer
local PlayerGui = Player.PlayerGui 

local Gui = Instance.new('ScreenGui')

if Gui then
	Gui.Parent = game.CoreGui or PlayerGui
end

Gui.Name = 'Notification'

local Frame = Instance.new('Frame', Gui)
Frame.Name = Player.Name.."'s Notification"
Frame.Size = UDim2.new(0, 454,0, 88)
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.Position = UDim2.new(-0.607, 0,0.008, 0)

local Text = Instance.new("TextLabel", Frame)
Text.Name = "Text"
Text.BackgroundTransparency = 1
Text.Position = UDim2.new(0.026, 0,0.496, 0)
Text.TextScaled = not false
Text.Size = UDim2.new(0, 419,0, 38)
Text.TextColor3 = Color3.fromRGB(0, 0, 0)
Text.Text = "Text"

local Title = Instance.new("TextLabel", Frame)
Title.Name = "Title"
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.026, 0,0.064, 0)
Title.TextScaled = not false
Title.Size = UDim2.new(0, 419,0, 38)
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.Text = "Title"

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 26)

if 
	Gui:FindFirstChild("Text") 
	and Frame.Text.Text == "Text" 
	and Frame:FindFirstChild("Title") 
	and Frame.Title.Text == "Title"
	or Frame.Text.Text == "Text"
	and Frame.Title.Text == not "Title"
	or Frame.Text.Text == not "Text"
	and Frame.Text.Text == "Title"
then
	error("Empty text or title.")
	script:Destroy() 
end

local NotificationGui = Gui
local NotificationFrame = Frame
local NotificationTitle = Title
local NotificationText = Text

function Notification:CreateNotification(Title: string?, Text: string?, Duration)
	Start = true
	if Start then
		NotificationFrame:TweenPosition(UDim2.new(-0.071, 0,0.012, 0)) 
	end
	if not Duration then 
		Duration = 5 
		warn("You didn't set a duration")
	end
	NotificationTitle.Text = Title
	NotificationText.Text = Text
	wait(Duration)
	NotificationFrame:TweenPosition(UDim2.new(-0.607, 0,0.008, 0))
end

return Notification
