function onCreate()
    Rings = 0
    makeLuaSprite('Counter', 'Counter', 1120, 600);
    scaleObject('Counter', 1, 1);
    setObjectCamera('Counter', 'hud');
    addLuaSprite("Counter", true);

    makeLuaText("RingsCount", Rings, 400, 1015, 600)
    setTextSize("RingsCount", 58)
    setTextColor("RingsCount", 'FFD537')
    setTextBorder("RingsCount", 2.9, 'CF6E0D')
    setTextFont("RingsCount", 'sonic4.ttf')
    addLuaText("RingsCount")
end

function onEvent(name, value1, value2)
	if name == 'ringnotehit' then
        Rings = Rings + 1;
    end
end

function noteMiss(id, direction, noteType)
    if Rings > 0 and noteType == '' then
        Rings = Rings - 1;
        setProperty('health', getProperty('health')+ 0.023);
        setProperty('health', getProperty('health')+ 0.023);
    end
end

function noteMissPress(direction)
    if Rings > 0 and noteType == '' then
        Rings = Rings - 1;
        setProperty('health', getProperty('health')+ 0.023);
        setProperty('health', getProperty('health')+ 0.023);
    end
end

function onUpdate()
setTextString('RingsCount',Rings)
end