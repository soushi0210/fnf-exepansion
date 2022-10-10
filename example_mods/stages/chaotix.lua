function onCreate()
	-- background shit
      makeAnimatedLuaSprite('bg', 'chaotix/chaotixx', 350, -235);
      scaleObject('bg', 6.0, 6.5);
      setProperty('bg.antialiasing', false);

      addLuaSprite('bg', false);
      addAnimationByPrefix('bg', 'idle', 'chaotix gf',34, true)
     
end

function onBeatHit()

     if curStep >= 0 and curStep < 721 then 

        setProperty('timeBar.color', getColorFromHex('FF0064'))-- fake chaotix
     end

     if curStep >= 721 and curStep < 843 then 

        setProperty('timeBar.color', getColorFromHex('FF0000'))-- transformation
     end

     if curStep >= 843 then 

        setProperty('timeBar.color', getColorFromHex('BBBBBB'))-- Chaotix
     end

end
