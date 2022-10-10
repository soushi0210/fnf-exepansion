local easing = 'sineInOut'
local easingStart = 0
local easingEnd = 0
local duration = 0

local textStringStart = 0
local textStringLast = 0

function onEvent(name,value1,value2)
    if name == "Set Cam Zoom" then
		easingStart,easingEnd = string.find(value2,'easing:')
		textStringStart,textStringLast = string.find(value2,value2)
		if string.find(value2,'easing:',0,true) ~= nil then
			easing = string.sub(value2,easingEnd + 1)
			if string.sub(value2,0,easingStart - 1) ~= string.sub(value2,textStringLast - 1,textStringLast) then
				if string.find(value2,',easing:',0,true) ~= nil then
					duration = string.sub(value2,0,easingStart - 2)
				else
					duration = string.sub(value2,0,easingStart - 1)
				end
			else
				duration = 2
			end
		else
			easing = 'sineInOut'
			if tonumber(value2) == nil then
				duration = 2
			else
				duration = tonumber(value2)
			end
		end
		doTweenZoom('camz','camGame',value1,duration,easing)
    end
end

function onTweenCompleted(name)
	if name == 'camz' then
    	setProperty("defaultCamZoom",getProperty('camGame.zoom'))
	end
end