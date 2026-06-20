--[[
NOTICE: MADE BY ISLAM (@mrNugget34284320)
ALL SCRIPTS ARE MINE!
		-FE Random State-
]]

local Looped = false

local Player = game:GetService("Players").LocalPlayer
local PlayerCharacter = Player.Character or Player.CharacterAdded:Wait()
local CharacterHumanoid = PlayerCharacter:FindFirstChildOfClass("Humanoid") 

local function PlayRandomState()
	if Player and PlayerCharacter and CharacterHumanoid and CharacterHumanoid.Health > 0 then
		local Enumes = Enum.HumanoidStateType:GetEnumItems()
		local RandomState = Enumes[math.random(1, #Enumes)]
		CharacterHumanoid:ChangeState(RandomState)
	end
end

while wait() do
	if Looped then
		PlayRandomState()
	else
		PlayRandomState()
		break
	end
end
