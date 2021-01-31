wait(1)
local player = game.Players.LocalPlayer
local userInputService = game:GetService("UserInputService")
local starterGui = game:GetService("StarterGui")
local boostsRemaining = 10
local active = false
player.Character.Humanoid.WalkSpeed = 17
local function inputHandler(input)
	
	if input.KeyCode == Enum.KeyCode.LeftShift and active == false  then
		if boostsRemaining > 0 then
		active = true
		boostsRemaining = boostsRemaining - 1
		script.Parent.boosts.Text = boostsRemaining
		player.Character.Humanoid.WalkSpeed = 35
		wait(1)
		player.Character.Humanoid.WalkSpeed = 15
			active = false
			end
	end
	
end

userInputService.InputBegan:Connect(inputHandler)
