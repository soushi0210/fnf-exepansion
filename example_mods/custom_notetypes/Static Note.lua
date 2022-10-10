local staticCreated = false
function onCreatePost()
    precacheImage('hitStatic')
    makeAnimatedLuaSprite('StaticImageStaticNote','hitStatic',0,0)
    addAnimationByPrefix('StaticImageStaticNote','static','staticANIMATION',24,false)
    setObjectCamera('StaticImageStaticNote','other')
    for i = 0,getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i,'noteType') == 'Static Note' then
            setPropertyFromGroup('unspawnNotes', i,'texture','STATIC_assets')
        end
    end
end

function noteMiss(id,data,noteType,sus)
    if noteType == 'Static Note' then
        addLuaSprite('StaticImageStaticNote',true)
        objectPlayAnimation('StaticImageStaticNote','static',true)
        playSound('hitStatic1')
        staticCreated = true
    end
end
function onUpdate()
    if staticCreated == true then
        if getProperty('StaticImageStaticNote.animation.curAnim.finished') then
            removeLuaSprite('StaticImageStaticNote',false)
            staticCreated = false
        end
    end
end