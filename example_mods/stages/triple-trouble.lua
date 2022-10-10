function onCreate()

		makeLuaSprite('Stat', 'Phase3/Glitch', -650, 200);
	setScrollFactor('Stat', 0.9, 0.9);
	addLuaSprite('Stat', false);

	makeLuaSprite('Floor2', 'Phase3/normal/BackBush', 100, -300);
	setScrollFactor('Floor2', 0.9, 0.9);
	addLuaSprite('Floor2', false);

		makeLuaSprite('Tree', 'Phase3/normal/TTTrees', -650, -300);
	setScrollFactor('Tree', 0.9, 0.9);
	addLuaSprite('Tree', false);

	makeLuaSprite('Floor', 'Phase3/normal/TopBushes', 100, -300);
	setScrollFactor('Floor', 0.9, 0.9);
	addLuaSprite('Floor', false);
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end