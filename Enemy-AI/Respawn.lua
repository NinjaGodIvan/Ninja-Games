--[[ This script respawns the model, or AI enemy]]

--Humanoid respawn time
respawn_time = 10

--Creates a copy of the model
copyModel=script.Parent:clone()

--When AI dies, then clone the model aka respawn
script.Parent.Zombie.Died:Connect(function()
	wait(respawn_time)
	copyModel=copyModel:clone()
	copyModel.Parent=script.Parent.Parent
	copyModel:makeJoints()
	script.Parent:remove()
end)