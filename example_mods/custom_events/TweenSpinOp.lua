function onEvent(n,v1,v2)
	if n == "TweenSpinOp" then
		runTimer('tweenstop',0.2);
		-- oppt notespin
		noteTweenAngle('E',0 , 360 , 0.2, quintOut)
		noteTweenAngle('F',1 , 360 , 0.2, quintOut)
		noteTweenAngle('G',2 , 360 , 0.2, quintOut)
		noteTweenAngle('H',3 , 360 , 0.2, quintOut)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'tweenstop' then
		-- oppt notespin
		noteTweenAngle('E',0 , 0 , 0.0001, linear)
		noteTweenAngle('F',1 , 0 , 0.0001, linear)
		noteTweenAngle('G',2 , 0 , 0.0001, linear)
		noteTweenAngle('H',3 , 0 , 0.0001, linear)
    end
end
