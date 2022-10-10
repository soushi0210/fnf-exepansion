local t = 0
local s = 0

local rings = 0
local ringIndex = 0
local ringSpeed = 0
local initRingWidth = 0
local cur = 0
local flashRing = false
local ringFlashIndex = 0

function onCreate()
    makeLuaSprite('ring', 'Counter', screenWidth * 0.9 - 10, screenHeight * 0.8)
    setGraphicSize('ring', 120)
    setProperty('ring.visible', false)
    addLuaSprite('ring', true)
    setProperty('ring.alpha', 0)
    setObjectCamera('ring', 'other')
    initRingWidth = getProperty('ring.width')

    if not downscroll then
        setProperty('ring.y', screenHeight * 0.8 + 40)
    else
        setProperty('ring.y', screenHeight * 0.1 - 60)
    end

    makeLuaText('rings', 'Rings: '..rings, 0, 0, 0)
    setTextSize('rings', 62)
    setTextBorder('rings', 2, 'cc6600')
    setTextColor('rings', 'ffcc33')
    setTextAlignment('rings', 'center')
    setTextFont('rings', 'sonic4.ttf') --'vcr.ttf'
    setProperty('rings.visible', false)
    addLuaText('rings')
    setProperty('rings.alpha', 0)
    setObjectCamera('rings', 'other')

    setProperty('rings.x', getProperty('ring.x') + 60)
    setProperty('rings.y', getProperty('ring.y') - 3)

    makeAnimatedLuaSprite('static', 'exep3/Phase3Static', 0, 0)
    addAnimationByPrefix('static', 'flash', 'Phase3Static instance 1', 24, false)
    setGraphicSize('static', getProperty('static.width') * 4)
    setProperty('static.alpha', 0.3)
    setProperty('static.visible', false)
    addLuaSprite('static', true)
    setObjectCamera('static', 'other')

    makeLuaSprite('bg', 'exep3/Glitch', -621, -365)
    addLuaSprite('bg', false)
    setGraphicSize('bg', getProperty('bg.width') * 1.2)

    makeLuaSprite('screamerTails', 'Tails', 0, 0)
    setObjectCamera('screamerTails', 'other')
    setProperty('screamerTails.visible', false)
    addLuaSprite('screamerTails', true)

    makeLuaSprite('screamerKnuckles', 'Knuckles', 0, 0)
    setObjectCamera('screamerKnuckles', 'other')
    setProperty('screamerKnuckles.visible', false)
    addLuaSprite('screamerKnuckles', true)

    makeLuaSprite('screamerEggman', 'Eggman', 0, 0)
    setObjectCamera('screamerEggman', 'other')
    setProperty('screamerEggman.visible', false)
    addLuaSprite('screamerEggman', true)

    makeAnimatedLuaSprite('daSTAT', 'daSTAT', 0, 0)
    addAnimationByPrefix('daSTAT', 'STAT', 'staticFLASH', 24, true)
    scaleObject('daSTAT', 4, 4)
    setObjectCamera('daSTAT', 'other')
    setProperty('daSTAT.alpha', 0.3)
    setProperty('daSTAT.visible', false)
    addLuaSprite('daSTAT', true)

    makeLuaSprite('deathsentence', 'black-sun', -730, -400)
    setObjectCamera('deathsentence', 'other')
    scaleObject('deathsentence', 2.2, 2.2)
    setProperty('deathsentence.visible', false)
    addLuaSprite('deathsentence', true)

    makeAnimatedLuaSprite('plasticShit', 'exep3/NewTitleMenuBG', -500, -400)
    addAnimationByPrefix('plasticShit', 'ImGonnaDie', 'TitleMenuSSBG instance 1', 24, true)
    setProperty('plasticShit.visible', false)
    addLuaSprite('plasticShit', false)
    scaleObject('plasticShit', 6.5, 5)

    makeLuaSprite('trees1', 'exep3/Trees', -607, -401)
    addLuaSprite('trees1')
    setScrollFactor('trees1', 0.95, 1)
    setGraphicSize('trees1', getProperty('trees1.width') * 1.2)

    makeLuaSprite('trees2', 'exep3/Trees2', -623, -410)
    setGraphicSize('trees2', getProperty('trees2.width') * 1.2)
    addLuaSprite('trees2', false)

    makeLuaSprite('grass', 'exep3/Grass', -630, -266)
    addLuaSprite('grass', false)
    setGraphicSize('grass', getProperty('grass.width') * 1.2)
end

function onCreatePost()
    setProperty('gf.alpha', 0);
    triggerEvent('Opponent Notes Left Side', 'a', 's')
end

function onSongStart()
	setProperty('static.visible', true)
end

function onStepHit()
	if difficulty == 2 then
		if curStep == 1 then
			setProperty('ring.visible', true)
			setProperty('rings.visible', true)
			doTweenAlpha('ringalpha', 'ring', 1, 0.5, 'linear')
			doTweenAlpha('ringsalpha', 'rings', 1, 0.5, 'linear')
		end
	end
end

function onUpdate(elapsed)
    health = getProperty('health')
    if health < 0.02 then
	setProperty('deathsentence.visible', true)
    end

    setTextString('rings', ''..rings)

    if difficulty == 2 then
    	setPropertyFromGroup('opponentStrums', 2, 'alpha', 0)
    end

    if rings < 0 then
        rings = 0
    end

    if rings > 9 then
        setProperty('rings.x', getProperty('ring.x') + 40)
    else
        setProperty('rings.x', getProperty('ring.x') + 80)
    end

    ringIndex = ringIndex + elapsed
    ringSpeed = getPropertyFromClass('Conductor', 'stepCrochet') / 100 * 8
    ringFlashIndex = ringFlashIndex + elapsed
    cur = math.sin(ringIndex * ringSpeed) * initRingWidth

    if flashRing then
        setProperty('rings.alpha', math.sin(ringFlashIndex * 20) * 1)
    end

    -------------------------------------------------------------------

    if getProperty('static.animation.curAnim.finished') and getProperty('static.animation.curAnim.name') == 'flash' then
        setProperty('static.alpha', 0)
    else
        setProperty('static.alpha', 0.7)
    end
end

function goodNoteHit(id, data, type, sussy)
    if difficulty == 2 and data == 2 then
        rings = rings + 1
        flashRing = false
        playSound('ring')
    end
end

function noteMiss(id, data, type, sussy)
    if difficulty == 2 then
        if data == 2 then
            setProperty('songMisses', getProperty('songMisses') - 0)
        else
            if rings > 0 then
                playSound('byeRings')
                rings = rings - 1
                flashRing = true
		setProperty('health', getProperty('health') + 0.0475);
                runTimer('ringStopFlash', 3)
            else
                flashRing = true
            end
        end
    end
end

function onTimerCompleted(tag)
    if tag == 'ringStopFlash' then
        flashRing = false
	setProperty('rings.alpha', 1)
    end
end