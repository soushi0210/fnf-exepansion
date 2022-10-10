local xx = 420.95;
local yy = 300;
local xx2 = 1100;
local yy2 = 690;
local ofs = 50;
local ofs2 = 32;
local followchars = true;

function onCreate()

	 setProperty('introSoundsSuffix', '-muted')

	 --Faker Stage Assets


	 makeLuaSprite('sky','sky',-630, -300)
	 addLuaSprite('sky',false) 
	 scaleObject('sky', 1.2, 1.2);

	 makeLuaSprite('backtrees','backtrees',-600, -300)
	 addLuaSprite('backtrees',false) 
     setLuaSpriteScrollFactor('backtrees', 1.1, 1);
	 scaleObject('backtrees', 1.2, 1.2);

	 makeLuaSprite('deadtrees','deadtrees',-600, -300)
	 addLuaSprite('deadtrees',false)
     setLuaSpriteScrollFactor('deadtrees', 1.2, 1);
	 scaleObject('deadtrees', 1.2, 1.2);

	 makeLuaSprite('ground','ground',-800, -300)
	 addLuaSprite('ground',false) 
     setLuaSpriteScrollFactor('ground', 1.3, 1);
	 scaleObject('ground', 1.2, 1.2);

	 makeAnimatedLuaSprite('ExeAnimatedBG_Assets','ExeAnimatedBG_Assets', -600, -300)
	 addAnimationByPrefix('ExeAnimatedBG_Assets','bg','ExeBGAnim',24,true)
	 objectPlayAnimation('ExeAnimatedBG_Assets','bg',false)
	 addLuaSprite('ExeAnimatedBG_Assets', false);
	 setScrollFactor('ExeAnimatedBG_Assets', 1, 1);

	 makeLuaSprite('TailsCorpse','TailsCorpse', 515, 540)
	 addLuaSprite('TailsCorpse',false) 
     setLuaSpriteScrollFactor('TailsCorpse', 1, 1);



	 makeLuaSprite('LMAOTENTACLES', 'tentaclesblack', 0, 0);
	 setProperty('LMAOTENTACLES.alpha', 0);
	 setObjectCamera('LMAOTENTACLES', 'other')
	 scaleObject('LMAOTENTACLES', 1.01, 1.01)
	 addLuaSprite('LMAOTENTACLES', true);

	 makeLuaSprite('vignette', 'blackvignette', 0, 0);
	 setProperty('vignette.alpha', 0);
	 setObjectCamera('vignette', 'other')
	 scaleObject('vignette', 1.01, 1.01)
	 addLuaSprite('vignette', true);
	 
	 makeLuaSprite('stress', 'redvignette', 0, 0);
	 setProperty('stress.alpha', 0);
	 setObjectCamera('stress', 'other')
	 scaleObject('stress', 1.01, 1.01)
	 addLuaSprite('stress', true);

	 --Title Ca

	 --Hud Obstructors



end

function onStepHit()

	--Suboptim
	
	if getProperty('curStep') == 0 then

		setProperty('black.alpha', 0)

		setProperty('camHUD.visible', true) 

		setProperty('cameraSpeed', 2.2);

	
		--Turn to EXE Stag

		function onMoveCamera(focus)
			if focus == 'boyfriend' then
				setProperty('defaultCamZoom',0.95);
			elseif focus == 'dad' then
				setProperty('defaultCamZoom',0.7);
			end
		end

		function goodNoteHit()

			health = getProperty('health')

			if getProperty('health') > 0.0 then
				
				setProperty('health', health- 0.023);
			
			end
			
		end

		function onBeatHit()

			health = getProperty('health');

			if getProperty('health') > 0.0 then
			
				setProperty('health', health- 0.0012);

			end
		end

		function onUpdate()

			health = getProperty('health')

			if getProperty('health') < 0.2 then
				doTweenAlpha('TentaclesAlpha', 'LMAOTENTACLES', 1, 0.8, 'quintOut');
				doTweenAlpha('VignetteAlpha', 'vignette', 1, 0.8, 'quintOut');
				cameraShake("hud", 0.005, 0.4);
			elseif getProperty('health') < 0.5 then
				doTweenAlpha('TentaclesAlpha', 'LMAOTENTACLES', 0.8, 0.8, 'quintOut');
				doTweenAlpha('VignetteAlpha', 'vignette', 0.8, 0.8, 'quintOut');
				cameraShake("hud", 0.002, 0.2);
			elseif getProperty('health') < 1.0 then
				doTweenAlpha('TentaclesAlpha', 'LMAOTENTACLES', 0.6, 0.8, 'quintOut');
				doTweenAlpha('VignetteAlpha', 'vignette', 0.6, 0.8, 'quintOut');
			elseif getProperty('health') < 1.5 then
				doTweenAlpha('TentaclesAlpha', 'LMAOTENTACLES', 0.2, 0.8, 'quintOut');
				doTweenAlpha('VignetteAlpha', 'vignette', 0.2, 0.8, 'quintOut');
			end
			
			if followchars == true then
				
				if mustHitSection == false then
				
					setProperty('defaultCamZoom', 0.7)

					if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					
					if getProperty('dad.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
				
					if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end

					if getProperty('dad.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
				
				else
				
					setProperty('defaultCamZoom', 0.95)
					
					if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
					end
					
					if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
					end
					
					if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
					end
				
					if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
					end

					if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx2,yy2)
					end
				
				end
			
				triggerEvent('Camera Follow Pos','','')
			
			end

		end

		function onUpdatePost()

			if not inGameOver then
				setPropertyFromGroup('opponentStrums',0,'alpha',0)
				setPropertyFromGroup('opponentStrums',1,'alpha',0)
				setPropertyFromGroup('opponentStrums',2,'alpha',0)
				setPropertyFromGroup('opponentStrums',3,'alpha',0)
						
			end

		end

	end

	if getProperty('curStep') == 4112 then
		
		--Character Tweens
		doTweenAlpha('blackscreen', 'blackTwo', 1, 0.2, 'quadInOut');
		doTweenAlpha('bfAlpha', 'boyfriend', 0, 0.2, 'quadInOut');
		doTweenAlpha('gfAlpha', 'gf', 0, 0.2, 'quadInOut');

		--Hud Tweens
		doTweenAlpha('hpAlpha', 'healthBar', 0, 0.2, 'quadInOut');
		doTweenAlpha('timeBarAlpha', 'timeBar', 0, 0.2, 'quadInOut');
		doTweenAlpha('iconOneAlpha', 'iconP1', 0, 0.2, 'quadInOut');
		doTweenAlpha('iconTwoAlpha', 'iconP2', 0, 0.2, 'quadInOut');
		doTweenAlpha('iconTwoWinAlpha', 'winningIconDad', 0, 0.2, 'quadInOut');
		doTweenAlpha('scoreAlpha', 'scoreTxt', 0, 0.2, 'quadInOut');
		doTweenAlpha('timeAlpha', 'timeTxt', 0, 0.2, 'quadInOut');
		setProperty('showRating', false);
		setProperty('showComboNum', false);
	end	

	if getProperty('curStep') == 4116 then
		setProperty('red.visible', true)
		setProperty('LMAOTENTACLES.visible', false)
		setProperty('vignette.visible', false)
		setProperty('dad.x', -100)
		setProperty('dad.y', 175)
	end

	if getProperty('curStep') == 4123 then
		setProperty('blackTwo.alpha', 0)
		setPropertyFromGroup('playerStrums',0,'alpha',0.5)
		setPropertyFromGroup('playerStrums',1,'alpha',0.5)
		setPropertyFromGroup('playerStrums',2,'alpha',0.5)
		setPropertyFromGroup('playerStrums',3,'alpha',0.5)
	end

	if getProperty('curStep') == 4124 then
		setProperty('ReplaceOne.visible', true)
	end

	if getProperty('curStep') == 4128 then
		setProperty('ReplaceTwo.visible', true)
	end

	if getProperty('curStep') == 4134 then
		setProperty('ReplaceThree.visible', true)
	end

	if getProperty('curStep') == 4140 then
		setProperty('ReplaceFour.visible', true)
	end

	if getProperty('curStep') == 4143 then
		setProperty('ReplaceFourPointFive.visible', true)
	end

	if getProperty('curStep') == 4148 then
		setProperty('ReplaceFourPointFive.visible', false)
		setProperty('ReplaceFive.visible', true)
	end

	if getProperty('curStep') == 4154 then
		doTweenAlpha('chrswap', 'ScreenStatic', 0.5, 0.42, 'quadInOut');

	end

	if getProperty('curStep') == 4160 then
		
		setProperty('ReplaceOne.visible', false)
		setProperty('ReplaceTwo.visible', false)
		setProperty('ReplaceThree.visible', false)
		setProperty('ReplaceFour.visible', false)
		setProperty('ReplaceFive.visible', false)

		setProperty('ScreenStatic.alpha', 0)
		
		setProperty('boyfriend.alpha', 1)
		setProperty('gf.alpha', 1)
		setProperty('dad.x', -100)
		setProperty('dad.y', 175)
		
		setProperty('healthBar.alpha', 1)
		setProperty('timeBar.alpha', 1)
		setProperty('iconP1.alpha', 1)
		setProperty('iconP2.alpha', 1)
		setProperty('winningIconDad.alpha', 1)
		setProperty('scoreTxt.alpha', 1)
		setProperty('timeTxt.alpha', 1)
		setProperty('showRating', true);
		setProperty('showComboNum', true);

		setProperty('red.visible', false)
		setProperty('sky.visible', false)
		setProperty('staticSky.visible', true)

		setPropertyFromGroup('playerStrums',0,'alpha',1)
		setPropertyFromGroup('playerStrums',1,'alpha',1)
		setPropertyFromGroup('playerStrums',2,'alpha',1)
		setPropertyFromGroup('playerStrums',3,'alpha',1)

		function onUpdate()

			health = getProperty('health')

			if getProperty('health') < 0.2 then
				doTweenAlpha('RedTentaclesAlpha', 'LOLTENTACLES', 1, 0.8, 'quintOut');
				doTweenAlpha('StressAlpha', 'stress', 1, 0.8, 'quintOut');
				cameraShake("hud", 0.005, 0.4);
			elseif getProperty('health') < 0.5 then
				doTweenAlpha('RedTentaclesAlpha', 'LOLTENTACLES', 0.8, 0.8, 'quintOut');
				doTweenAlpha('StressAlpha', 'stress', 0.8, 0.8, 'quintOut');
				cameraShake("hud", 0.002, 0.2);
			elseif getProperty('health') < 1.0 then
				doTweenAlpha('RedTentaclesAlpha', 'LOLTENTACLES', 0.6, 0.8, 'quintOut');
				doTweenAlpha('StressAlpha', 'stress', 0.6, 0.8, 'quintOut');
			elseif getProperty('health') < 1.5 then
				doTweenAlpha('RedTentaclesAlpha', 'LOLTENTACLES', 0.2, 0.8, 'quintOut');
				doTweenAlpha('StressAlpha', 'stress', 0.2, 0.8, 'quintOut');
			end

			if followchars == true then
				
				if mustHitSection == false then
				
					setProperty('defaultCamZoom', 0.7)

					if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					
					if getProperty('dad.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
				
					if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end

					if getProperty('dad.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
				
				else
				
					setProperty('defaultCamZoom', 0.95)
					
					if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
					end
					
					if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
					end
					
					if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
					end
				
					if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
					end

					if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx2,yy2)
					end
				
				end
			
				triggerEvent('Camera Follow Pos','','')
			
			end

		end

	end

	
	if getProperty('curStep') == 4228 then

		doTweenAlpha('groundgone', 'ground', 0, 2.24, 'quadInOut');
	end


	if getProperty('curStep') == 4343 then

		doTweenAlpha('gonetrees', 'backtrees', 0, 2.24, 'quadInOut');
	end

	if getProperty('curStep') == 4446 then

		doTweenAlpha('deforestation', 'deadtrees', 0, 2.24, 'quadInOut');
	end

	
	if getProperty('curStep') == 4607 then

		doTweenAlpha('gameover', 'TailsCorpse', 0, 2.24, 'quadInOut');
	end


	if getProperty('curStep') == 4671 then

		doTweenAlpha('light', 'white', 1, 0.07, 'quadInOut');
	end

	if getProperty('curStep') == 4672 then

		setProperty('whiteBG.visible', true)
		setProperty('staticSky.visible', false)
		setProperty('ExeAnimatedBG_Assets.visible', false)
		setProperty('stress.visible', false)
		setProperty('LOLTENTACLES.visible', false)

		doTweenX('bfTweenX', 'boyfriend', 925, 0.001, 'linear')
		doTweenY('bfTWeenY', 'boyfriend', 590, 0.001, 'linear')

		doTweenX('gfTweenX', 'gf', 680, 0.001, 'linear')
		doTweenY('gfTWeenY', 'gf', 360, 0.001, 'linear')

		setProperty('dad.x', -100)
		setProperty('dad.y', 175)

		setProperty('showRating', false);
		setProperty('showComboNum', false);

		doTweenAlpha('light', 'white', 0, 2.32, 'quadInOut');
	end

	if getProperty('curStep') == 4943 then
		
		if getProperty('songMisses') > 2 then

			doTweenAlpha('stall', 'fakersky', 0.1, 0.07, 'quadInOut');
			
		else	
			doTweenAlpha('superlight', 'white', 1, 0.07, 'quadInOut');

		end

		function onTweenCompleted(tag)
		
			if tag == "superlight" then 

				doTweenAlpha('superlight', 'white', 0, 2.32, 'quadInOut');

				triggerEvent('Change Character', 'dad', 'EXE')
				triggerEvent('Change Character', 'bf', 'bf')
				triggerEvent('Change Character', 'gf', 'EXE GF')

				doTweenX('bfTweenX', 'boyfriend', 925, 0.001, 'linear')
				doTweenY('bfTWeenY', 'boyfriend', 590, 0.001, 'linear')
		
				doTweenX('gfTweenX', 'gf', 680, 0.001, 'linear')
				doTweenY('gfTWeenY', 'gf', 360, 0.001, 'linear')

				setProperty('sky.visible', true)
				setProperty('ExeAnimatedBG_Assets.visible', true)

				setProperty('ground.alpha', 1);
				setProperty('backtrees.alpha', 1);
				setProperty('deadtrees.alpha', 1);
				setProperty('TailsCorpse.alpha', 1);

				runTimer('goodbye', 4.18, 1);

			end 
				
			if tag == "stall" then 

				doTweenAlpha('EXEalpha', 'dad', 0, 3.76, 'quadInOut');
				runTimer('morestall', 4.18, 1);
			
			end
		
			
			function onTimerCompleted(tag)

				if tag == "goodbye" then 

					doTweenAlpha('goodend', 'ending', 1, 0.56, 'quadInOut');

				end
			
				if tag == "morestall" then 
				
					doTweenAlpha('badend', 'white', 1, 0.56, 'quadInOut');
				
				end
				
			end

		end	

	end

end