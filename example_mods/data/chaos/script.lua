--original pos dad = -900, 100
--modded pos dad = -700, 600
--local allowCountdown = false
function onStartCountdown()
	--if not allowCountdown then
		setProperty('dad.alpha', 0);
		setProperty('dad.x', -700);
		setProperty('dad.y', 600);
		setProperty('camHUD.visible', false);
            	doTweenZoom('zoom', 'camGame', 1, 1, 'sineOut');
		triggerEvent('Camera Follow Pos','-400','350')
		--playSound('sonic', 1, 'sonic');
		--allowCountdown = true;
		--return Function_Stop;
	--end
	--return Function_Continue;
end

--function onSoundFinished(tag)
	--if tag == 'sonic' then
		--startCountdown()
	--end
--end

function onStepHit()
	if curStep == 7 then
		doTweenZoom('zoom', 'camGame', 0.67, 0.5, 'sineOut');
		triggerEvent('Camera Follow Pos','','')
	end
	if curStep == 64 then
		setProperty('camHUD.visible', true) ;
	end
	if curStep == 8 then
		setProperty('dad.alpha', 1);
		doTweenY('dady', 'dad', -300, 0.8, 'sineOut');
            	setProperty('defaultCamZoom',0.67)

	end
	if curStep == 20 then
		doTweenX('dadx', 'dad', -1100, 1.8, 'circInOut');
	        started = true
		--setProperty('opponentDefault.x', -900)
		--setProperty('opponentDefault.y', 100)
	end
function onUpdate(elapsed)
	songPos = getSongPosition()
	local currentBeat = (songPos/5000)*(curBpm/60)
	doTweenY('opponentmove', 'dad', -400 - 150*math.sin((currentBeat+12*12)*math.pi), 2)
	doTweenX('disruptor2', 'disruptor2.scale', 0 - 50*math.sin((currentBeat+1*0.1)*math.pi), 6)
	doTweenY('disruptor2', 'disruptor2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)
	end
end