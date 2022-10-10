function onCreate()
	getProperty('boyfriend.healthicon')
	makeLuaSprite('winningIconDad', 'icons/win-exe',getProperty('iconP2.x'), getProperty('iconP2.y'))
	setObjectCamera('winningIconDad', 'hud')
	addLuaSprite('winningIconDad', true)
	setObjectOrder('winningIconDad', getObjectOrder('iconP2') + 1)
	setProperty('winningIconDad.flipX', false)
	setProperty('winningIconDad.visible', false)
	setTimeBarColors('FE0000', '000000')
	
	for i = 0, getProperty('grpNoteSplashes.length')-1 do
        setPropertyFromGroup('grpNoteSplashes', i, 'offset.x', 100)
    end

end
function onUpdatePost()	
	if curStep == 0 then 
		health = getProperty('health')
		if getProperty('health') < 10 then
			setProperty('health', health+ 10);
		end
	end
	health = getProperty('health')
	if getProperty('health') > 0 then
		setProperty('health', health- 0.00005);
    end
end
function onUpdate(elapsed)

		if curStep > 0 then 
			noteTweenAlpha("NoteAlpha0", 0, 0, 0.001, cubeInOut)
			noteTweenAlpha("NoteAlpha1", 1, 0, 0.001, cubeInOut)
			noteTweenAlpha("NoteAlpha2", 2, 0, 0.001, cubeInOut)
			noteTweenAlpha("NoteAlpha3", 3, 0, 0.001, cubeInOut)
			noteTweenY('defaultPlayerStrumY0', 0, 100000, 0.001)
			noteTweenY('defaultPlayerStrumY1', 1, 100000, 0.001)
			noteTweenY('defaultPlayerStrumY2', 2, 100000, 0.001)
			noteTweenY('defaultPlayerStrumY3', 3, 100000, 0.001)
		end
		dad = getProperty('dad.healthicon')

			makeLuaSprite('winningIconDad', 'icons/win-'..getProperty('iconP2.animation.curAnim.name'), getProperty('iconP2.x'), getProperty('iconP2.y'))
			setObjectCamera('winningIconDad', 'hud')
			addLuaSprite('winningIconDad', true)
			setObjectOrder('winningIconDad', getObjectOrder('iconP2') + 1)
			setProperty('winningIconDad.flipX', false)
			setProperty('winningIconDad.visible', false)
		
			setProperty('winningIconDad.x', getProperty('iconP2.x'))
			setProperty('winningIconDad.angle', getProperty('iconP2.angle'))
			setProperty('winningIconDad.y', getProperty('iconP2.y'))
			setProperty('winningIconDad.scale.x', getProperty('iconP2.scale.x'))
			setProperty('winningIconDad.scale.y', getProperty('iconP2.scale.y'))
			
			if getProperty('health') <= 0.375 then
				setProperty('iconP2.visible', false)
				setProperty('winningIconDad.visible', true)
			else
				setProperty('iconP2.visible', true)
				setProperty('winningIconDad.visible', false)
			end
			
	health = getProperty('health')

	if getProperty('health') < 0.2 then
		doTweenAlpha('TentaclesAlpha', 'LMAOTENTACLES', 1, 0.8, 'quintOut');
		doTweenAlpha('VignetteAlpha', 'vignette', 1, 0.8, 'quintOut');
		cameraShake("hud", 0.005, 0.4);
	elseif getProperty('health') < 0.5 then
		doTweenAlpha('TentaclesAlpha', 'LMAOTENTACLES', 0.8, 0.8, 'quintOut');
		doTweenAlpha('VignetteAlpha', 'vignette', 0.8, 0.8, 'quintOut');
		cameraShake("hud", 0.002, 0.2);
	elseif getProperty('health') < 1.0 then
		doTweenAlpha('TentaclesAlpha', 'LMAOTENTACLES', 0.6, 0.8, 'quintOut');
		doTweenAlpha('VignetteAlpha', 'vignette', 0.6, 0.8, 'quintOut');
	elseif getProperty('health') < 1.5 then
		doTweenAlpha('TentaclesAlpha', 'LMAOTENTACLES', 0.2, 0.8, 'quintOut');
		doTweenAlpha('VignetteAlpha', 'vignette', 0.2, 0.8, 'quintOut');
	end

end