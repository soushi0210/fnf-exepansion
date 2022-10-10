function onCreate()
	 makeLuaSprite('sonicFUNsky', 'FunInfiniteStage/sonicFUNsky', -631.8, -493.15);
	 setScrollFactor('sonicFUNsky', 0.9, 0.9);
	 addLuaSprite('sonicFUNsky', false);	
	 

	 makeAnimatedLuaSprite('Majin Boppers Back','FunInfiniteStage/Majin Boppers Back', -146,-590)
	 addAnimationByPrefix('Majin Boppers Back','MajinBop2 instance 1','MajinBop2 instance 1',24,true)
	 addLuaSprite('Majin Boppers Back',false)
	 objectPlayAnimation('Majin Boppers Back','MajinBop2 instance 1',true)

	 makeAnimatedLuaSprite('Majin Boppers Back2','FunInfiniteStage/Majin Boppers Back', 1446,-590)
	 addAnimationByPrefix('Majin Boppers Back2','MajinBop2 instance 1','MajinBop2 instance 1',24,true)
	 addLuaSprite('Majin Boppers Back2',false)
	 objectPlayAnimation('Majin Boppers Back2','MajinBop2 instance 1',true)

	 makeLuaSprite('Bush2', 'FunInfiniteStage/Bush2', -631.8, -493.15);
	 setScrollFactor('Bush2', 0.9, 0.9);
	 addLuaSprite('Bush2', false);	

	 makeAnimatedLuaSprite('Majin Boppers Front','FunInfiniteStage/Majin Boppers Front', -546,-590)
	 addAnimationByPrefix('Majin Boppers Front','MajinBop1 instance 1','MajinBop1 instance 1',24,true)
	 addLuaSprite('Majin Boppers Front',false)
	 objectPlayAnimation('Majin Boppers Front','MajinBop1 instance 1',true)

	 makeLuaSprite('Bush 1', 'FunInfiniteStage/Bush 1', -631.8, -493.15);
	 setScrollFactor('Bush 1', 0.9, 0.9);
	 addLuaSprite('Bush 1', false);	

	 makeLuaSprite('floor BG', 'FunInfiniteStage/floor BG', -631.8, -493.15);
	 setScrollFactor('floor BG', 0.9, 0.9);
	 addLuaSprite('floor BG', false);	


end
function onBeatHit()
	if curStep >= 0 then
		setProperty('boyfriend.color', getColorFromHex('3D33CE'));
	end
end

