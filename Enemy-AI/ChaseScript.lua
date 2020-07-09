wait()
zombieParent = false

while zombieParent == false do

	wait()
	if script.Parent.Name == "Syberian Ninja" then
		zombieParent = true
	end

end

local larm = script.Parent:FindFirstChild("Left Arm")
local rarm = script.Parent:FindFirstChild("Right Arm")
local waitTimer = 0

function findNearestTorso(pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 10000
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= script.Parent) then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					script.Parent.Target.Value = temp
					dist = (temp.Position - pos).magnitude

					if human.Health >= 1 then 
					script.Parent.Range.Value = true 
					else 
					script.Parent.Range.Value = false 
					end 
				end
			end
			if dist < 10 then 
				script.Parent.Attack.Value = true 
			else 
				script.Parent.Attack.Value = false 
			end 
		end
	end
	return torso
end

function Sit()
	if script.Parent.Zombie.Sit == true then 
		script.Parent.Zombie.Jump = true 
		print("Anti Seat Putter!!!")
	end 
end 

script.Parent.Zombie.Changed:connect(Sit)

function touch(hit)
if hit and hit.Parent then
if hit.Parent.Name == "Ballista" or  hit.Parent.Name == "Brotherhood Of Scythe" or hit.Parent.Name == "Jump" then
script.Parent.Zombie.Jump = true
end
end
end

script.Parent["Right Leg"].Touched:connect(touch)

script.Parent["Left Leg"].Touched:connect(touch)

while true do
	wait(1)
	local target = findNearestTorso(script.Parent.Torso.Position)
	if target ~= nil then
		rx = math.random(-3,3)
		ry = math.random(0,0)
		rz = math.random(-3,3)
		script.Parent.Zombie:MoveTo(target.Position+Vector3.new(rx,ry,rz), target)
	else 
		script.Parent.Range.Value = false 
		script.Parent.Attack.Value = false 
	end
end
