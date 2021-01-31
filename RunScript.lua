-- Shift to run script; Ryan; Replace by InputHandler in starterGUI
--[[
local userInputService = game:GetService("UserInputService")
wait(0.5)
local player = game.Players.LocalPlayer
player.Character.Humanoid.WalkSpeed = 17
local function InputHandlerBegan(input) 
	if input.KeyCode == Enum.KeyCode.LeftShift then
		local player = game.Players.LocalPlayer
		player.Character.Humanoid.WalkSpeed = 35
	end
end

local function InputHandlerEnded(input)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		local player = game.Players.LocalPlayer
		player.Character.Humanoid.WalkSpeed = 15
	end
end


userInputService.InputBegan:Connect(InputHandlerBegan)
userInputService.InputEnded:Connect(InputHandlerEnded)
--]]