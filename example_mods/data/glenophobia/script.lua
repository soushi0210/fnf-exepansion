camFollowOffset = 25
camFollowMovement = {gf = true, dad = true, bf = true}

local lastMustHit

local Left = 'FFFFFF'
local Right = 'FFFFFF'
local Up = 'FFFFFF'
local Down = 'FFFFFF'
local tweentime = 1
local ease = 'elasticOut'
local basecolor = 'FFFFFF'
local basecoloricon = '31B0D1'

local meme = 0

local function nativeFollow(IsDad)
    if getProperty('gf.active') ~= 'gf.active' and gfSection then
        local camPos, camOffset = getProperty('gf.cameraPosition'),
                                  getProperty('girlfriendCameraOffset')
        setProperty('camFollow.x', getMidpointX('gf') + camPos[1] + camOffset[1])
        setProperty('camFollow.y', getMidpointY('gf') + camPos[2] + camOffset[2])
    else
        runHaxeCode('PlayState.instance.moveCamera(' .. tostring(IsDad) .. ');')
    end
end

local function follow(isDad, dir)
    if (gfSection and not camFollowMovement.gf) or
        (isDad and not camFollowMovement.dad) or
        (not isDad and not camFollowMovement.bf) then return end

    nativeFollow(isDad)

    local x, y = getProperty('camFollow.x'), getProperty('camFollow.y')
    if dir == 0 then
        triggerEvent('Camera Follow Pos', x - camFollowOffset, y)
    elseif dir == 3 then
        triggerEvent('Camera Follow Pos', x + camFollowOffset, y)
    elseif dir == 2 then
        triggerEvent('Camera Follow Pos', x, y - camFollowOffset)
    elseif dir == 1 then
        triggerEvent('Camera Follow Pos', x, y + camFollowOffset)
    end
end

function onCreatePost()
	lastMustHit = mustHitSection

	circle = 0;
	text = 0;

	precacheImage(circle);
	precacheImage(text);

	--set images
	if songName == 'glenophobia' then
		circle = 'StartScreens/Circle-glenophobia';
		text = 'StartScreens/text-glenophobia';
	end

	makeLuaSprite('bg', nil, 0, 0);
	makeGraphic('bg', 5000, 3000, '000000');
	setObjectCamera('bg', 'other');
	addLuaSprite('bg', true);
	
	if downscroll == true then
	setProperty('scoreTxt.y', 25)
	end
end

function onSongStart()
	if downscroll == true then
		noteTweenY("NoteMove5", 0, defaultOpponentStrumY0 + 200, 0.5, 'quadinout')
		noteTweenY("NoteMove6", 1, defaultOpponentStrumY1 + 200, 0.5, 'quadinout')
		noteTweenY("NoteMove7", 2, defaultOpponentStrumY2 + 200, 0.5, 'quadinout')
		noteTweenY("NoteMove8", 3, defaultOpponentStrumY3 + 200, 0.5, 'quadinout')

		noteTweenY("NoteMove13", 4, defaultPlayerStrumY0 + 200, 0.5, 'quadinout')
		noteTweenY("NoteMove14", 5, defaultPlayerStrumY1 + 200, 0.5, 'quadinout')
		noteTweenY("NoteMove15", 6, defaultPlayerStrumY2 + 200, 0.5, 'quadinout')
		noteTweenY("NoteMove16", 7, defaultPlayerStrumY3 + 200, 0.5, 'quadinout')
	else
		noteTweenY("NoteMove5", 0, defaultOpponentStrumY0 - 200, 0.5, 'quadinout')
		noteTweenY("NoteMove6", 1, defaultOpponentStrumY1 - 200, 0.5, 'quadinout')
		noteTweenY("NoteMove7", 2, defaultOpponentStrumY2 - 200, 0.5, 'quadinout')
		noteTweenY("NoteMove8", 3, defaultOpponentStrumY3 - 200, 0.5, 'quadinout')

		noteTweenY("NoteMove13", 4, defaultPlayerStrumY0 - 200, 0.5, 'quadinout')
		noteTweenY("NoteMove14", 5, defaultPlayerStrumY1 - 200, 0.5, 'quadinout')
		noteTweenY("NoteMove15", 6, defaultPlayerStrumY2 - 200, 0.5, 'quadinout')
		noteTweenY("NoteMove16", 7, defaultPlayerStrumY3 - 200, 0.5, 'quadinout')
	end

	setObjectOrder('bg', 0);

	--add objects
	if circle == 0 and text == 0 then
		removeLuaSprite('bg', true);
	else
		makeLuaSprite('Circle', circle, 1200, 0);
		setObjectCamera('Circle', 'other');
		scaleObject('Circle', 1, 1);
		addLuaSprite('Circle', true);

		makeLuaSprite('Text', text, -1200, 0);
		setObjectCamera('Text', 'other');
		scaleObject('Text', 1, 1);
		addLuaSprite('Text', true);
	end

	doTweenX('MoveCircle', 'Circle', 0, 0.8, 'quadinout');
	doTweenX('MoveText', 'Text', 0, 0.8, 'quadinout');
end

function onTweenCompleted(tag)
	if tag == 'MoveCircle' then
		runTimer('pause', 1.2);
	end
	if tag == 'byeBG' then
		removeLuaSprite('bg', true);
	end
	if tag == 'byeCircle' then
		removeLuaSprite('Circle', true);
	end
	if tag == 'byeText' then
		removeLuaSprite('Text', true);
	end
end

function onTimerCompleted(tag)
	if tag == 'pause' then
		doTweenAlpha('byeBG', 'bg', 0, 1.5, 'linear');
		doTweenAlpha('byeCircle', 'Circle', 0, 1.5, 'linear');
		doTweenAlpha('byeText', 'Text', 0, 1.5, 'linear');
	end
		if tag == 'faders' then
		removeLuaSprite('warrn', false);
	end
end

function onStepHit()
	if curStep > 76 then
		noteTweenY("NoteMove5", 0, defaultOpponentStrumY0, 0.5, 'quadout')
		noteTweenY("NoteMove6", 1, defaultOpponentStrumY1, 0.5, 'quadout')
		noteTweenY("NoteMove7", 2, defaultOpponentStrumY2, 0.5, 'quadout')
		noteTweenY("NoteMove8", 3, defaultOpponentStrumY3, 0.5, 'quadout')
	end	
	if curStep > 138 and curStep < 332 then
		noteTweenY("NoteMove9", 4, defaultPlayerStrumY0, 0.5, 'quadout')
		noteTweenY("NoteMove10", 5, defaultPlayerStrumY1, 0.5, 'quadout')
		noteTweenY("NoteMove11", 6, defaultPlayerStrumY2, 0.5, 'quadout')
		noteTweenY("NoteMove12", 7, defaultPlayerStrumY3, 0.5, 'quadout')
	end	
	if curStep > 336 and curStep < 972 or curStep > 1294  then
		for i = 4,7 do
			noteTweenDirection('toDownScroll'..i, i, 270, 0.1)
			noteTweenY('toDownNote'..i, i, (downscroll and 50 or 530), 0.25)
			noteTweenAngle('tweenAngle360'..i, i, 360, 0.25)
		end
	end
	if curStep > 976 and curStep < 980 then
		for i = 4,7 do
			noteTweenDirection('toUpScroll'..i, i, 90, 0.1)
			noteTweenY('toUpNote'..i, i, (downscroll and 530 or 50), 0.25)
			if downscroll == false then
				noteTweenAngle('tweenAngle1080'..i, i, 1080, 0.25)
			end
		end
	end
	if downscroll == true then
		if curStep > 980 and curStep < 1290 then
			noteTweenY("NoteMove9", 4, defaultPlayerStrumY0, 0.5, 'quadout')
			noteTweenY("NoteMove10", 5, defaultPlayerStrumY1, 0.5, 'quadout')
			noteTweenY("NoteMove11", 6, defaultPlayerStrumY2, 0.5, 'quadout')
			noteTweenY("NoteMove12", 7, defaultPlayerStrumY3, 0.5, 'quadout')
		end	
		if curStep > 976 and curStep < 1294 then
			for i = 4,7 do
				noteTweenAngle('tweenAngle1080'..i, i, 1080, 0.25)
			end
		end
	end
	if curStep > 976 and curStep < 1294 then
		Left = 'C24B99'
		Right = 'F9393F'
		Up = '12FA05'
		Down = '00FFFF'
	else
		Left = 'FFFFFF'
		Right = 'FFFFFF'
		Up = 'FFFFFF'
		Down = 'FFFFFF'
	end
	if curStep == 1808 and meme == 1 then
		playSound('kids')
	end
end

function onSectionHit()
    if lastMustHit ~= mustHitSection then
        lastMustHit = mustHitSection
        if camFollowMovement.gf or camFollowMovement.dad or camFollowMovement.bf then
            triggerEvent('Camera Follow Pos', '', '')
            nativeFollow(not mustHitSection)
        end
    end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    if mustHitSection then
		follow(false, direction)
	end
	if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' or getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
		doTweenColor('bfColorTween', 'boyfriend', Left, tweentime, ease)
		elseif getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' or getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
			doTweenColor('bfColorTween', 'boyfriend', Right, tweentime, ease)
		elseif getProperty('boyfriend.animation.curAnim.name') == 'singUP' or getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
			doTweenColor('bfColorTween', 'boyfriend', Up, tweentime, ease)
		   elseif getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' or getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
			doTweenColor('bfColorTween', 'boyfriend', Down, tweentime, ease)
	end
	if meme == 1 then
		playSound('bruh')
	end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    if not mustHitSection then follow(true, direction) end
	health = getProperty('health')
	if getProperty('health') > 0.1 then
		setProperty('health', health- 0.02);
	end
	if getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
		doTweenColor('dadColorTween', 'dad', Left, tweentime, ease)
		elseif getProperty('dad.animation.curAnim.name') == 'singRIGHT' or getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
			doTweenColor('dadColorTween', 'dad', Right, tweentime, ease)
		elseif getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
			doTweenColor('dadColorTween', 'dad', Up, tweentime, ease)
		elseif getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
			doTweenColor('dadColorTween', 'dad', Down, tweentime, ease)
	end
	if meme == 1 then
		playSound('vine-boom')
	end
end

function onUpdate()
	if getProperty('health') > 0.3 then
		doTweenAlpha('warrn', 'warrn', 0, 0.5, 'linear')
		runTimer('faders', 0.5)
	end
	if getProperty('health') < 0.3 then
		makeLuaSprite('warrn', 'RedVG', 0, 0);
		setLuaSpriteScrollFactor('warrn', 1, 1);
		setObjectCamera('warrn', 'hud');
		setObjectOrder('warrn', 999);
		addLuaSprite('warrn', false);
	end
	if keyJustPressed('space') then
		if meme == 0 then
			meme = 1
			playSound('vine-boom')
			setTextString("botplayTxt", "meme")
		else
			meme = 0
			playSound('bruh')
			setTextString("botplayTxt", "no meme?")
		end
	end
end

function rotate(x, y, x2, y2, angle)
	local angle = angle * math.pi / 180
	local x3 = x2 + (x - x2) * math.cos(angle) - (y - y2) * math.sin(angle)
	local y3 = y2 + (x - x2) * math.sin(angle) + (y - y2) * math.cos(angle)
	return x3, y3
end

function endsWith(String,End)
	return End=='' or string.sub(String,-string.len(End))==End
end

function onUpdatePost(elapsed)
	fakeCrochet = (60 / curBpm) * 1000
	noteCount = getProperty('notes.length');
	for i = 0, noteCount-1 do
		
		strumTime = getPropertyFromGroup('notes', i, 'strumTime') - getPropertyFromGroup('notes', i, 'height') / 2
		isSustainNote = getPropertyFromGroup('notes', i, 'isSustainNote')		
		noteData = getPropertyFromGroup('notes', i, 'noteData')
		mustPress = getPropertyFromGroup('notes', i, 'mustPress')
		if mustPress then
			pissballs = 'playerStrums'
		else
			pissballs = 'opponentStrums'
		end
		--debugPrint(rotate(10, 10, 0, 0, 180))
		width = getPropertyFromGroup(pissballs, noteData, 'width')
		height = getPropertyFromGroup(pissballs, noteData, 'height')
		dir = getPropertyFromGroup(pissballs, noteData, 'direction') - 90
		if getPropertyFromGroup('notes', i, 'isSustainNote') then
			x = (math.cos(dir / 360 * math.pi) * height / 3) - (math.cos(dir / 360 * math.pi) * width / 3)
			y = (-math.cos(dir / 360 * math.pi) * width / 3)

			if endsWith(getPropertyFromGroup('notes', i, 'animation.curAnim.name'), 'end') then
				x = x * 2
			end

			y = y + getPropertyFromGroup('notes', i, 'y')
			x = x + getPropertyFromGroup('notes', i, 'x')
			setPropertyFromGroup('notes', i, 'x', x)
			setPropertyFromGroup('notes', i, 'y', y)
			setPropertyFromGroup('notes', i, 'clipRect', nil)
			wasGoodHit = getPropertyFromGroup('notes', i, 'wasGoodHit')
			prevNoteWasGoodHit = getPropertyFromGroup('notes', i, 'prevNote.wasGoodHit')
			canBeHit = getPropertyFromGroup('notes', i, 'canBeHit')
			if (wasGoodHit == true) or (prevNoteWasGoodHit == true) and (canBeHit == false) then
				if strumTime <= getSongPosition() then
					setPropertyFromGroup('notes', i, 'visible', false)
				end
			end
            if (getPropertyFromGroup('notes', i, 'mustPress')) then
                setPropertyFromGroup('notes', i, 'angle', getPropertyFromGroup("playerStrums", noteData, 'direction') - 90)
            else
                setPropertyFromGroup('notes', i, 'angle', getPropertyFromGroup("opponentStrums", noteData, 'direction') - 90)
            end
		else
            if (noteData >= 4) then
                setPropertyFromGroup('notes', i, 'angle', getPropertyFromGroup("playerStrums", noteData, 'angle'))
            else
                setPropertyFromGroup('notes', i, 'angle', getPropertyFromGroup("opponentStrums", noteData, 'angle'))
            end
		end
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