--[[
	Module by @mrNugget34284320 (in Roblox)
			--Functions:--
	--Notification:CreateNotification(string Title, string Text, Duration)
	--
				------------
		--I hate people who steals my scripts and edits credits on the script.
]]

local Start = false

local Notification = {}

local Player = game:GetService'Players'.LocalPlayer
local PlayerGui = Player.PlayerGui 

local ThisNotificationGui = Instance.new('ScreenGui')

if ThisNotificationGui then
	ThisNotificationGui.Parent = game.CoreGui or PlayerGui
end

ThisNotificationGui.Name = Player.Name .. "'s Notification Gui!"

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 26)

local NotificationGui = ThisNotificationGui
local NotificationFrame
local NotificationTitle
local NotificationText

local FolderOfSounds = Instance.new("Folder", ThisNotificationGui)
FolderOfSounds.Name = "Folder of Sounds"
local WarningSound = Instance.new("Sound", FolderOfSounds)
WarningSound.SoundId = "rbxassetid://139761494230828"
WarningSound.Volume = .5
local NotificationSound = Instance.new("Sound", FolderOfSounds)
NotificationSound.SoundId = "rbxassetid://131661992591924"
NotificationSound.Volume = 5

function Notification:CreateNotification(Title: string?, Text: string?, Duration)
	local Notice = {}
	local SoundType = "Warning"
	
	function Notice:StartNotification()
		local Frame = Instance.new('Frame', ThisNotificationGui)
		Frame.Name = Player.Name.."'s Notification"
		Frame.Size = UDim2.new(0, 454,0, 88)
		Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		Frame.Position = UDim2.new(-0.607, 0,0.008, 0)

		local text = Instance.new("TextLabel", Frame)
		text.Name = "Text"
		text.BackgroundTransparency = 1
		text.Position = UDim2.new(0.026, 0,0.496, 0)
		text.TextScaled = true
		text.Size = UDim2.new(0, 419,0, 38)
		text.TextColor3 = Color3.fromRGB(0, 0, 0)
		text.Text = "Text"

		local title = Instance.new("TextLabel", Frame)
		title.Name = "Title"
		title.BackgroundTransparency = 1
		title.Position = UDim2.new(0.026, 0,0.064, 0)
		title.TextScaled = true
		title.Size = UDim2.new(0, 419,0, 38)
		title.TextColor3 = Color3.fromRGB(0, 0, 0)
		title.Text = "Title"
		
		if SoundType == "Warning" then
			WarningSound:Play()
		elseif SoundType == "Notification" then
			NotificationSound:Play()
		end

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

		Start = false
	end
	
	function Notice:SetNotificationSound(NoticeSoundType)
		if NoticeSoundType == "Warning" then
			SoundType = "Warning"
		elseif NoticeSoundType == "Notification" then
			SoundType = "Notification"
		end
	end
	
	return Notice
end

print([[
	UPDATED! v0.3
	Made by mrNugget34284320
]])

return Notification
