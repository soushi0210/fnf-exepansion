---------------------------------
--popcats settings
local Left = 'C24B99'
local Right = 'F9393F'
local Up = '12FA05'
local Down = '00FFFF'
local tweentime = 1
local ease = 'elasticOut'
local basecolor = 'FFFFFF'
local basecoloricon = '31B0D1'
--end of settings
---------------------------------
function onCreatePost()
    doTweenColor('icon1', 'iconP1', basecoloricon, tweentime, ease)
end

function goodNoteHit()
    if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' or getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
        doTweenColor('bfColorTween', 'boyfriend', Left, tweentime, ease)
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[4], 0.1, 0xFFC24B99, 0xFFC24B99, {ease: FlxEase.expoInOut});]])
		runHaxeCode([[FlxTween.color(game.strumLineNotes.members[5], 0.1, 0xFFC24B99, 0xFFC24B99, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[6], 0.1, 0xFFC24B99, 0xFFC24B99, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[7], 0.1, 0xFFC24B99, 0xFFC24B99, {ease: FlxEase.expoInOut});]])
            elseif getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' or getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
                doTweenColor('bfColorTween', 'boyfriend', Right, tweentime, ease)
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[4], 0.1, 0xFFF9393F, 0xFFF9393F, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[5], 0.1, 0xFFF9393F, 0xFFF9393F, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[6], 0.1, 0xFFF9393F, 0xFFF9393F, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[7], 0.1, 0xFFF9393F, 0xFFF9393F, {ease: FlxEase.expoInOut});]])
            elseif getProperty('boyfriend.animation.curAnim.name') == 'singUP' or getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                doTweenColor('bfColorTween', 'boyfriend', Up, tweentime, ease)
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[4], 0.1, 0xFF12FA05, 0xFF12FA05, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[5], 0.1, 0xFF12FA05, 0xFF12FA05, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[6], 0.1, 0xFF12FA05, 0xFF12FA05, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[7], 0.1, 0xFF12FA05, 0xFF12FA05, {ease: FlxEase.expoInOut});]])
            elseif getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' or getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                doTweenColor('bfColorTween', 'boyfriend', Down, tweentime, ease)
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[4], 0.1, 0xFF00FFFF, 0xFF00FFFF, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[5], 0.1, 0xFF00FFFF, 0xFF00FFFF, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[6], 0.1, 0xFF00FFFF, 0xFF00FFFF, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[7], 0.1, 0xFF00FFFF, 0xFF00FFFF, {ease: FlxEase.expoInOut});]])
    end
end

function opponentNoteHit()
	if getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
    	doTweenColor('dadColorTween', 'dad', Left, tweentime, ease)
	    runHaxeCode([[FlxTween.color(game.strumLineNotes.members[0], 0.1, 0xFFC24B99, 0xFFC24B99, {ease: FlxEase.expoInOut});]])
	    runHaxeCode([[FlxTween.color(game.strumLineNotes.members[1], 0.1, 0xFFC24B99, 0xFFC24B99, {ease: FlxEase.expoInOut});]])
	    runHaxeCode([[FlxTween.color(game.strumLineNotes.members[2], 0.1, 0xFFC24B99, 0xFFC24B99, {ease: FlxEase.expoInOut});]])
	    runHaxeCode([[FlxTween.color(game.strumLineNotes.members[3], 0.1, 0xFFC24B99, 0xFFC24B99, {ease: FlxEase.expoInOut});]])
            elseif getProperty('dad.animation.curAnim.name') == 'singRIGHT' or getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                doTweenColor('dadColorTween', 'dad', Right, tweentime, ease)
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[0], 0.1, 0xFFF9393F, 0xFFF9393F, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[1], 0.1, 0xFFF9393F, 0xFFF9393F, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[2], 0.1, 0xFFF9393F, 0xFFF9393F, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[3], 0.1, 0xFFF9393F, 0xFFF9393F, {ease: FlxEase.expoInOut});]])
            elseif getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                doTweenColor('dadColorTween', 'dad', Up, tweentime, ease)
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[0], 0.1, 0xFF12FA05, 0xFF12FA05, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[1], 0.1, 0xFF12FA05, 0xFF12FA05, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[2], 0.1, 0xFF12FA05, 0xFF12FA05, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[3], 0.1, 0xFF12FA05, 0xFF12FA05, {ease: FlxEase.expoInOut});]])
            elseif getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                doTweenColor('dadColorTween', 'dad', Down, tweentime, ease)
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[0], 0.1, 0xFF00FFFF, 0xFF00FFFF, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[1], 0.1, 0xFF00FFFF, 0xFF00FFFF, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[2], 0.1, 0xFF00FFFF, 0xFF00FFFF, {ease: FlxEase.expoInOut});]])
    	runHaxeCode([[FlxTween.color(game.strumLineNotes.members[3], 0.1, 0xFF00FFFF, 0xFF00FFFF, {ease: FlxEase.expoInOut});]])
            end
        end

function onBeatHit(onBeatHit)
	if getProperty('dad.animation.curAnim.name') == 'idle' then
    	doTweenColor('dadColorTween', 'dad', basecolor, 0.5, ease)
		runHaxeCode([[FlxTween.color(game.strumLineNotes.members[0], 0.1, 0xFFFFFFFF, 0xFFFFFFFF, {ease: FlxEase.expoInOut});]])
		runHaxeCode([[FlxTween.color(game.strumLineNotes.members[1], 0.1, 0xFFFFFFFF, 0xFFFFFFFF, {ease: FlxEase.expoInOut});]])
    		runHaxeCode([[FlxTween.color(game.strumLineNotes.members[2], 0.1, 0xFFFFFFFF, 0xFFFFFFFF, {ease: FlxEase.expoInOut});]])
		runHaxeCode([[FlxTween.color(game.strumLineNotes.members[3], 0.1, 0xFFFFFFFF, 0xFFFFFFFF, {ease: FlxEase.expoInOut});]])
	end
	if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
    	doTweenColor('bfColorTween', 'boyfriend', basecolor, 0.5, ease)
		runHaxeCode([[FlxTween.color(game.strumLineNotes.members[4], 0.1, 0xFFFFFFFF, 0xFFFFFFFF, {ease: FlxEase.expoInOut});]])
		runHaxeCode([[FlxTween.color(game.strumLineNotes.members[5], 0.1, 0xFFFFFFFF, 0xFFFFFFFF, {ease: FlxEase.expoInOut});]])
		runHaxeCode([[FlxTween.color(game.strumLineNotes.members[6], 0.1, 0xFFFFFFFF, 0xFFFFFFFF, {ease: FlxEase.expoInOut});]])
		runHaxeCode([[FlxTween.color(game.strumLineNotes.members[7], 0.1, 0xFFFFFFFF, 0xFFFFFFFF, {ease: FlxEase.expoInOut});]])
	end
end