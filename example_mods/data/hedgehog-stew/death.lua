function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-starved-die'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'starved-death'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'starved-loop'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'starved-retry'); --put in mods/music/
end
-- Code by A Random Octoling, please do not reuse without my permission unless you own this mod.
function onGameOver()
    setProperty('health', -500);
    math.randomseed(os.clock()/4.0)
    local num = math.random(1,5)
    local name = tostring(num)
    playSound(name, 1, 'deathquote')
end