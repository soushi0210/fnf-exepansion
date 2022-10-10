function onCreate()
    makeLuaSprite('nopause', 'nopause', 0, 0)
    addLuaSprite('nopause')
    screenCenter('nopause', 'XY')
    setObjectCamera('nopause', 'hud')
    setProperty('nopause.alpha', 0)
end

function onPause()
    playSound('vine-boom' .. math.random(1, 3))
    setProperty('nopause.alpha', 1)
    runTimer('showpause', 1)
    return Function_Stop
end

function onTimerCompleted(tag, loops, loopsLeft)
    -- A loop from a timer you called has been completed, value "tag" is it's tag
    -- loops = how many loops it will have done when it ends completely
    -- loopsLeft = how many are remaining
    if tag == 'showpause' then
        doTweenAlpha('hidepause', 'nopause', 0, 0.5, 'linear')
    end
end