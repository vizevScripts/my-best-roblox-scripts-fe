--[[
 ___  ____  ____      ____  __  __  _  _ 
/ __)(_  _)(_  _)    (  _ \(  )(  )( \( )
\__ \ _)(_   )(       )   / )(__)(  )  ( 
(___/(____) (__)     (_)\_)(______)(_)\_)
	-Scripted by Vizev (@mrNugget34284320 in Roblox)-
		-For Doge Hub-
]]

local DogeHub = {}

DogeHub["Local Player"] = game:GetService'Players'.LocalPlayer
DogeHub["Local Character"] = DogeHub["Local Player"].Character

repeat wait(0.3)
	local Humanoid = DogeHub["Local Character"]:FindFirstChildOfClass'Humanoid'
	Humanoid.WalkSpeed = 20
	Humanoid.JumpPower = 1
	Humanoid.Sit = true
	wait(0.3)
	Humanoid.Sit = false
until DogeHub["Local Character"]:FindFirstChildOfClass'Humanoid'.Health == 0
