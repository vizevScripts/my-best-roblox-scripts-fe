--//--------------------------------\\
--|| For R6/R15 Rigs.   ||--
--\\________________// Made by Me (@mrNugget34284320) Version 0.1

local Player = game:GetService('Players').LocalPlayer:: Player -- // Own Player (You)
local Character = Player.Character -- // Player's Character
local Mouse = Player:GetMouse() -- // Player's Mouse
local HrP = Character:FindFirstChild('HumanoidRootPart')
local Camera = workspace.CurrentCamera -- // Player's Camera

local Flying: boolean = false

local BodyV = Instance.new('BodyVelocity', HrP)

BodyV.Velocity = Vector3.new(0, 0, 0)
BodyV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)

local BodyG = Instance.new('BodyGyro', HrP)

BodyG.CFrame = CFrame.new(15, 15, 15)
BodyG.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)

BodyG.D = 999
BodyG.P = 3990

Mouse.KeyDown:Connect(function(Key)
	Key = Key:lower()
	if Key == "w" or Key == "a" or Key == "s" or Key == "d" and not Flying then
		Flying = true
		
		while Flying do
			wait()
			
			HrP.Anchored = false

			BodyV.Velocity = Camera.CFrame.LookVector * Character:FindFirstChildOfClass('Humanoid').WalkSpeed
			BodyG.CFrame = Camera.CFrame
		end
	end
end)

Mouse.KeyUp:Connect(function(Key)
	Key = Key:lower()
	
	if Key == "w" or Key == "a" or Key == "s" or Key == "d" and Flying then
		Flying = false
		
		while not Flying do
			wait()
			
			HrP.Anchored = true
		end
	end
end)
