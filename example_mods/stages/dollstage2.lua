function onCreate()
	-- background shit
	makeLuaSprite('dollstage', 'dollstage', -600, -300);
	setScrollFactor('dollstage', 0.9, 0.9);
	addLuaSprite('dollstage', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end