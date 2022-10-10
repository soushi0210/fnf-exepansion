-- Lua stuff
local squish = 80
local xx = 700;
local yy = 450;
local xx2 = 800;
local yy2 = 470;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    makeLuaSprite('sunkeMunch','sunky/sunkyMunch', 560, -640)
    makeLuaSprite('sunkePose','sunky/sunkyPose', -510, -680)
    makeLuaSprite('cereal','sunky/cereal', -460, 0)
    makeLuaSprite('sunk', 'sunky/stage', -350, 50)
    scaleObject('sunk',1.3, 1.3);
    makeLuaSprite('sky', 'sunky/sunky BG', -450, 50)
    makeLuaSprite('party', 'sunky/ball', 120, 270)
    makeLuaSprite('barleft','',-4,0)
    makeGraphic('barleft',163,882,'000000')
    makeLuaSprite('barright','',1119,0)
    makeGraphic('barright',162,882,'000000')
    setObjectCamera('sunkage', 'other')
    setObjectCamera('sunkePose', 'other')
    setObjectCamera('cereal', 'other')
    setObjectCamera('sunkeMunch', 'other')
    setScrollFactor('barleft',0,0)
    setObjectCamera('barleft','hud')
    setScrollFactor('barright',0,0)
    setObjectCamera('barright','hud')
    addLuaSprite('sky',  false)
    addLuaSprite('party',  true)
    addLuaSprite('sunk',  false)
    addLuaSprite('barleft',true)
    addLuaSprite('barright',true)
end

function onUpdate(elapsed)

    if not middlescroll then
        noteTweenX('0',0,defaultOpponentStrumX0 + squish,0.15,'linear')
        noteTweenX('1',1,defaultOpponentStrumX1 + squish,0.15,'linear')
        noteTweenX('2',2,defaultOpponentStrumX2 + squish,0.15,'linear')
        noteTweenX('3',3,defaultOpponentStrumX3 + squish,0.15,'linear')
        noteTweenX('4',4,defaultPlayerStrumX0 - squish,0.01,'linear')
        noteTweenX('5',5,defaultPlayerStrumX1 - squish,0.01,'linear')
        noteTweenX('6',6,defaultPlayerStrumX2 - squish,0.01,'linear')
        noteTweenX('7',7,defaultPlayerStrumX3 - squish,0.01,'linear')

    end

    if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
        end