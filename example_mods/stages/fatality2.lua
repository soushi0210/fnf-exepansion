function onCreate()
	-- background shit
	--part 1
	makeAnimatedLuaSprite('launchbase','fatal/launchbase', -246,-190)
	addAnimationByPrefix('launchbase','idle','idle',12,true)
	scaleObject('launchbase', 4, 4)
	addLuaSprite('launchbase',false)
	objectPlayAnimation('launchbase','idle',true)

	--part 2
	
	makeAnimatedLuaSprite('domain2','fatal/domain2', -246,-190)
	addAnimationByPrefix('domain2','idle','idle',12,true)
	scaleObject('domain2', 4, 4)


	makeAnimatedLuaSprite('domain','fatal/domain', -246,-190)
	addAnimationByPrefix('domain','idle','idle',12,true)
	scaleObject('domain', 4, 4)


	--part 3

	makeAnimatedLuaSprite('truefatalstage','fatal/truefatalstage', -246,-190)
	addAnimationByPrefix('truefatalstage','idle','idle',12,true)
	scaleObject('truefatalstage', 4, 4)

	setProperty("gf.alpha", 0)

	makeAnimatedLuaSprite('daSTAT','daSTAT',-250,-150)
	addAnimationByPrefix('daSTAT','staticFLASH','staticFLASH',24,true)
	objectPlayAnimation('daSTAT','staticFLASH',false)
	setScrollFactor('daSTAT', 0, 0);
end
function onUpdate(elapsed)
	if curStep == 0 then
		addLuaSprite('domain2',false)
		objectPlayAnimation('domain2','idle',true)
		addLuaSprite('domain',false)
		objectPlayAnimation('domain','idle',true)

	end
	if curStep == 1152 then
		addLuaSprite('truefatalstage',false)
		objectPlayAnimation('truefatalstage','idle',true)
		runTimer('daSTAThide',0.5);
		addLuaSprite('daSTAT', true);
		scaleObject('daSTAT', 6, 6)
		objectPlayAnimation('daSTAT','staticFLASH',true)
	end
	if curStep == 1155 then
		setProperty("daSTAT.alpha", 0)
	end
end
