function onCreate()
	makeLuaSprite('requital','requital/RequitalBG',-480,-600);
	addLuaSprite('requital',false)
	scaleObject('requital',1.5,1.6)
	setProperty('requital.visible', true)
	
	makeLuaSprite('adiusss','requital/ChauLuz',-150,-750);
	addLuaSprite('adiusss',false)
	setProperty('adiusss.visible', false)
	scaleObject('adiusss',1.3,1.3)
	
makeLuaSprite('BlackFlash', 'black', -700, -900);
		scaleObject('BlackFlash', 2,2);
		addLuaSprite('BlackFlash', true)
		setProperty('BlackFlash.alpha', 0) 
		
		
setObjectOrder('gfGroup', false)
setObjectOrder('boyfriendGroup', false)
setObjectOrder('dadGroup', false)
setObjectOrder('requital', false)
setObjectOrder('adiusss', false)



  makeLuaSprite('black', 'black', 0,0)
    addLuaSprite('black', true)
    
   makeLuaSprite('circle', 'StartScreens/Circle-forestall-desire', 1280,0)
    addLuaSprite('circle', true)

    makeLuaSprite('text', 'StartScreens/Text-forestall-desire', -1280,0)
    addLuaSprite('text', true)
    setObjectCamera('black', 'camother')
    setObjectCamera('circle', 'camother')
    setObjectCamera('text', 'camother')
    
    
setPropertyFromClass('GameOverSubstate', 'characterName', 'bf'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'exe_gameover'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'exe_gameOverEnd'); --put in mods/music/
end
function onCreatePost() 
if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
noteTweenX('bfTween1', 4, 90, 0.01, 'linear');
 noteTweenX('bfTween2', 5, 205, 0.01, 'linear'); 
noteTweenX('bfTween3', 6, 315, 0.01, 'linear');
 noteTweenX('bfTween4', 7, 425, 0.01, 'linear'); 
noteTweenX('dadTween1', 0, 730, 0.01, 'linear'); 
noteTweenX('dadTween2', 1, 845, 0.01, 'linear');
 noteTweenX('dadTween3', 2, 955, 0.01, 'linear')
 noteTweenX('dadTween4', 3, 1065, 0.01, 'linear');
end
end

function onStepHit()
if curStep == 1 then
setProperty("timeBar.color",getColorFromHex("f7b511"))
end
if curStep == 782 then
noteTweenAlpha('bfTween1', 4, 0, 0.01, 'linear');
 noteTweenAlpha('bfTween2', 5, 0, 0.01, 'linear'); 
noteTweenAlpha('bfTween3', 6, 0, 0.01, 'linear');
 noteTweenAlpha('bfTween4', 7, 0, 0.01, 'linear'); 
noteTweenAlpha('dadTween1', 0, 0, 0.01, 'linear'); 
noteTweenAlpha('dadTween2', 1, 0, 0.01, 'linear');
 noteTweenAlpha('dadTween3', 2,0 , 0.01, 'linear')
 noteTweenAlpha('dadTween4', 3, 0, 0.01, 'linear');
setProperty('BlackFlash.alpha',1) 
setProperty('defaultCamZoom', 0.72)
setProperty('adiusss.visible', true)
setProperty('requital.visible', false)
setProperty('scoreTxt.visible', false)

        setProperty('healthBar.visible', false) 

        setProperty('healthBarBG.visible', false)

        setProperty('iconP1.visible', false)

        setProperty('iconP2.visible', false)

        setProperty('timeTxt.visible', false)

        setProperty('timeBar.visible', false)

        setProperty('timeBarBG.visible', false)
end
if curStep == 804 then
if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
noteTweenAlpha('bfTween1', 4, 1, 3, 'linear');
 noteTweenAlpha('bfTween2', 5, 1, 3, 'linear'); 
noteTweenAlpha('bfTween3', 6, 1, 3, 'linear');
 noteTweenAlpha('bfTween4', 7, 1, 3, 'linear'); 
noteTweenAlpha('dadTween1', 0, 1, 3, 'linear'); 
noteTweenAlpha('dadTween2', 1, 1, 3, 'linear');
 noteTweenAlpha('dadTween3', 2,1, 3, 'linear')
 noteTweenAlpha('dadTween4', 3, 1, 3, 'linear');
 end
if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then--Detalles pa,detalles
noteTweenAlpha('bfTween1', 4, 1, 3, 'linear');
 noteTweenAlpha('bfTween2', 5, 1, 3, 'linear'); 
noteTweenAlpha('bfTween3', 6, 1, 3, 'linear');
 noteTweenAlpha('bfTween4', 7, 1, 3, 'linear'); 
noteTweenAlpha('dadTween1', 0, 0.5, 3, 'linear'); 
noteTweenAlpha('dadTween2', 1, 0.5, 3, 'linear');
 noteTweenAlpha('dadTween3', 2,0.5, 3, 'linear')
 noteTweenAlpha('dadTween4', 3, 0.5, 3, 'linear');
 end
doTweenAlpha('adioss', 'BlackFlash',0,4, 'linear');
end

if curStep == 988 then
if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
noteTweenX('bfTween1', 4, 730, 0.3, 'linear');
 noteTweenX('bfTween2', 5, 845, 0.3, 'linear'); 
noteTweenX('bfTween3', 6, 955, 0.3, 'linear');
 noteTweenX('bfTween4', 7, 1065, 0.3, 'linear'); 
noteTweenX('dadTween1', 0, 90, 0.3, 'linear'); 
noteTweenX('dadTween2', 1, 205, 0.3, 'linear');
 noteTweenX('dadTween3', 2, 315, 0.3, 'linear')
 noteTweenX('dadTween4', 3, 425, 0.3, 'linear');
end
end
if curStep == 1056 then
if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
noteTweenX('bfTween1', 4, 90, 0.3, 'linear');
 noteTweenX('bfTween2', 5, 205, 0.3, 'linear'); 
noteTweenX('bfTween3', 6, 315, 0.3, 'linear');
 noteTweenX('bfTween4', 7, 425, 0.3, 'linear'); 
noteTweenX('dadTween1', 0, 730, 0.3, 'linear'); 
noteTweenX('dadTween2', 1, 845, 0.3, 'linear');
 noteTweenX('dadTween3', 2, 955, 0.3, 'linear')
 noteTweenX('dadTween4', 3, 1065, 0.3, 'linear');
end
setProperty('defaultCamZoom', 0.6)
setProperty('adiusss.visible', false)
setProperty('requital.visible', true)
setProperty('scoreTxt.visible', true)

        setProperty('healthBar.visible', true)

        setProperty('healthBarBG.visible', true)

        setProperty('iconP1.visible', true)

        setProperty('iconP2.visible', true)

        setProperty('timeTxt.visible', true)

        setProperty('timeBar.visible', true)

        setProperty('timeBarBG.visible', true)
        end
if curStep == 1312 then
setProperty('defaultCamZoom', 0.9)
triggerEvent('Play Animation','hey','bf');
end
if curStep == 1333 then
doTweenAlpha('holaa', 'BlackFlash',1, 2, 'quartOut');
end
end