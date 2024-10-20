--[[
	Module by @mrNugget34284320 (in Roblox)
			--Functions:--
	Library:SetFrameSize(Object Frame, UDim2 Size)
				------------
		--I hate people who steals my scripts and edits credits on the script.
]]

local Library = {}

local Players = game:GetService'Players'
local Player = Players.LocalPlayer
local UserInput = game:GetService'UserInputService'

local GuiParent: Parent = game.CoreGui or Player.PlayerGui

Library.LocalLibrary = Instance.new("ScreenGui")
Library.LocalLibrary.Parent = GuiParent
Library.LocalLibrary.Name = Player.Name .. "'s Library Gui"

if GuiParent == nil then 
	Library:DestroyLibrary()
	error("The library's parent is not nil or doesn't exist!")
end

function Library:CreateFrame(Name: string?)
	local AllowedToStart = true
	local FrameTouched = false
	
	local Frame = Instance.new("Frame", Library.LocalLibrary)
	Frame.Name = Name
	Frame.Size = UDim2.new(0, 0, 0, 0)
	Frame.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
	
	if AllowedToStart then 
		wait(0.19)
		Frame:TweenSize(UDim2.new(0, 461,0, 350)) 
	else 
		Frame.Size = UDim2.new(0, 461,0, 350) 
	end
	Frame.Position = UDim2.new(0.272, 0,0.336, 0)
	
	local ThisInput
	
	Frame.InputBegan:Connect(function(Input)
		FrameTouched = true
		ThisInput = Input
		if Input.UserInputType ~= Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch and FrameTouched then
			local StartPosition = Frame.Position
			local EndPosition = Input.Position
			local Position = EndPosition - EndPosition
			Frame.Position = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + EndPosition.X, StartPosition.Y.Scale, StartPosition.Y.Offset + EndPosition.Y)
		end
	end)
	
	Frame.Changed:Connect(function()
		if ThisInput.UserInputState == Enum.UserInputState.End then
			FrameTouched = false
		end
	end)
end


function Library:DestroyLibrary()
	wait(0.25)
	Library.LocalLibrary:Destroy()
end

return Library
