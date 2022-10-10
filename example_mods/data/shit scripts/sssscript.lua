function onCreatePost()
	makeLuaText("scoreTxt", "skill issue", 1000, 140, 670)
	setTextFont("scoreTxt", 'vcr.ttf');
	setTextSize("scoreTxt", 20)
end

function onUpdatePost()
--	setProperty("scoreTxt.y", 680)
--	setProperty("scoreTxt.x", -345)
--	setTextString("scoretext", getProperty("scoreTxt.text"))
--	setProperty('healthBar.x', 930)
--	setProperty('healthBar.y', 375)
--	setProperty('healthBar.angle', 90)
--	setProperty('iconP1.y', 340 + 250)
--	setProperty('iconP2.y', 270 - 250)
--	setProperty('iconP1.x', 0 + 1140)
--	setProperty('iconP2.x', 10 + 1140)
end

function onSongStart()
	--if curStep >= 0 and curStep < 769 then
	--	songPos = getSongPosition()
	--	local currentBeat = (songPos/5000)*(curBpm/60)

	--	noteTweenY('defaultPlayerStrumY3', 4, defaultPlayerStrumY3 + 500, 1, quadOut)
	--	noteTweenY('defaultPlayerStrumY4', 5, defaultPlayerStrumY3 + 500, 1, quadOut)
	--	noteTweenY('defaultPlayerStrumY5', 6, defaultPlayerStrumY3 + 500, 1, quadOut)
	--	noteTweenY('defaultPlayerStrumY6', 7, defaultPlayerStrumY3 + 500, 1, quadOut)
	--end
end

function update (elapsed)
end

function beatHit (beat)
end

function onStepHit (step)
end

function keyPressed (key)
end

function onTweenCompleted(tag)
end