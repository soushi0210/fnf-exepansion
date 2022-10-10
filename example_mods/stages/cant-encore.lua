function onCreate()
	 makeLuaSprite('GreenHill', 'run/GreenHill', 0, 0);
	 setScrollFactor('GreenHill', 0.9, 0.9);
	 scaleObject('GreenHill', 8, 8)
	 addLuaSprite('GreenHill', false);	

	 makeLuaSprite('encore', 'run/encore', 0, 0);
	 setScrollFactor('encore', 0.9, 0.9);
	 addLuaSprite('encore', false);	

	 makeLuaSprite('blackscreen', 'blackscreen', 0, -100);
	 setScrollFactor('blackscreen', 0.9, 0.9);
	 scaleObject('blackscreen', 3, 3)
	 addLuaSprite('blackscreen', true);	
	 setProperty('blackscreen.alpha', 0)
end

function onEvent(name, value1, value2)
	if name == "Change Character" then
		if value2 == 'pixelrunsonic' then
			setProperty('encore.visible',false)
		end
		if value2 == 'BEAST' then
			setProperty('blackscreen.alpha', 0.75)
			setProperty('GreenHill.visible',false)
		end
		if value2 == 'ycr-mad' then
			setProperty('encore.visible',true)
			setProperty('blackscreen.alpha', 0)
		end
	end
end

