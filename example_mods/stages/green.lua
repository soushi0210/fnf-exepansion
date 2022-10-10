function onCreate()
	-- background shit

	-- part 1

	makeLuaSprite('sky', 'hog/bg', -1165, -575);
	scaleObject('sky',1.8, 2.3);

	makeAnimatedLuaSprite('hill', 'hog/HillsandHills', -358, 225);
	scaleObject('hill',1.0, 1.0);

	makeAnimatedLuaSprite('you', 'hog/TargetLock', 753, 425);
	scaleObject('you',1.0, 1.0);

	makeLuaSprite('light', 'hog/overlay', -1595, -715);
	scaleObject('light',1.5, 1.6);

	makeLuaSprite('mountain', 'hog/motains', -900, 55);
	scaleObject('mountain',1.0, 1.0);

	makeAnimatedLuaSprite('waterfall', 'hog/Waterfalls', -958, 215);
	scaleObject('waterfall',1.0, 1.0);

	makeLuaSprite('rocks', 'hog/rocks', -630, 600);
    setLuaSpriteScrollFactor('rocks', 0.9, 0.9);
	scaleObject('rocks',1.0, 1.0);

	makeLuaSprite('trees', 'hog/trees', -545, -135);
	scaleObject('trees',1.0, 1.0);

	makeLuaSprite('floor', 'hog/floor', -1295, 695);
	scaleObject('floor',1.5, 1.0);

	--part 2

	makeLuaSprite('sky2', 'hog/Part 2/bg', -1165, -575);
	scaleObject('sky2',1.8, 2.3);

	makeAnimatedLuaSprite('hill2', 'hog/Part 2/HillsandHills', -358, 225);
	scaleObject('hill2',1.0, 1.0);

	makeLuaSprite('light2', 'hog/Part 2/overlay', -1595, -715);
	scaleObject('light2',1.5, 1.6);

	makeLuaSprite('mountain2', 'hog/Part 2/motains', -900, 55);
	scaleObject('mountain2',1.0, 1.0);

	makeAnimatedLuaSprite('waterfall2', 'hog/Part 2/Waterfalls', -958, 215);
	scaleObject('waterfall2',1.0, 1.0);

	makeLuaSprite('rocks2', 'hog/Part 2/rocks', -630, 600);
    setLuaSpriteScrollFactor('rocks2', 0.9, 0.9);
	scaleObject('rocks2',1.0, 1.0);

	makeLuaSprite('trees2', 'hog/Part 2/trees', -545, -135);
	scaleObject('trees2',1.0, 1.0);

	makeLuaSprite('floor2', 'hog/Part 2/floor', -1295, 695);
	scaleObject('floor2',1.5, 1.0);

	makeLuaSprite('black', 'blackscreen', -945, -255);
	scaleObject('black',1.0, 1.0);

	makeLuaSprite('white', 'flash', -1165, -575);
	scaleObject('white',3, 3);

	addLuaSprite('mountain', false);
	addLuaSprite('waterfall', false); 
	addAnimationByPrefix('waterfall', 'idle', 'British', 15, true);
	addLuaSprite('hill', false);
    addAnimationByPrefix('hill', 'idle', 'DumbassMF',9, true);
    addLuaSprite('trees', false);
	addLuaSprite('floor', false);
    addLuaSprite('rocks', true);
	addLuaSprite('light', true);

	addLuaSprite('mountain2', false);
	addLuaSprite('waterfall2', false); 
	addAnimationByPrefix('waterfall2', 'idle', 'British', 15, true);
	addLuaSprite('hill2', false);
	addAnimationByPrefix('hill2', 'idle', 'DumbassMF',9, true);
	addLuaSprite('trees2', false);
	addLuaSprite('floor2', false);
	addLuaSprite('rocks2', true);
	addLuaSprite('light2', true);

	setProperty('mountain2.alpha', 0);
	setProperty('waterfall2.alpha', 0); 
	setProperty('hill2.alpha', 0);
    setProperty('trees2.alpha', 0);
	setProperty('floor2.alpha', 0);
    setProperty('rocks2.alpha', 0);
	setProperty('light2.alpha', 0);




      removeLuaSprite('you', false)
      removeAnimationByPrefix('you', 'idle', 'TargetLock',27, true);
      removeLuaSprite('black', false)

	
end
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

		

function onBeatHit()
		if curStep >= 208 and curStep < 227 then
            addLuaSprite('you',true)
            addAnimationByPrefix('you', 'idle', 'TargetLock',27, true);
		end 
		if curStep >= 227 and curStep < 302 then
            removeLuaSprite('you',true)
            removeAnimationByPrefix('you', 'idle', 'TargetLock',27, true);
		end 
		if curStep >= 302 and curStep < 319 then
            addLuaSprite('you',true)
            addAnimationByPrefix('you', 'idle', 'TargetLock',27, true);
		end 
		if curStep >= 319 then
            removeLuaSprite('you',true)
            removeAnimationByPrefix('you', 'idle', 'TargetLock',27, true);
		end 

		if curStep >= 864 and curStep < 5039 then
            removeLuaSprite('sky', false);
	      removeLuaSprite('mountain', false);
	      removeLuaSprite('waterfall', false); 
	      removeAnimationByPrefix('waterfall', 'idle', 'British', 15, true);
	      removeLuaSprite('hill', false);
            removeAnimationByPrefix('hill', 'idle', 'DumbassMF',9, true);
            removeLuaSprite('trees', false);
	      removeLuaSprite('floor', false);
            removeLuaSprite('rocks', true);
	      removeLuaSprite('light', true);
            addLuaSprite('black',false)
		end 

end



