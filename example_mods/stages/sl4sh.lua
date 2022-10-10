function onCreate()
	-- background shit
      makeLuaSprite('sky', 'sl4sh/sky', -940, -965);
    setLuaSpriteScrollFactor('sky', 0.4, 0.4);
      scaleObject('sky', 1.3, 1.3);
      setProperty('sky.antialiasing', false);

      makeLuaSprite('plat', 'sl4sh/plataform', -820, -765);
      scaleObject('plat', 1.3, 1.3);
      setProperty('plat.antialiasing', false);


      addLuaSprite('sky', false);
      addLuaSprite('plat', false);
      
end

function onBeatHit()

     if curStep >= 0 and curStep < 767 then 

        setProperty('timeBar.color', getColorFromHex('9B8556'))-- sl4sh
     end

     if curStep >= 767 and curStep < 835 then 

        setProperty('timeBar.color', getColorFromHex('897343'))-- first person sl4sh
     end

     if curStep >= 835 and curStep < 841 then 

        setProperty('timeBar.color', getColorFromHex('FF0000'))-- warning
     end

     if curStep >= 841 and curStep < 882 then 

        setProperty('timeBar.color', getColorFromHex('897343'))-- first person sl4sh
     end

     if curStep >= 882 and curStep < 887 then 

        setProperty('timeBar.color', getColorFromHex('FF0000'))-- warning
     end

     if curStep >= 887 and curStep < 947 then 

        setProperty('timeBar.color', getColorFromHex('897343'))-- first person sl4sh
     end

     if curStep >= 947 and curStep < 951 then 

        setProperty('timeBar.color', getColorFromHex('FF0000'))-- warning
     end

     if curStep >= 950 and curStep < 982 then 

        setProperty('timeBar.color', getColorFromHex('897343'))-- first person sl4sh
     end

     if curStep >= 982 and curStep < 988 then 

        setProperty('timeBar.color', getColorFromHex('FF0000'))-- warning
     end

     if curStep >= 988 and curStep < 1001 then 

        setProperty('timeBar.color', getColorFromHex('897343'))-- first person sl4sh
     end

     if curStep >= 1001 and curStep < 1006 then 

        setProperty('timeBar.color', getColorFromHex('FF0000'))-- warning
     end

     if curStep >= 1006 and curStep < 1011 then 

        setProperty('timeBar.color', getColorFromHex('897343'))-- first person sl4sh
     end

     if curStep >= 1011 and curStep < 1015 then 

        setProperty('timeBar.color', getColorFromHex('FF0000'))-- warning
     end

     if curStep >= 1015 and curStep < 1023 then 

        setProperty('timeBar.color', getColorFromHex('897343'))-- first person sl4sh
     end

     if curStep >= 1023 then 

        setProperty('timeBar.color', getColorFromHex('9B8556'))-- sl4sh
     end

end
