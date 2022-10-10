function onCreate()
	-- background shit

	makeLuaSprite('black', 'blackscreen', -3520, -330);
      scaleObject('black', 3.0, 3.0);

      makeAnimatedLuaSprite('sky', 'starved/Sky', -3520, -230);
    setLuaSpriteScrollFactor('sky', 1.4, 1.4);
      scaleObject('sky', 3.0, 3.0);
      setProperty('sky.antialiasing', false);

      makeAnimatedLuaSprite('run', 'starved/Plataform', -920, -965);
      scaleObject('run', 2.5, 2.5);
      setProperty('run.antialiasing', false);

	addLuaSprite('black', false);

      addAnimationByPrefix('run', 'idle', 'Idle',55, true)
      addLuaSprite('sky', false);
      addAnimationByPrefix('sky', 'idle', 'Idle',30, true)
      
end
function onUpdate(elapsed)
	if curStep == 128 then
		addLuaSprite('run', true);
	end
end
function onEvent(name,value1)
	if name == 'Perez Sen' then
		if value1 == '2' then
			if not lowQuality then
			makeLuaSprite('flash', 'flash', 0, 0);
			setLuaSpriteScrollFactor('flash', 0, 0);
			setProperty('flash.alpha', 0.0006);
			setObjectCamera('flash', 'other');
			setProperty('flash.alpha', 1);
			doTweenAlpha('tweenCutOffAlpha', 'flash', 0, 1.9, 'linear');
			setObjectCamera('flash', 'other');
			addLuaSprite('flash', false);
			end
			doTweenColor('timeBar', 'timeBar', '004AEA ', 0.5, 'circOut')
		end
		if value1 == '3' then
			if not lowQuality then
			setProperty('bars.alpha', 1);
			makeLuaSprite('bars', 'bars', 0, -15);
			scaleObject('bars', 0.35, 0.35);
			setObjectCamera('bars', 'other');
			setProperty('bars.antialiasing', false);
			addLuaSprite('bars', true);
			setProperty('baars.alpha', 0.2);
			doTweenAlpha('hud', 'camHUD', 0, 1, 'linear')
			end
		end
		if value1 == '4' then
			if not lowQuality then
			setProperty('bars.visible',false)
			end
			doTweenAlpha('hud', 'camHUD', 1, 1, 'linear')
			doTweenAlpha('tweenCutOffAlpha', 'bars', 0, 1.9, 'linear')

		end
		if value1 == '5' then
			if not lowQuality then
			makeLuaSprite('black', 'black', -20, -20);
			setLuaSpriteScrollFactor('black', 0, 0);
			setProperty('black.alpha', 0.0006);
			scaleObject('black', 3, 3);
			setObjectCamera('black', 'other');
			setProperty('black.alpha', 1);
			end
			doTweenAlpha('hud', 'camHUD', 0, 1, 'linear')
			if not lowQuality then
			addLuaSprite('black', false);
			doTweenColor('red', 'red', 'FF0000 ', 0.5, 'circOut')
			makeLuaSprite('red', 'red', 0, 0);
			setLuaSpriteScrollFactor('red', 0, 0);
			setProperty('red.alpha', 0.0006);
			setProperty('red.alpha', 1);
			doTweenAlpha('tweenCutOffAlpha', 'red', 0, 1.9, 'linear');
			setObjectCamera('red', 'other');
			addLuaSprite('red', false);
		end
		if value1 == '6' then
			doTweenX("dad", "dad", 1800, 2.4, "linear")	
	end
end
function onStepHit()
	if curStep == 1546 then
		doTweenX("dad", "dad", 1800, 2.4, "linear")
end
end
end
end
