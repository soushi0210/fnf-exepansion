function onBeatHit()

     if curStep >= 0 and curStep < 763 then

        setProperty('timeBar.color', getColorFromHex('F68905'))-- tails 1
        setProperty('timeBar.angle', 180)
        setProperty('timeBarBG.angle', 180)
     end

     if curStep >= 763 and curStep < 827 then 

        setProperty('timeBar.color', getColorFromHex('FF0000'))-- starved 1
        setProperty('timeBar.angle', 180)
        setProperty('timeBarBG.angle', 180)
     end

     if curStep >= 827 then

        setProperty('timeBar.color', getColorFromHex('7485B9'))-- sonic dead
        setProperty('timeBar.angle', 180)
        setProperty('timeBarBG.angle', 180)
     end
end