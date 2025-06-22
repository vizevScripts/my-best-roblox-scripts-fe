--[[
	Coded by @mrNugget34284320 (Roblox)
	NOTICE: If the script has loaded, I recommend taking an item such as a knife or katana.
	Animations from Jeff The Killer Model.
]]
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
local function flingPlayer(player) if player and player.Character then local char=player.Character local charRootPart=player.Character:FindFirstChild("HumanoidRootPart") local bodyThrust=Instance.new("BodyThrust",rootPart) bodyThrust.Force=Vector3.new(math.huge,math.huge,math.huge) repeat wait() bodyThrust.Location=charRootPart.Position rootPart.Position=charRootPart.Position until rootPart==nil attacked=false end end
local function rootParttouched(part) if part.Parent and players:GetPlayerFromCharacter(part.Parent) then local touchingplayer=players:GetPlayerFromCharacter(part.Parent) local touchedhumanoid=part.Parent:FindFirstChildOfClass("Humanoid") if touchedhumanoid and touchedhumanoid.Health>0 then if not attacked then attacked=true hitpunishjeffthekilleranimation:Play() wait(.9) hitpunishjeffthekilleranimation:Stop() flingPlayer(touchingplayer) end else attacked=false end end end rootPart.Touched:Connect(rootParttouched)
local function ifrunning(speed) if speed>0.2 then runlikejeffthekilleranimation:Play() runlikejeffthekilleranimation:AdjustSpeed(speed) else runlikejeffthekilleranimation:Stop() end end humanoid.Running:Connect(ifrunning)
local animatescript=character:FindFirstChild("Animate") if animatescript then animatescript:Destroy() end
if humanoid.WalkSpeed~=32 then humanoid.WalkSpeed=32 end
if humanoid.JumpPower~=70 then humanoid.JumpPower=70 end
print("Killer script has loaded!")
print("Coded by @mrNugget34284320 - 6 Jun. 2025")
