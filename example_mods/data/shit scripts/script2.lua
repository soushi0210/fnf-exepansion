if curStep > 976 then
    function onCreatePost()
        doTweenColor('icon1', 'iconP1', basecoloricon, tweentime, ease)
    end
    function goodNoteHit()
        if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' or getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
            doTweenColor('bfColorTween', 'boyfriend', Left, tweentime, ease)
            elseif getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' or getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
                doTweenColor('bfColorTween', 'boyfriend', Right, tweentime, ease)
            elseif getProperty('boyfriend.animation.curAnim.name') == 'singUP' or getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                doTweenColor('bfColorTween', 'boyfriend', Up, tweentime, ease)
               elseif getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' or getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                doTweenColor('bfColorTween', 'boyfriend', Down, tweentime, ease)
        end
    end

    function opponentNoteHit()
        if getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
            doTweenColor('dadColorTween', 'dad', Left, tweentime, ease)
            elseif getProperty('dad.animation.curAnim.name') == 'singRIGHT' or getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                doTweenColor('dadColorTween', 'dad', Right, tweentime, ease)
            elseif getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                doTweenColor('dadColorTween', 'dad', Up, tweentime, ease)
            elseif getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                doTweenColor('dadColorTween', 'dad', Down, tweentime, ease)
        end
    end

    function onBeatHit(onBeatHit)
        if getProperty('dad.animation.curAnim.name') == 'idle' then
            doTweenColor('dadColorTween', 'dad', basecolor, 0.5, ease)
        end
        if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
            doTweenColor('bfColorTween', 'boyfriend', basecolor, 0.5, ease)
        end
    end
end