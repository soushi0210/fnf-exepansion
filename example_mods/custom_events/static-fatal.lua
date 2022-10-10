function onEvent(name,value1,value2)
	if name == 'static-fatal' then

		makeAnimatedLuaSprite('Stat', 'statix', 0, 0);
		addAnimationByPrefix('Stat', 'statixx', 'statixx', 45, false);
		setProperty('Stat.visible', true)
		setObjectCamera('Stat', 'other');
		addLuaSprite('Stat', true);
		scaleObject('Stat', 3.6, 3.6);

	end
end


function onUpdate()

	if getProperty('Stat.animation.curAnim.finished') then
		removeLuaSprite('Stat')
	end
end
