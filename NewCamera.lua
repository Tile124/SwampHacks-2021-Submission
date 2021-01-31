local offset = Vector3.new(0,50,-20)
local FOV = 90
local player = script.Parent.Parent
local camera = game.Workspace.CurrentCamera
local runService = game:GetService("RunService")

camera.FieldOfView = FOV
local function onRenderStep()
	
	local playerPosition = player.Character.HumanoidRootPart.Position
	local cameraPosition = playerPosition + offset
	camera.CoordinateFrame = CFrame.new(cameraPosition, playerPosition)
	
end

runService:BindToRenderStep('Camera', Enum.RenderPriority.Camera.Value, onRenderStep)
