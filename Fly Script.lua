--//--------------------------------\\
--|| For R6/R15 Rigs.   ||--
--\\________________// Made by Me (@mrNugget34284320) Version 0.1

local Player = game:GetService('Players').LocalPlayer:: Player
local Character = Player.Character
local HrP = Character:FindFirstChild('HumanoidRootPart')

local Camera = workspace.CurrentCamera

local Flying: boolean = false

local BodyV = Instance.new('BodyVelocity', HrP)

BodyV.Velocity = Vector3.new(0, 0, 0)
BodyV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)

local BodyG = Instance.new('BodyGyro', HrP)

BodyG.CFrame = CFrame.new(15, 15, 15)
BodyG.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
BodyG.P = 3990

local function GetWalkMagnitude()
	if Character:FindFirstChildOfClass('Humanoid').MoveDirection.Magnitude > 0 then
		return true
	end
	if Character:FindFirstChildOfClass('Humanoid').MoveDirection.Magnitude < 0.1 then
		return false
	end
end

Character:FindFirstChildOfClass('Humanoid').WalkSpeed = 27

while wait() do
	if GetWalkMagnitude() and not Flying then
		Flying = true
		
		if Flying then
			HrP.Anchored = false
			
			BodyV.Velocity = Camera.CoordinateFrame.LookVector * Character:FindFirstChildOfClass('Humanoid').WalkSpeed
			BodyG.CFrame = CFrame.new(55, 55, 55)
		end
	end
	
	if not GetWalkMagnitude() and Flying then
		Flying = false
		
		if not Flying then
			HrP.Anchored = true
		end
	end
end
