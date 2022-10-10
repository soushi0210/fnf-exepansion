function onCreate()
	-- background shit
	makeLuaSprite('tails', 'tails', -600, -300);
	setScrollFactor('tails', 0.9, 0.9);



	addLuaSprite('tails', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end