function onEvent(name)
	if name == 'Static' then
		makeAnimatedLuaSprite('static', 'Phase3Static', -600, -252);
		luaSpriteAddAnimationByPrefix('static', 'hello_there', 'Phase3Static instance 1' , 24, false)
		scaleLuaSprite('static', 6.5, 6.5)
		addLuaSprite('static', true)
		cameraSetTarget('boyfriend')
		runTimer('fade', 1.63);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'fade' then
		doTweenAlpha('remove', 'static', 0, 0.3, 'linear');
    end
end
    
function onTweenCompleted(tag)
    if tag == 'remove' then
		removeLuaSprite('static', true);
		cameraSetTarget('dad')
    end
end
