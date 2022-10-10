finishedGameover = false;
startedPlaying = false;

function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'fleetway_death_BF');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'laser_moment');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'chaosgameover');
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');
	-- background shit
	makeLuaSprite('Wall', 'fleet/Wall', -3800, -1000);
	setScrollFactor('Wall', 0.7, 0.7);
	
	makeLuaSprite('Floor', 'Fleet/Floor', -3850, 250);
	scaleObject('Floor', 1.05, 1.05);

	makeLuaSprite('FleetwayBGshit', 'fleet/FleetwayBGshit', -3857, -1595);
	setScrollFactor('FleetwayBGshit', 1, 1);
	scaleObject('FleetwayBGshit', 1, 1);
	
	makeAnimatedLuaSprite('Emerald Beam Charged', 'fleet/Emerald Beam Charged', -1470, -1800);
	addAnimationByPrefix('Emerald Beam Charged', 'start', 'Emerald Beam Charged instance', 24, true);
	
	makeAnimatedLuaSprite('Emeralds', 'fleet/Emeralds', -880,-600);
	addAnimationByPrefix('Emeralds', 'start', 'TheEmeralds instance', 30, true);
	
	makeAnimatedLuaSprite('porkerbop', 'fleet/Porker Lewis', 1200, -900);
	addAnimationByPrefix('porkerbop', 'first', 'Porker FG', 24, false);
	setScrollFactor('porkerbop', 1.1, 1.1);

	makeAnimatedLuaSprite('The Chamber', 'Fleet/The Chamber', -1470, 200);
	addAnimationByPrefix('The Chamber', 'fall', 'Chamber Sonic Fall', 24, false);
	setScrollFactor('The Chamber', 1, 1);

	makeLuaSprite('pebles', 'Fleet/pebles', -1980, 820);
	scaleObject('pebles', 1.05, 1.05);


	addLuaSprite('Wall', false);
	addLuaSprite('Floor', false);
	addLuaSprite('FleetwayBGshit', false);
	addLuaSprite('Emerald Beam Charged', false);
	addLuaSprite('Emeralds', false);
	addLuaSprite('The Chamber', true);
	addLuaSprite('pebles', true);
	addLuaSprite('porkerbop', true); -- false = add behind characters, true = add over characters

end

function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('porkerbop', 'first', true);
	end
end

function onUpdate(elapsed)
	
	if inGameOver and not startedPlaying and not finishedGameover then
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0.2);
	end
end

-- Game over voiceline
function onGameOver()
	runTimer('playFleetLine', 2.7);
	return Function_Continue;
end

function onGameOverConfirm(reset)
	finishedGameover = true;
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A tween you called has been completed, value "tag" is it's tag
	if not finishedGameover and tag == 'playFleetLine' then
		math.randomseed(os.time());
		soundName = string.format('%i', math.random(1, 11));
		playSound(soundName, 1, 'voiceJeff');
		startedPlaying = true;
	end
end

function onSoundFinished(tag)
	if tag == 'voiceJeff' and not finishedGameover then
		soundFadeIn(nil, 4, 0.2, 1);
	end
	close(true);
end