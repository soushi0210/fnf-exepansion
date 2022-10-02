function onEndSong()
    os.exit()
end

function onCreate()
    setPropertyFromClass("openfl.Lib", "application.window.title",'you get trolled lololololololololololololololololololololololololololol')
end

function onUpdate()
    setTextString('botplayTxt', 'BOTPLAY');
    setProperty('botplayTxt.visible', false);
    setProperty('cpuControlled', false);
end

function onSongStart()
    noteTweenX("NoteMove1", 0, -1000, 10, cubeInOut)
    noteTweenX("NoteMove2", 1, -1000, 10, cubeInOut)
    noteTweenX("NoteMove3", 2, -1000, 10, cubeInOut)
    noteTweenX("NoteMove4", 3, -1000, 10, cubeInOut)
end