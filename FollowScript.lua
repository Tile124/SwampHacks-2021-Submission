-- Chase script; Ryan
local gameActive = game.Workspace.GameActive.Value

function findPlayer() 
	local player = game.Workspace:FindFirstChild("HumanoidRootPart", true)
	return player
end

	
	local function goToPlayer() 
		findPlayer()
		local target = findPlayer()
		if target ~= nil then
			script.Parent.Humanoid:MoveTo(target.Position, target)
		end
	end
	
wait(4)
	while true do
			while true do
				wait()
				goToPlayer()
			end
		end


