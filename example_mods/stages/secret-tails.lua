function onCreate()
	-- background shit
	makeLuaSprite('backwall', 'secret/bg', -200, -200);
      scaleObject('backwall', 0.8, 0.8);
	
	makeLuaSprite('desk', 'secret/desk', -50, -100);
      scaleObject('desk', 0.7, 0.7);

	makeLuaSprite('robot', 'secret/robo-tails', -170, -100);
      scaleObject('robot', 0.7, 0.7);

	makeLuaSprite('box', 'secret/boxes 1', -170, -100);
      scaleObject('box', 0.7, 0.7);

	makeLuaSprite('crate', 'secret/boxes 2', 10, -100);
      scaleObject('crate', 0.7, 0.7);

	-- sprites that only load if Low Quality is turned off

	addLuaSprite('backwall', false);
	addLuaSprite('box', false);
	addLuaSprite('robot', false);
	addLuaSprite('desk', false);
	addLuaSprite('crate', false);

	
end

function onBeatHit()

     if curStep >= 0 and curStep < 1215 then 

        setProperty('timeBar.color', getColorFromHex('FFA047'))-- tails 1
     end

     if curStep >= 1215 and curStep < 1343 then 

        setProperty('timeBar.color', getColorFromHex('FF7CE9'))-- amy
     end

     if curStep >= 1343 and curStep < 1471 then 

        setProperty('timeBar.color', getColorFromHex('2060FF'))-- sonic
     end

     if curStep >= 1471 then 

        setProperty('timeBar.color', getColorFromHex('FFA047'))-- tails finale 
     end

end

