--[[Made by mrNugget34284320 (Islam)
	--Uploaded to Github.com--
	  --Infinite Jump FE--
]]

--Notice: Everyone can see the hacks, because it's FE script!

local Player = game:GetService("Players").LocalPlayer
local PlayerCharacter = Player.Character or Player.CharacterAdded:Wait()
local CharacterHumanoid = PlayerCharacter:FindFirstChildOfClass("Humanoid") 

local JumpCount = 0

while wait() do
	if Player and PlayerCharacter and CharacterHumanoid and CharacterHumanoid.Health > 0 then
		if CharacterHumanoid.Jump == true then
			JumpCount = JumpCount + 1
			if JumpCount > 0 then
				Humanoid.HipHeight = CharacterHumanoid.HipHeight + 1
			end	
		end
	end
end
