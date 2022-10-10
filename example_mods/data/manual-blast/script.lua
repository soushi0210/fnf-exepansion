function onUpdate(elapsed)
	if curStep == 527 then
		doTweenAlpha('mountain','mountain', 0, 2, 'linear')
		doTweenAlpha('waterfall','waterfall', 0, 3, 'linear')
		doTweenAlpha('hill','hill', 0, 4, 'linear')
		doTweenAlpha('trees','trees', 0, 5, 'linear')
		doTweenAlpha('floor','floor', 0, 6, 'linear')
		doTweenAlpha('rocks','rocks', 0, 7, 'linear')
		doTweenAlpha('light','light', 0, 8, 'linear')
	end
	if curStep >= 863 then
		setProperty('mountain.alpha', 0);
		setProperty('waterfall.alpha', 0); 
		setProperty('hill.alpha', 0);
		setProperty('trees.alpha', 0);
		setProperty('floor.alpha', 0);
		setProperty('rocks.alpha', 0);
		setProperty('light.alpha', 0);

		setProperty('mountain2.alpha', 1);
		setProperty('waterfall2.alpha', 1); 
		setProperty('hill2.alpha', 1);
		setProperty('trees2.alpha', 1);
		setProperty('floor2.alpha', 1);
		setProperty('rocks2.alpha', 1);
		setProperty('light2.alpha', 1);	
		setPropertyFromGroup('opponentStrums',0,'alpha',0)
		setPropertyFromGroup('opponentStrums',1,'alpha',0)
		setPropertyFromGroup('opponentStrums',2,'alpha',0)
		setPropertyFromGroup('opponentStrums',3,'alpha',0)
	end
	if curStep == 4671 then
		addLuaSprite('white', false);
		setProperty('rocks2.alpha', 0);
		setProperty('light2.alpha', 0);
	end
	if curStep == 4943 then
		setProperty('white.alpha', 0)
		setProperty('mountain2.alpha', 0);
		setProperty('waterfall2.alpha', 0); 
		setProperty('hill2.alpha', 0);
		setProperty('trees2.alpha', 0);
		setProperty('floor2.alpha', 0);
		setProperty('rocks2.alpha', 0);
		setProperty('light2.alpha', 0);	
		setProperty('mountain.alpha', 1);
		setProperty('waterfall.alpha', 1); 
		setProperty('hill.alpha', 1);
		setProperty('trees.alpha', 1);
		setProperty('floor.alpha', 1);
		setProperty('rocks.alpha', 1);
		setProperty('light.alpha', 1);	
	end
end