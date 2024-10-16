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



if not Start then Start = not true end

local Notification = {}

local Player = game:GetService'Players'.LocalPlayer
local PlayerGui = Player.PlayerGui 

local ThisNotificationGui = Instance.new('ScreenGui')

if ThisNotificationGui then
	ThisNotificationGui.Parent = game.CoreGui or PlayerGui
end

ThisNotificationGui.Name = Player.Name .. "'s Notification Gui!"

local Frame = Instance.new('Frame', ThisNotificationGui)
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

local thisTitle = Title.Text
local thisText = Text.Text

local function GetMaxPlayers()
	if game:GetService'Players'.MaxPlayers == 1 then
		warn('Are you alone?')
	else
		print('Good!')
	end
end

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 26)

local function ShutdownGame()
	game.shutdown(game)
end

if 
	not thisText and
	not thisTitle or 
	not thisTitle and 
	not thisText or 
	thisTitle and 
	not thisText or 
	thisText and 
	not thisTitle
then
	ShutdownGame()
end

local NotificationGui = ThisNotificationGui
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
	if Duration < 0.01 then NotificationGui:Destroy() end
	NotificationTitle.Text = Title
	NotificationText.Text = Text
	wait(Duration)
	NotificationFrame:TweenPosition(UDim2.new(-0.607, 0,0.008, 0))
end

spawn(function()
	while wait() do
		GetMaxPlayers()
	end
end)

return Notification
