function onCreate()
	makeLuaSprite('flashEvent', '', 0, 0);
	setObjectCamera('flashEvent','hud')
end
function onEvent(name,v1,v2)
	if name == 'Flash' then
		if v1 ~= '' then
			doTweenAlpha('byeFlashE','flashEvent',0,v1,'linear')
		else
			doTweenAlpha('byeFlashE','flashEvent',0,1,'linear')
		end
		if v2 ~= '' then
			makeGraphic('flashEvent',screenWidth,screenHeight,v2)
		else
			makeGraphic('flashEvent',screenWidth,screenHeight,'FFFFFF')
		end
		if string.find(string.lower(v2),'ahead:true',0,true) ~= nil then
			addLuaSprite('flashEvent', true);
		else
			addLuaSprite('flashEvent', false);
		end 
		setProperty('flashEvent.alpha',1)


	end
end
function onTweenCompleted(name)
	if name == 'byeFlashE' then
		removeLuaSprite('flashEvent',false)
	end
end