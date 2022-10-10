function onEvent(n,v1,v2)
	if n == "TweenSpinBF" then
		runTimer('tweenstop',0.2);
		-- bf notespin
		noteTweenAngle('A',4 , 360 , 0.2, quintOut)
		noteTweenAngle('B',5 , 360 , 0.2, quintOut)
		noteTweenAngle('C',6 , 360 , 0.2, quintOut)
		noteTweenAngle('D',7 , 360 , 0.2, quintOut)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'tweenstop' then
		noteTweenAngle('A',4 , 0 , 0.0001, linear)
		noteTweenAngle('B',5 , 0 , 0.0001, linear)
		noteTweenAngle('C',6 , 0 , 0.0001, linear)
		noteTweenAngle('D',7 , 0 , 0.0001, linear)
    end
end
