local PopupLength = 0
local PopupCreate = false


    if name == 'Clear Fatality Popups' then
        for deletedPopus = 0,PopupLength do
            objectPlayAnimation('FatalityPopup'..deletedPopus,'byeError',true)
        end
    end
end
function onUpdate()
    for PopupCounter = 0,PopupLength do
        if getMouseX('other') >= getProperty('FatalityPopup'..PopupCounter..'.x') + (getProperty('FatalityPopup'..PopupCounter..'.width')/2.5) and getMouseX('other') <= getProperty('FatalityPopup'..PopupCounter..'.x') + (getProperty('FatalityPopup'..PopupCounter..'.width')/1.75) and  getMouseY('other') >= getProperty('FatalityPopup'..PopupCounter..'.y') + (getProperty('FatalityPopup'..PopupCounter..'.height')/1.5) and getMouseY('other') <= getProperty('FatalityPopup'..PopupCounter..'.y') + (getProperty('FatalityPopup'..PopupCounter..'.height')/1.1)  and getPropertyFromClass('flixel.FlxG','mouse.justPressed') == true then
            objectPlayAnimation('FatalityPopup'..PopupCounter,'byeError',false)
        end
        if getProperty('FatalityPopup'..PopupCounter..'.animation.curAnim.finished') and getProperty('FatalityPopup'..PopupCounter..'.animation.curAnim.name') == 'byeError' then
            removeLuaSprite('FatalityPopup'..PopupCounter,false)
        end
    end
    
    setPropertyFromClass('flixel.FlxG','mouse.visible',false)
    setProperty('fatalCursor.x',getMouseX('other'))
    setProperty('fatalCursor.y',getMouseY('other'))

end
function onTimerCompleted(tag)
    for PupopTimerCounter = 0,PopupLength do
        if tag == 'PupopDelete'..PupopTimerCounter then
            objectPlayAnimation('FatalityPopup'..PupopTimerCounter,'byeError',false)
        end
    end
    if tag == 'PopupEnable' then
        PopupCreate = false
    end
end