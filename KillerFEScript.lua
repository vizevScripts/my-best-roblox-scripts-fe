--[[
	Coded by @mrNugget34284320 (Roblox)
	NOTICE: If the script has loaded, I recommend taking an item such as a knife or katana.
	Animations from Jeff The Killer Model.
]]
local function checkforrobloxstudio() local runInStudio=game:GetService("RunService"):IsStudio() if runInStudio then script.Disabled=true error("Please run this script with lua executor!")  end end checkforrobloxstudio()
local function checkforscripttype() local isClient=game:GetService("RunService"):IsClient() local isServer=game:GetService("RunService"):IsServer() if isClient and not isServer then return "Client" end if isServer and not isClient then return "Server" end end local scripttype=checkforscripttype() if scripttype=="Client" then print("You're running this script as a client script") else if scripttype=="Server" then print("You're running this script as a server script") end end
local players=game:GetService("Players")
local youplayer=players.LocalPlayer
local character=youplayer.Character
local playermouse=youplayer:GetMouse()
local function waitForCharacter() repeat wait() until character end
if not character then waitForCharacter() end
local humanoid=character:FindFirstChildOfClass("Humanoid")
local function waitForHumanoid() repeat wait() until humanoid end
if not humanoid then waitForHumanoid() end
local rootPart=character:FindFirstChild("HumanoidRootPart")
local function waitForRootPart() repeat wait() until rootPart end
if not rootPart then waitForRootPart() end
local function createAnimation(animationid) local animation=Instance.new("Animation") animation.AnimationId=animationid return animation end
local killeranimations={run=createAnimation("rbxassetid://252557606"),swing=createAnimation("rbxassetid://54584713")}
local runlikejeffthekilleranimation=humanoid:LoadAnimation(killeranimations.run)
local hitpunishjeffthekilleranimation=humanoid:LoadAnimation(killeranimations.swing)
local attacked=false
local function flingPlayer(player) if player and player.Character then local char=player.Character local charRootPart=player.Character:FindFirstChild("HumanoidRootPart") local bodyThrust=Instance.new("BodyThrust",rootPart) bodyThrust.Force=Vector3.new(math.huge,math.huge,math.huge) repeat wait() bodyThrust.Location=charRootPart.Position rootPart.Position=charRootPart.Position until charRootPart==nil attacked=false end end
local function rootParttouched(part) if part.Parent and players:GetPlayerFromCharacter(part.Parent) then local touchingplayer=players:GetPlayerFromCharacter(part.Parent) local touchedhumanoid=part.Parent:FindFirstChildOfClass("Humanoid") if touchedhumanoid and touchedhumanoid.Health>0 then if not attacked then attacked=true hitpunishjeffthekilleranimation:Play() wait(.9) hitpunishjeffthekilleranimation:Stop() flingPlayer(touchingplayer) end else attacked=false end end end rootPart.Touched:Connect(rootParttouched)
local function ifrunning(speed) if speed>0.2 then runlikejeffthekilleranimation:Play() runlikejeffthekilleranimation:AdjustSpeed(speed) else runlikejeffthekilleranimation:Stop() end end humanoid.Running:Connect(ifrunning)
local animatescript=character:FindFirstChild("Animate") if animatescript then animatescript:Destroy() end
if humanoid.WalkSpeed~=32 then humanoid.WalkSpeed=32 end
if humanoid.JumpPower~=70 then humanoid.JumpPower=70 end
local function findTarget() local target for _,player in pairs(game:GetService("Players"):GetPlayers()) do if player and player.Character then local character=player.Character local charRootPart=character:FindFirstChild("HumanoidRootPart") local targetHumanoid=character:FindFirstChildOfClass("Humanoid") if charRootPart and targetHumanoid and targetHumanoid.Health > 0 and (rootPart.Position-charRootPart.Position).Magnitude<50 then target=character end end end if target then return target end end
local function randomWander() local randomwalk=math.random(1,50) if randomwalk==20 then humanoid:MoveTo(rootPart.Position+Vector3.new(math.random(-100,100),0,math.random(-50,50))) elseif randomwalk==50 then humanoid:MoveTo(rootPart.Position+Vector3.new(math.random(-50,50),0,math.random(-10,10))) end local randomjump=math.random(1,50) if randomjump==20 then humanoid.Jump=true end end
while true do wait() if humanoid and humanoid.Health>0 then local target=findTarget() if target then local targetPart=target:FindFirstChild("HumanoidRootPart") local targetHumanoid=target:FindFirstChildOfClass("Humanoid") if targetHumanoid.Health>0 then if targetHumanoid.Jump then humanoid.Jump=true end local path=game:GetService("PathfindingService"):CreatePath() path:ComputeAsync(rootPart.Position,targetPart.Position) local waypoints=path:GetWaypoints() if path.Status==Enum.PathStatus.Success then for _,waypoint in pairs(waypoints) do if waypoint.Action==Enum.PathWaypointAction.Jump then humanoid.Jump=true end humanoid:MoveTo(waypoint.Position) end end end end if not target or target and not target:FindFirstChild("HumanoidRootPart") or target:FindFirstChild("HumanoidRootPart") and not target:FindFirstChildOfClass("Humanoid") or target:FindFirstChildOfClass("Humanoid") and target:FindFirstChildOfClass("Humanoid").Health==0 then target=nil randomWander() end else if not humanoid or humanoid and humanoid.Health==0 then break end end end
print("Killer script has loaded!")
print("Coded by @mrNugget34284320 - 6 Jun. 2025")
