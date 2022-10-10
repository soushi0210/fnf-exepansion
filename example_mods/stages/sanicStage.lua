--Stage Por Nickobelit
--Eventos y todo este largo código también por Nickobelit
function onCreate()
precacheImage('sanic/2012Effect')
precacheImage('sanic/smook')
precacheImage('sanic/noscope_Sprite')
precacheImage('sanic/hitmarkers')
precacheImage('sanic/Guns')
precacheImage('sanic/Explosion')
precacheImage('sanic/glasses')

makeLuaSprite('bg', 'sanic/sanicbg', -200, 0)
    scaleObject('bg',1,1);
    addLuaSprite('bg', false)
    
    makeLuaSprite('lentes', 'sanic/glasses', 900,0)
    scaleObject('lentes',2,2);
    addLuaSprite('lentes', false) 
    setProperty('lentes.visible', false); 
    setObjectCamera('lentes', 'other')
    
    makeLuaSprite('lentes2', 'sanic/glasses', 900,0)
    scaleObject('lentes2',2,2);
    addLuaSprite('lentes2', false) 
    setProperty('lentes2.visible', false); 
    setObjectCamera('lentes2', 'other')
    
    setProperty('gfGroup.visible', false);
end


--Lo que más costó hacer
function onStepHit()
if curStep == 912 then
makeAnimatedLuaSprite('xd','sanic/2012Effect',0,0)
	addAnimationByPrefix('xd','dance','2012',10,true)
	objectPlayAnimation('xd','dance',false)
	scaleObject('xd',1.34,1.3)
	addLuaSprite('xd',true)
	setObjectCamera('xd', 'other')
	
	setProperty('lentes.visible', true);
	doTweenX('lentesTween', 'lentes',150,2, 'linear')
    end

if curStep == 930 then
if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
makeAnimatedLuaSprite('dogg','sanic/smook',-400,0)
	addAnimationByPrefix('dogg','dance','idle',24,true)
	objectPlayAnimation('dogg','dance',false)
	scaleObject('dogg',2,2)
	addLuaSprite('dogg',true)
	setObjectCamera('dogg', 'other')
	
	makeAnimatedLuaSprite('dogg2','sanic/smook',400,0)
	addAnimationByPrefix('dogg2','dance','idle',24,true)
	objectPlayAnimation('dogg2','dance',false)
	scaleObject('dogg2',2,2)
	addLuaSprite('dogg2',true)
	setObjectCamera('dogg2', 'other')
	else
makeAnimatedLuaSprite('dogg','sanic/smook',0,0)
	addAnimationByPrefix('dogg','dance','idle',24,true)
	objectPlayAnimation('dogg','dance',false)
	scaleObject('dogg',2,2)
	addLuaSprite('dogg',true)
	setObjectCamera('dogg', 'other')
	end
end
if curStep == 957 then
makeAnimatedLuaSprite('hitmarkers','sanic/hitmarkers',0,0)
	addAnimationByPrefix('hitmarkers','dance','HitMarkers',24,true)
	objectPlayAnimation('hitmarkers','dance',false)
	scaleObject('hitmarkers',2,2)
	addLuaSprite('hitmarkers',true)
	setObjectCamera('hitmarkers', 'other')
	playSound('Sanic/HitMarkers')
	
	makeAnimatedLuaSprite('armas','sanic/Guns',0,0)
	addAnimationByPrefix('armas','dance','Guns',24,true)
	objectPlayAnimation('armas','dance',false)
	scaleObject('armas',4,4)
	addLuaSprite('armas',true)
	setObjectCamera('armas', 'other')
	end
	
if curStep == 972 then
removeLuaSprite('xd', true); 
end
if curStep == 975 then
setProperty('hitmarkers.visible', false);
end

if curStep == 988 then
removeLuaSprite('armas',true)
end

if curStep == 1029 then
setProperty('lentes.visible', false);
makeAnimatedLuaSprite('nonscope','sanic/noscope_Sprite',0,0)
	addAnimationByPrefix('nonscope','dance','noscope',40,true)
	objectPlayAnimation('nonscope','dance',false)
	scaleObject('nonscope',1,1)
	addLuaSprite('nonscope',true)
	setObjectCamera('nonscope', 'other')
	end
	if curStep == 1033 then
objectPlayAnimation('nonscope','dance',false)
end
if curStep == 1037 then
objectPlayAnimation('nonscope','dance',false)
makeAnimatedLuaSprite('boom','sanic/Explosion',0,0)
	addAnimationByPrefix('boom','dance','Explosion_',24,false)
	objectPlayAnimation('boom','dance',false)
	scaleObject('boom',4,4)
	addLuaSprite('boom',true)
	setObjectCamera('boom', 'other')
end
if curStep == 1040 then
setProperty('dogg.visible', false); 
setProperty('dogg2.visible', false); 
end
if curStep == 1042 then
setProperty('nonscope.visible', false);
end 
if curStep == 1059 then
setProperty('dogg.visible', true);
setProperty('dogg2.visible', true);  
end

if curStep == 1160 then
makeAnimatedLuaSprite('nonscope2','sanic/noscope_Sprite',0,0)
	addAnimationByPrefix('nonscope2','dance','noscope',35,true)
	objectPlayAnimation('nonscope2','dance',false)
	scaleObject('nonscope2',1,1)
	addLuaSprite('nonscope2',true)
	setObjectCamera('nonscope2', 'other')
end
if curStep == 1166 then
objectPlayAnimation('boom','dance',false)
end
if curStep == 1168 then
removeLuaSprite('nonscope', true); 
removeLuaSprite('nonscope2', true); 
removeLuaSprite('dogg', true); 
removeLuaSprite('dogg2', true); 
setProperty('hitmarkers.visible', true);
playSound('Sanic/HitMarkers')
end

if curStep == 1175 then
removeLuaSprite('nonscope2', true); 
end
if curStep == 1184 then
removeLuaSprite('hitmarkers',true)
end
if curStep == 1232 then
removeLuaSprite('boom', true); 
end
if curStep == 1544 then
setProperty('lentes2.visible', true);
doTweenX('lentes2Tween', 'lentes2',150,1.5, 'linear')
end
end

--Por Nickobelit
--(Talvez alguien vea ésto y diga que había una mejor forma pero yo lo hize así xd)
function onBeatHit()
if curBeat == 228 then
		triggerEvent("Add Camera Zoom",0.05,0.05)
	end
if curBeat == 232 then
		triggerEvent("Add Camera Zoom",0.05,0.05)
	end
if curBeat == 236 then
		triggerEvent("Add Camera Zoom",0.05,0.05)
	end
if curBeat == 240 then
		triggerEvent("Add Camera Zoom",0.05,0.05)
	end

if curBeat == 244 then
		triggerEvent("Add Camera Zoom",0.05,0.05)
	end

if curBeat == 248 then
		triggerEvent("Add Camera Zoom",0.05,0.05)
	end

if curBeat == 252 then
		triggerEvent("Add Camera Zoom",0.05,0.05)
	end

if curBeat == 256 then
		triggerEvent("Add Camera Zoom",0.05,0.05)
	end

if curBeat == 260 then
		triggerEvent("Add Camera Zoom",0.05,0.05)
	end

if curBeat == 264 then
		triggerEvent("Add Camera Zoom",0.05,0.05)
	end

if curBeat == 268 then
		triggerEvent("Add Camera Zoom",0.05,0.05)
	end

if curBeat == 272 then
		triggerEvent("Add Camera Zoom",0.05,0.05)
	end

if curBeat == 276 then
		triggerEvent("Add Camera Zoom",0.05,0.05)
	end

if curBeat == 280 then
		triggerEvent("Add Camera Zoom",0.05,0.05)
	end

if curBeat == 284 then
		triggerEvent("Add Camera Zoom",0.05,0.05)
	end

if curBeat == 288 then
		triggerEvent("Add Camera Zoom",0.05,0.05)
end
end

--Sin esto el mod ta bug xdd
--function onUpdate()
 --   setProperty('dad.scale.x',1)
  --  setProperty('dad.scale.y',1)
  --  setCharacterX('dad',700)
--    setCharacterY('dad',859)
      --  end

--El que robes es fan de Kunno