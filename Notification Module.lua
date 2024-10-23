--[[
	Module by @mrNugget34284320 (in Roblox)
			--Functions:--
	--Notification:CreateNotification(string Title, string Text, Duration)
				------------
		--I hate people who steals my scripts and edits credits on the script.
]]

print([[
	UPDATED! v0.2
	Made by mrNugget34284320
]])

local CanPrintGood = false
local Alone = false

if not Start then Start = not true end

local Notification = {}

local Player = game:GetService'Players'.LocalPlayer
local PlayerGui = Player.PlayerGui 

local ThisNotificationGui = Instance.new('ScreenGui')

if ThisNotificationGui then
	ThisNotificationGui.Parent = game.CoreGui or PlayerGui
end

ThisNotificationGui.Name = Player.Name .. "'s Notification Gui!"

local function GetMaxPlayers()
	if game:GetService'Players'.MaxPlayers == 1 then
		warn('Are you alone?')
		Alone = true
		CanPrintGood = false
	else
		print('Good!')
		Alone = false
		CanPrintGood = true
	end
end

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 26)

local function ShutdownGame()
	game.shutdown(game)
end

local NotificationGui = ThisNotificationGui
local NotificationFrame
local NotificationTitle
local NotificationText

function Notification:CreateNotification(Title: string?, Text: string?, Duration)
	local Frame = Instance.new('Frame', ThisNotificationGui)
	Frame.Name = Player.Name.."'s Notification"
	Frame.Size = UDim2.new(0, 454,0, 88)
	Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Frame.Position = UDim2.new(-0.607, 0,0.008, 0)

	local text = Instance.new("TextLabel", Frame)
	text.Name = "Text"
	text.BackgroundTransparency = 1
	text.Position = UDim2.new(0.026, 0,0.496, 0)
	text.TextScaled = not false
	text.Size = UDim2.new(0, 419,0, 38)
	text.TextColor3 = Color3.fromRGB(0, 0, 0)
	text.Text = "Text"

	local title = Instance.new("TextLabel", Frame)
	title.Name = "Title"
	title.BackgroundTransparency = 1
	title.Position = UDim2.new(0.026, 0,0.064, 0)
	title.TextScaled = not false
	title.Size = UDim2.new(0, 419,0, 38)
	title.TextColor3 = Color3.fromRGB(0, 0, 0)
	title.Text = "Title"
	
	Start = true

	NotificationFrame = Frame
	NotificationText = text
	NotificationTitle = title

	UICorner.Parent = Frame

	if Start then
		NotificationFrame:TweenPosition(UDim2.new(-0.071, 0,0.012, 0)) 
	end

	if not Duration then 
		Duration = 5 
		warn("You didn't set a duration")
	end

	if Duration < 0.01 then NotificationGui:Destroy() end

	NotificationTitle.Text = Title
	NotificationText.Text = Text

	wait(Duration)

	NotificationFrame:TweenPosition(UDim2.new(-0.607, 0,0.008, 0))
end

spawn(function()
	repeat
		wait(0.3)
		GetMaxPlayers()
		if Alone == true then Alone = false break end
		if CanPrintGood == true then CanPrintGood = false break end
	until wait()
end)

return Notification
