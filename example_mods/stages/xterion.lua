function onCreate()
	-- background shit
	makeLuaSprite('sky','xterion/sky', -800,-550);
    setScrollFactor('sky', 0.9,0.9);
	scaleObject('sky', 1.3, 1.3)
	addLuaSprite('sky', false);

	makeLuaSprite('floor','xterion/floor', -800,-550);
    setScrollFactor('floor', 0.9,0.9);
	scaleObject('floor', 1.3, 1.3)
	addLuaSprite('floor', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end