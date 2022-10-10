function onStepHit()
	if curStep == 1547 then
		doTweenX("dad", "dad", 1800, 2.4, "linear")	
			end
	if curStep == 1512 then
		doTweenX("dad", "dad", -1100, 3.4, "linear")	
				end
	if curStep == 248 then
      doTweenX("dad", "dad", 1100, 0.7, "linear")	
	  doTweenAlpha('hud', 'camHUD', 1, 1, 'linear')
	  doTweenColor('timeBar', 'timeBar', '004AEA ', 0.5, 'circOut')
	end
	if curStep == 1546 then
		doTweenX("dad", "dad", 1800, 2.4, "linear")	
			end
	if curStep == 3335 then
		doTweenX("dad", "dad", -1800, 3.4, "linear")	
		end
	if curStep == 2448 then
		if not lowQuality then
		makeAnimatedLuaSprite('Furnace_sheet','starved/Furnace_sheet',500,1025)
		addAnimationByPrefix('Furnace_sheet','idle','Furnace idle',24,true)
		scaleObject('Furnace_sheet',5,5)
		addLuaSprite('Furnace_sheet',false)	
		doTweenX("Furnace_sheet", "Furnace_sheet", 3900, 5.4, "linear")	
		end
	end
	if curStep == 3360 then
		if not lowQuality then
		makeLuaSprite('furnace_gotcha', 'starved/furnace_gotcha', 2300, 300);
		setLuaSpriteScrollFactor('furnace_gotcha', 0.2, 0.2);
		scaleObject('furnace_gotcha', 5.2, 5.2);
		addLuaSprite('furnace_gotcha', false);
		doTweenX("furnace_gotcha", "furnace_gotcha", -2900, 1.5, "linear")	
		end
		if curStep == 1544 then
			doTweenX("dad", "dad", 1800, 2.4, "linear")	
		end
	end

end
