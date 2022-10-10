function onUpdate()
   setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - 317.5)
   setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - 317.5)
   setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - 317.5)
   setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - 317.5)
   setPropertyFromGroup('opponentStrums', 0, 'x', defaultPlayerStrumX0 + 1000)
   setPropertyFromGroup('opponentStrums', 1, 'x', defaultPlayerStrumX1 + 1000)
   setPropertyFromGroup('opponentStrums', 2, 'x', defaultPlayerStrumX2 + 1000)
   setPropertyFromGroup('opponentStrums', 3, 'x', defaultPlayerStrumX3 + 1000)
   setPropertyFromGroup('opponentStrums', 0, 'y', defaultPlayerStrumY0 + 1000)
   setPropertyFromGroup('opponentStrums', 1, 'y', defaultPlayerStrumY1 + 1000)
   setPropertyFromGroup('opponentStrums', 2, 'y', defaultPlayerStrumY2 + 1000)
   setPropertyFromGroup('opponentStrums', 3, 'y', defaultPlayerStrumY3 + 1000)
   noteTweenAlpha('pl1', 4, 0.65, 0.00001, 'static')
   noteTweenAlpha('pl2', 5, 0.65, 0.00001, 'static')
   noteTweenAlpha('pl3', 6, 0.65, 0.00001, 'static')
   noteTweenAlpha('pl4', 7, 0.65, 0.00001, 'static')
end
function onCreate()
   makeLuaSprite('towers', 'hedgehog-stew/towers', -400, -215);
	setScrollFactor('towers', 0.75, 0.75);
	scaleObject('towers', 1.47, 1.4);
   makeLuaSprite('city', 'hedgehog-stew/city', -400, -225);
	setScrollFactor('city', 0.75, 0.75);
	scaleObject('city', 1.47, 1.4);
   makeLuaSprite('stage', 'hedgehog-stew/stage', -400, -275);
	scaleObject('stage', 1.47, 1.4);
   makeLuaSprite('blackscreen', 'hedgehog-stew/blackscreen', -400, -275);
	scaleObject('blackscreen', 1.47, 1.4);
   makeLuaSprite('sonicisfuckingdead', 'hedgehog-stew/sonicisfuckingdead', 130, 50);
	scaleObject('sonicisfuckingdead', 0.6, 0.6);
   makeLuaSprite('light', 'hedgehog-stew/light', -258, -300);
	scaleObject('light', 1, 1);
   addLuaSprite('city', false);
	addLuaSprite('towers', false);
	addLuaSprite('stage', false);
	addLuaSprite('light', true);
   setProperty('boyfriend.alpha', 0)
   setProperty('gf.alpha', 0)
end
function onBeatHit()
   if curStep >= 0 then
      if downscroll == true then
         setProperty('timeBar.y', 41)
         setProperty('timeBarBG.y', 41)
         setProperty('timeTxt.y', 25)
         setProperty('scoreTxt.y', 61)
      else
         setProperty('timeBar.y', 661)
         setProperty('timeBarBG.y', 661)
         setProperty('timeTxt.y', 645)
      end
      setProperty('timeBar.color', getColorFromHex('F68905'))-- tails 1
      setProperty('timeBar.angle', 180)
      setProperty('timeBarBG.angle', 180)
   end
end
function onEvent(n,v1,v2)
   if n == "redpeeps" and v1 == 'no' then
      setProperty('sonicisfuckingdead.color', getColorFromHex( v2 ));
      setProperty('boyfriend.color', getColorFromHex( v2 ));
      setProperty('gf.color', getColorFromHex( v2 ));
      setProperty('city.alpha', 0);
      setProperty('towers.alpha', 0);
      setProperty('stage.alpha', 0);
      setProperty('timeBar.color', getColorFromHex( v2 ))
      cameraFlash('camGame', v2, 0.5, true)
      setProperty('light.alpha', 0);
      if dad == 'starved' or dad == 'starved-pixel' then
         setProperty('dad.color', getColorFromHex('FFFFFF'));
      else
         setProperty('dad.color', getColorFromHex('FF0000'));
      end
   end
   if n == "redpeeps" and v1 ~= 'no' then
      if v1 == 0 then
         cameraFlash('camGame', 'FFFFFF', 0.5, true)
      else
      --nothing
      end
      doTweenColor('sonicisfuckingdead','sonicisfuckingdead', 'FFFFFF', v1, 'linear')
      doTweenColor('dad','dad', 'FFFFFF', v1, 'linear')
      doTweenColor('boyfriend','boyfriend', 'FFFFFF', v1, 'linear')
      doTweenColor('gf','gf', 'FFFFFF', v1, 'linear')
      doTweenAlpha('light','light', 1, v1, 'linear')
      doTweenAlpha('stage','stage', 1, v1, 'linear')
      doTweenAlpha('towers','towers', 1, v1, 'linear')
      doTweenAlpha('city','city', 1, v1, 'linear')
   end
end

