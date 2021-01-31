local timerActive = false
local function timer()
	wait(0.9)
	timerActive = false	
end
function onTouched(hit)
        local human = hit.Parent:findFirstChild("Humanoid")
	if (human ~= nil and timerActive == false) then
		timerActive = true
		human.Health = human.Health - 50
		timer()
        end
end



script.Parent.Touched:connect(onTouched)