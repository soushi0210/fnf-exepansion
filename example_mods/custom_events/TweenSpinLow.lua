function onEvent(n,v1,v2)
	if n == "TweenSpinLow" then
		runTimer('tweenstop',1.1);
		-- bf notespin
		noteTweenAngle('A',4 , 360 , 1, quintOut)
		noteTweenAngle('B',5 , 360 , 1, quintOut)
		noteTweenAngle('C',6 , 360 , 1, quintOut)
		noteTweenAngle('D',7 , 360 , 1, quintOut)

		-- oppt notespin
		noteTweenAngle('E',0 , 360 , 1, quintOut)
		noteTweenAngle('F',1 , 360 , 1, quintOut)
		noteTweenAngle('G',2 , 360 , 1, quintOut)
		noteTweenAngle('H',3 , 360 , 1, quintOut)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'tweenstop' then
		noteTweenAngle('A',4 , 0 , 0.0001, linear)
		noteTweenAngle('B',5 , 0 , 0.0001, linear)
		noteTweenAngle('C',6 , 0 , 0.0001, linear)
		noteTweenAngle('D',7 , 0 , 0.0001, linear)

		-- oppt notespin
		noteTweenAngle('E',0 , 0 , 0.0001, linear)
		noteTweenAngle('F',1 , 0 , 0.0001, linear)
		noteTweenAngle('G',2 , 0 , 0.0001, linear)
		noteTweenAngle('H',3 , 0 , 0.0001, linear)
    end
end
