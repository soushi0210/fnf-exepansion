function onCreate()
	 makeLuaSprite('GreenHill', 'run/GreenHill', 0, 0);
	 setScrollFactor('GreenHill', 0.9, 0.9);
	 scaleObject('GreenHill', 8, 8)
	 addLuaSprite('GreenHill', false);	

	 makeLuaSprite('sky', 'run/sky', 0, 0);
	 setScrollFactor('sky', 0.9, 0.9);
	 addLuaSprite('sky', false);	

	 makeLuaSprite('GrassBack', 'run/GrassBack', 0, 0);
	 setScrollFactor('GrassBack', 0.9, 0.9);
	 addLuaSprite('GrassBack', false);	

	 makeLuaSprite('trees', 'run/trees', 0, 0);
	 setScrollFactor('trees', 0.9, 0.9);
	 addLuaSprite('trees', false);	
	 
	 makeLuaSprite('Grass', 'run/Grass', 0, 0);
	 setScrollFactor('Grass', 0.9, 0.9);
	 addLuaSprite('Grass', false);	

	 makeLuaSprite('TreesFront', 'run/TreesFront', 0, 0);
	 setScrollFactor('TreesFront', 0.9, 0.9);
	 addLuaSprite('TreesFront', true);	

	 makeLuaSprite('TopOverlay', 'run/TopOverlay', 0, 0);
	 setScrollFactor('TopOverlay', 0.9, 0.9);
	 addLuaSprite('TopOverlay', true);	
end

function onEvent(name, value1, value2)
	if name == "Change Character" then
		if value2 == 'pixelrunsonic' then
			setProperty('sky.visible',false)
			setProperty('GrassBack.visible',false)
			setProperty('trees.visible',false)
			setProperty('Grass.visible',false)
			setProperty('TreesFront.visible',false)
			setProperty('TopOverlay.visible',false)
		end
		if value2 == 'ycr-mad' then
			setProperty('sky.visible',true)
			setProperty('GrassBack.visible',true)
			setProperty('trees.visible',true)
			setProperty('Grass.visible',true)
			setProperty('TreesFront.visible',true)
			setProperty('TopOverlay.visible',true)
		end
	end
end

