--[[Made by mrNugget34284320 (Vizev)
	--Uploaded to Github.com--
	  --Infinite Jump FE--
]]

--Notice: Everyone can see the hacks, because it's FE script!

local Humanoid = game.Players.LocalPlayer.Character.Humanoid

local JumpCount = 0

while wait() do
	if Humanoid.Jump == true then
		JumpCount = JumpCount + 1
		if JumpCount > 0 then
			Humanoid.HipHeight = Humanoid.HipHeight + 1
		end	
	end
end
