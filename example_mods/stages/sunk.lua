function onCreate()
	makeLuaSprite('bg','sunk/background',100,-240)
    setLuaSpriteScrollFactor('bg',1,1)
    scaleObject('bg',0.8,0.8)
    addLuaSprite('bg',false)

    makeLuaSprite('floor','sunk/the_right_bg',-530,820)
    setLuaSpriteScrollFactor('floor',1,1)
    scaleObject('floor',0.8,0.8)
    addLuaSprite('floor',false)

	makeAnimatedLuaSprite('hanz','sunk/hangLOL',600,0)addAnimationByPrefix('hanz','color','hang',24,true)
    objectPlayAnimation('hanz','color',false)
    setScrollFactor('hanz', 1.0,1.0)
    scaleObject('hanz',1,1)
    addLuaSprite('hanz',false);

    makeAnimatedLuaSprite('speakerz','sunk/speakerLOL',-30,350)addAnimationByPrefix('speakerz','speakerdance','speakers',24,true)
    objectPlayAnimation('speakerz','speakerdance',false)
    setScrollFactor('speakerz', 1.0,1.0)
    scaleObject('speakerz',0.8,0.8)
    addLuaSprite('speakerz',false);



	close(true)
end