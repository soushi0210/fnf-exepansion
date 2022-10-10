local fear = 0

function onCreate()

       makeLuaSprite('fearBar', 'starved/fearbar', 1190, 150)
       scaleObject('fearBar', 1.4, 1.4)
       addLuaSprite('fearBar', true)
       setObjectCamera('fearBar', 'HUD')

       makeLuaSprite('bar', nil, 1230, 278)
       makeGraphic('bar', 29, 260, 'FF0000') --260
       addLuaSprite('bar', true)
       setObjectCamera('bar', 'hud')
       setProperty('bar.scale.y', Fear)
       setProperty('bar.origin.y', getProperty('bar.height'));

       makeLuaSprite('fearBG', 'starved/fearbarBG', 1190, 154)
       scaleObject('fearBG', 1.4, 1.4)
       addLuaSprite('fearBG', true)
       setObjectCamera('fearBG', 'HUD')

       setObjectOrder('fearBG', 1)
       setObjectOrder('bar', 2)
       setObjectOrder('fearBar', 3)
end

function noteMissPress(id, direction, noteType, isSustainNote)
    setProperty('bar.scale.y', getProperty('bar.scale.y') + 0.05)
end
function noteMiss()
    setProperty('bar.scale.y', getProperty('bar.scale.y') + 0.05)
end
function opponentNoteHit(id, direction, noteType, isSustainNote)
if isSustainNote == false then
     --Fear = Fear + 0.0025;
     setProperty('bar.scale.y', getProperty('bar.scale.y') + 0.0025)
     --setProperty('bar.y', getProperty('bar.y') + 0.0018)
     --updateHitbox('bar'); --you mf i spend 1hr and up just to fix it and it's was you causing THE PROBLEM!?!? whyyy
end
end
function goodNoteHit(id, direction, noteType, isSustainNote)
if not isSustainNote then
     --Fear = Fear + 0.0025;
     setProperty('bar.scale.y', getProperty('bar.scale.y') - 0.0012)
     end
if isSustainNote then
     setProperty('bar.scale.y', getProperty('bar.scale.y') - 0.0009)
     --setProperty('bar.y', getProperty('bar.y') - 0.0010) --idk heheheeh
     --updateHitbox('bar');
end
end

function onStepHit()
if n == true then --Normal where you can still gain health a bit
      health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.010);
end
end
if s == true then --Slightly Drain
      health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.023);
end
end
if m == true then --Mild Drain
       health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.030); --ey you're dead if you miss :)
end
if a == true then --Aggresive Drain
       health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.040); --ey you're dead if you miss :)
end
end
end

function onUpdate()
if FearFull == true then--Instant Death
    setProperty('health', -500)
    setProperty('bar.scale.y', 1.388000000000003);
end
if getProperty('bar.scale.y') > 0.562200000000012 and getProperty('bar.scale.y') < 0.667400000000013 then --wow
      n = true;
      s = false;
      m = false;
      a = false;
      i = false;
end
if getProperty('bar.scale.y') > 0.665400000000016 and getProperty('bar.scale.y') < 0.816500000000020 then --wow
      n = false;
      s = true;
      m = false;
      a = false;
      i = false;
end
if getProperty('bar.scale.y') > 0.816500000000022 and getProperty('bar.scale.y') < 1.240000000000008 then --wow
      n = false;
      s = false;
      m = true;
      a = false;
      i = false;
end
if getProperty('bar.scale.y') > 1.240000000000010 and getProperty('bar.scale.y') < 1.388000000000000 then --wow
      n = false;
      s = false;
      m = false;
      a = true;
      i = false;
end
if getProperty('bar.scale.y') > 1.388000000000003 then --wow
      n = false;
      s = false;
      m = false;
      a = false;
      FearFull = true;
end
end
end

function onGameOver()
	setProperty('cameraSpeed', 100)
	cameraSetTarget('boyfriend')
end

function onGameOverConfirm(reset)
    cameraFlash('other', 'FF0000', 3, true) 
    setProperty('boyfriend.visible', false)--idfk
	finishedGameover = true;
end
--cunkin LOVE THIS SONG AAAAAAAA why sonic.exe got cancelled 
--debugPrint(getProperty('bar.scale.y'));