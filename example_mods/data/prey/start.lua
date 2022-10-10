function onCreate()
    setProperty('boyfriend.alpha', 0)
end
function onUpdate(elapsed)
    if curStep == 32 then
        doTweenAlpha('boyfriend', 'boyfriend', 1, 5, 'linear')
    end
end