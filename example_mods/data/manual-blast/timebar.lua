function onBeatHit()

     if curStep >= 0 and curStep < 207 then 

        setProperty('timeBar.color', getColorFromHex('214CB0'))-- hog normal
     end

     if curStep >= 207 and curStep < 226 then 

        setProperty('timeBar.color', getColorFromHex('0ADF03'))-- you
     end

     if curStep >= 226 and curStep < 295 then 

        setProperty('timeBar.color', getColorFromHex('214CB0'))-- hog normal 2
     end

     if curStep >= 295 and curStep < 315 then 

        setProperty('timeBar.color', getColorFromHex('0ADF03'))-- you 2
     end

     if curStep >= 315 and curStep < 383 then 

        setProperty('timeBar.color', getColorFromHex('214CB0'))-- hog normal 3
     end

     if curStep >= 383 and curStep < 511 then 

        setProperty('timeBar.color', getColorFromHex('FE880A'))-- duo hog

     end

     if curStep >= 511 and curStep < 863 then 

        setProperty('timeBar.color', getColorFromHex('FF0000'))-- hog?

     end

     if curStep >= 863 and curStep < 4127 then 

        setProperty('timeBar.color', getColorFromHex('444F93'))-- scorched

     end

     if curStep >= 4127 and curStep < 5042 then 

        setProperty('timeBar.color', getColorFromHex('5A449A'))--  scorched glitched

     end


end