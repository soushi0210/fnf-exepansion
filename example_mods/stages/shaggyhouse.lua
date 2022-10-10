function onCreate()
	
	makeLuaSprite('house', 'stages/bg_lemon', -600, -200);
	addLuaSprite('house', false);
	setScrollFactor('house', 0.9, 0.9);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end