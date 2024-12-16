--//--------------------------------\\
--|| For R6/R15 Rigs.   ||--
--\\________________// Made by Me (@mrNugget34284320) Version 0.1
--Fling away EVERYONE with the spinner!

--[[
To stop the spinner:
_G.Spinning = false

To start spinning:
_G.Spinning = true
]]

local Player = game.Players.LocalPlayer:: Player --//Own Player (Your Player).
local Character = Player.Character

_G.Power = 10000 -- Recommended value: 1000 (much less than a huge value)

local Spinner = Instance.new('BodyThrust', Character.HumanoidRootPart)
Spinner.Location = Spinner.Parent.Position

if _G.Spinning and _G.Power > 1000 and Spinner.Force.X > 1000 and Spinner.Force.Z > 1000 then
	print('Be warning with the spinner. It can fling you away!')
end

while wait() do
	if _G.Spinning then
		Spinner.Force = Vector3.new(_G.Power, 0, _G.Power)
	else
		Spinner.Force = Vector3.new(0, 0, 0)
	end
end	

