
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

end
function onUpdate(elapsed)
	if curStep == 0 then
		setProperty("gf.alpha", 0)
	end
	if curStep == 320 then
		addLuaSprite('domain2',false)
		objectPlayAnimation('domain2','idle',true)
		addLuaSprite('domain',false)
		objectPlayAnimation('domain','idle',true)
		setProperty("gf.alpha", 0)
	end
end

function onEvent(name, value1, value2)
	if name == 'fuckyou coolscript' then
		triggerEvent('Flash Camera','1','')
		addLuaSprite('truefatalstage',false)
		objectPlayAnimation('truefatalstage','idle',true)
	end
end