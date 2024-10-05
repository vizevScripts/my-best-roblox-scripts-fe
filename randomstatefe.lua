--[[
NOTICE: MADE BY VIZEV
ALL SCRIPTS ARE MINE!
		-FE Random State-
]]
local Humanoid = game.Players.LocalPlayer.Character.Humanoid

local Enumes = Enum.HumanoidStateType:GetEnumItems()

local RandomState = Enumes[math.random(1, #Enumes)]

Humanoid:ChangeState(RandomState)
