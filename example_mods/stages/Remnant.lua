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

	 makeLuaSprite('fakersky', 'fakerBG/fakersky', -631.8, -493.15);
	 setScrollFactor('fakersky', 1.0, 1.0);
	 scaleObject('fakersky', 0.9, 0.9);
	 addLuaSprite('fakersky', false);	

	 makeLuaSprite('mountains', 'fakerBG/mountains', -631.8, -475.5);
	 setScrollFactor('mountains', 1.1, 1.0);
	 scaleObject('mountains', 0.9, 0.9);	
	 addLuaSprite('mountains', false);

	 makeLuaSprite('grass', 'fakerBG/grass', -631.8, -475.5);
	 setScrollFactor('grass', 1.0, 1.0);
	 scaleObject('grass', 0.9, 0.9);	
	 addLuaSprite('grass', false);

	 makeLuaSprite('tree2', 'fakerBG/tree2', -631.8, -475.5);
	 setScrollFactor('tree2', 1.0, 1.0);
	 scaleObject('tree2', 0.9, 0.9);	
	 addLuaSprite('tree2', false);

	 makeLuaSprite('pillar2', 'fakerBG/pillar2', -631.8, -459.55);
	 setScrollFactor('pillar2', 1.0, 1.0);
	 scaleObject('pillar2', 0.9, 0.9);	
	 addLuaSprite('pillar2', false);

	 makeLuaSprite('plant', 'fakerBG/plant', -631.8, -493.15);
	 setScrollFactor('plant', 1.0, 1.0);
	 scaleObject('plant', 0.9, 0.9);	
	 addLuaSprite('plant', false);

	 makeLuaSprite('tree1', 'fakerBG/tree1', -631.8, -493.15);
	 setScrollFactor('tree1', 1.0, 1.0);
	 scaleObject('tree1', 0.9, 0.9);	
	 addLuaSprite('tree1', false);

	 makeLuaSprite('pillar1', 'fakerBG/pillar1', -631.8, -493.15);
	 setScrollFactor('pillar1', 1.0, 1.0);
	 scaleObject('pillar1', 0.9, 0.9);	
	 addLuaSprite('pillar1', false);

	 makeLuaSprite('flower1', 'fakerBG/flower1', -631.8, -493.15);
	 setScrollFactor('flower1', 1.0, 1.0);
	 scaleObject('flower1', 0.9, 0.9);	
	 addLuaSprite('flower1', false);

	 makeLuaSprite('flower2', 'fakerBG/flower2', -631.8, -493.15);
	 setScrollFactor('flower2', 1.0, 1.0);
	 scaleObject('flower2', 0.9, 0.9);	
	 addLuaSprite('flower2', false);

	 makeAnimatedLuaSprite('static','fakerBG/daSTAT', -280, -145)
	 addAnimationByPrefix('static','fuzz','staticFLASH',24,true)
	 objectPlayAnimation('static','fuzz',false)
	 setProperty('static.visible', false)
	 scaleObject('static', 3.37, 2.55);
	 addLuaSprite('static', true);

	 makeLuaSprite('black', 'fakerBG/black', -631.8, -493.15);
	 scaleObject('black', 1, 1);
	 setObjectCamera('black', 'other')
	 setProperty('black.alpha', 0)
	 addLuaSprite('black', true);	
	 
	 --EXE Stage Assets

	 makeLuaSprite('whiteBG', 'flash', -630, -300);
	 addLuaSprite('whiteBG',false) 
	 setProperty('whiteBG.visible', false)
	 scaleObject('whiteBG', 1.2, 1.2);

	 makeLuaSprite('sky','sky',-630, -300)
	 addLuaSprite('sky',false) 
	 setProperty('sky.visible', false)
	 scaleObject('sky', 1.2, 1.2);

	 makeAnimatedLuaSprite('staticSky','Static Sky', -630, -300)
	 addAnimationByPrefix('staticSky','fuzzsky','static sky',24,true)
	 objectPlayAnimation('staticSky','fuzzsky',false)
	 setProperty('staticSky.visible', false)
	 addLuaSprite('staticSky', false);
	 setScrollFactor('staticSky', 1.2, 1.2);

	 makeLuaSprite('backtrees','backtrees',-600, -300)
	 addLuaSprite('backtrees',false) 
	 setProperty('backtrees.visible', false)
     setLuaSpriteScrollFactor('backtrees', 1.1, 1);
	 scaleObject('backtrees', 1.2, 1.2);

	 makeLuaSprite('deadtrees','deadtrees',-600, -300)
	 addLuaSprite('deadtrees',false) 
	 setProperty('deadtrees.visible', false)
     setLuaSpriteScrollFactor('deadtrees', 1.2, 1);
	 scaleObject('deadtrees', 1.2, 1.2);

	 makeLuaSprite('ground','ground',-800, -300)
	 addLuaSprite('ground',false) 
	 setProperty('ground.visible', false)
     setLuaSpriteScrollFactor('ground', 1.3, 1);
	 scaleObject('ground', 1.2, 1.2);

	 makeAnimatedLuaSprite('ExeAnimatedBG_Assets','ExeAnimatedBG_Assets', -600, -300)
	 addAnimationByPrefix('ExeAnimatedBG_Assets','bg','ExeBGAnim',24,true)
	 objectPlayAnimation('ExeAnimatedBG_Assets','bg',false)
	 setProperty('ExeAnimatedBG_Assets.visible', false)
	 addLuaSprite('ExeAnimatedBG_Assets', false);
	 setScrollFactor('ExeAnimatedBG_Assets', 1, 1);

	 makeLuaSprite('TailsCorpse','TailsCorpse', 515, 540)
	 addLuaSprite('TailsCorpse',false) 
	 setProperty('TailsCorpse.visible', false)
     setLuaSpriteScrollFactor('TailsCorpse', 1, 1);

	 --He will not be replaced

	 makeLuaSprite('ReplaceOne', 'i', 100, 50);
	 setObjectCamera('ReplaceOne', 'other')
	 setProperty('ReplaceOne.visible', false)
	 addLuaSprite('ReplaceOne', true);

	 makeLuaSprite('ReplaceTwo', 'will', 300, 125);
	 setObjectCamera('ReplaceTwo', 'other')
	 setProperty('ReplaceTwo.visible', false)
	 addLuaSprite('ReplaceTwo', true);

	 makeLuaSprite('ReplaceThree', 'not', 100, 250);
	 setObjectCamera('ReplaceThree', 'other')
	 setProperty('ReplaceThree.visible', false)
	 addLuaSprite('ReplaceThree', true);

	 makeLuaSprite('ReplaceFour', 'be', 350, 345);
	 setObjectCamera('ReplaceFour', 'other')
	 setProperty('ReplaceFour.visible', false)
	 addLuaSprite('ReplaceFour', true);

	 makeLuaSprite('ReplaceFourPointFive', 'RE', 665, 400);
	 setObjectCamera('ReplaceFourPointFive', 'other')
	 setProperty('ReplaceFourPointFive.visible', false)
	 addLuaSprite('ReplaceFourPointFive', true);

	 makeAnimatedLuaSprite('ReplaceFive','ReplaceShake', 600, 305)
	 setObjectCamera('ReplaceFive', 'other')
	 setProperty('ReplaceFive.visible', false)
	 addAnimationByPrefix('ReplaceFive','shake','shake',32,true)
	 objectPlayAnimation('ReplaceFive','shake',false)
	 scaleObject('ReplaceFive', 1.4, 1.4);
	 addLuaSprite('ReplaceFive', false);
	 
	 makeLuaSprite('red','redBG',-630, -300)
	 addLuaSprite('red',false) 
	 setProperty('red.visible', false)
	 scaleObject('red', 1.2, 1.2);

	 makeLuaSprite('blackTwo', 'fakerBG/black', -631.8, -493.15);
	 scaleObject('blackTwo', 2, 2);
	 setProperty('blackTwo.alpha', 0)
	 addLuaSprite('blackTwo', true);	

	 --Hud Tentacles

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

	 makeAnimatedLuaSprite('LOLTENTACLES','Static Tentacles', 0, 0)
	 addAnimationByPrefix('LOLTENTACLES','tenta','Tentacles',24,true)
	 objectPlayAnimation('LOLTENTACLES','tenta',false)
	 setProperty('LOLTENTACLES.alpha', 0);
	 setObjectCamera('LOLTENTACLES', 'other')
	 scaleObject('LOLTENTACLES', 1.01, 1.01)
	 addLuaSprite('LOLTENTACLES', true);

	 makeLuaSprite('stress', 'redvignette', 0, 0);
	 setProperty('stress.alpha', 0);
	 setObjectCamera('stress', 'other')
	 scaleObject('stress', 1.01, 1.01)
	 addLuaSprite('stress', true);

	 --Title Card

	 makeLuaSprite('TitleBG', 'StartScreens/hudcover', 0,0)
	 setObjectCamera('TitleBG', 'camother')
	 addLuaSprite('TitleBG', false)
 
	 makeLuaSprite('Circle', 'StartScreens/CircleForgottenRemnant', 1280,0)
	 setObjectCamera('Circle', 'camother')
	 addLuaSprite('Circle', true)
 
	 makeLuaSprite('Text', 'StartScreens/TextForgottenRemnant', -1280,0)
	 setObjectCamera('Text', 'camother')
	 addLuaSprite('Text', true)

	 --Hud Obstructors

	 makeAnimatedLuaSprite('ScreenStatic','fakerBG/daSTAT', 0, 0)
	 addAnimationByPrefix('ScreenStatic','fuzz','staticFLASH',24,true)
	 objectPlayAnimation('ScreenStatic','fuzz',false)
	 setProperty('ScreenStatic.alpha', 0)
	 scaleObject('ScreenStatic', 3.37, 2.55)
	 setObjectCamera('ScreenStatic', 'camother')
	 addLuaSprite('ScreenStatic', true);

	 makeLuaSprite('white', 'flash', -631.8, -493.15);
	 scaleObject('white', 2, 2);
	 setProperty('white.alpha', 0)
	 addLuaSprite('white', true);	

	 makeLuaSprite('ending', 'black', -631.8, -493.15);
	 scaleObject('ending', 2, 2);
	 setProperty('ending.alpha', 0)
	 addLuaSprite('ending', true);	



end

function onStepHit()

	--Suboptimal

	if getProperty('curStep') == 552 then
		setProperty('static.visible', true)
		setProperty('camHUD.visible', false)
		playSound('staticBUZZ', 0.3, 'flashOne')
	end

	if getProperty('curStep') == 555 then
		setProperty('static.visible', false)
		stopSound('flashOne')
	end
	
	if getProperty('curStep') == 567 then
		setProperty('static.visible', true)
		playSound('staticBUZZ', 0.3, 'flashOne')
	end

	if getProperty('curStep') == 569 then
		setProperty('static.visible', false)
		stopSound('flashOne')
	end

	if getProperty('curStep') == 576 then
		setProperty('static.visible', true)
		playSound('staticBUZZ', 0.3, 'flashOne')
	end

	if getProperty('curStep') == 578 then
		setProperty('static.visible', false)
		stopSound('flashOne')
	end

	if getProperty('curStep') == 600 then
		setProperty('static.visible', true)
		playSound('staticBUZZ', 0.3, 'flashOne')
	end

	if getProperty('curStep') == 602 then
		setProperty('static.visible', false)
		stopSound('flashOne')
	end

	if getProperty('curStep') == 608 then
		setProperty('static.visible', true)
		playSound('staticBUZZ', 0.3, 'flashOne')
	end

	if getProperty('curStep') == 610 then
		setProperty('static.visible', false)
		stopSound('flashOne')
	end

	if getProperty('curStep') == 638 then
		setProperty('static.visible', true)
		playSound('staticBUZZ', 0.3, 'flashOne')
	end

	if getProperty('curStep') == 640 then
		setProperty('static.visible', false)
		stopSound('flashOne')
	end

	if getProperty('curStep') == 672 then
		setProperty('static.visible', true)
		playSound('staticBUZZ', 0.3, 'flashOne')
	end

	if getProperty('curStep') == 674 then
		setProperty('static.visible', false)
		stopSound('flashOne')
	end

	if getProperty('curStep') == 679 then
		setProperty('static.visible', true)
		playSound('staticBUZZ', 0.3, 'flashOne')
	end

	if getProperty('curStep') == 682 then
		setProperty('static.visible', false)
		stopSound('flashOne')
	end

	if getProperty('curStep') == 689 then
		setProperty('static.visible', true)
		playSound('staticBUZZ', 0.3, 'flashOne')
	end

	if getProperty('curStep') == 691 then
		setProperty('static.visible', false)
		stopSound('flashOne')
	end

	if getProperty('curStep') == 707 then
		setProperty('static.visible', true)
		playSound('staticBUZZ', 0.3, 'flashOne')
	end

	if getProperty('curStep') == 709 then
		setProperty('static.visible', false)
		stopSound('flashOne')
	end

	if getProperty('curStep') == 714 then
		setProperty('static.visible', true)
		playSound('staticBUZZ', 0.3, 'flashOne')
	end

	if getProperty('curStep') == 716 then
		setProperty('static.visible', false)
		stopSound('flashOne')
	end

	if getProperty('curStep') == 726 then
		setProperty('static.visible', true)
		playSound('staticBUZZ', 0.3, 'flashOne')
	end

	if getProperty('curStep') == 728 then
		setProperty('static.visible', false)
		stopSound('flashOne')
	end

	if getProperty('curStep') == 732 then
		setProperty('static.visible', true)
		playSound('staticBUZZ', 0.3, 'flashOne')
	end

	if getProperty('curStep') == 734 then
		setProperty('static.visible', false)
		stopSound('flashOne')
	end

	if getProperty('curStep') == 745 then
		setProperty('static.visible', true)
		playSound('staticBUZZ', 0.3, 'flashOne')
	end

	if getProperty('curStep') == 747 then
		setProperty('static.visible', false)
		stopSound('flashOne')
	end

	if getProperty('curStep') == 756 then
		setProperty('static.visible', true)
		playSound('staticBUZZ', 0.3, 'flashOne')
	end

	if getProperty('curStep') == 758 then
		setProperty('static.visible', false)
		stopSound('flashOne')
	end

	if getProperty('curStep') == 782 then
		setProperty('static.visible', true)
		playSound('staticBUZZ', 0.5, 'flashOne')
	end

	if getProperty('curStep') == 785 then
		setProperty('static.visible', false)
		stopSound('flashOne')
	end

	if getProperty('curStep') == 800 then
		setProperty('static.visible', true)
		playSound('staticBUZZ', 0.3, 'flashOne')
	end

	if getProperty('curStep') == 832 then
		setProperty('static.visible', false)
		setProperty('black.alpha', 1)
		stopSound('flashOne')
	end
	
	
	if getProperty('curStep') == 863 then

		--Moves BF and GF

		doTweenX('bfTweenX', 'boyfriend', 925, 0.001, 'linear')
		doTweenY('bfTWeenY', 'boyfriend', 590, 0.001, 'linear')

		doTweenX('gfTweenX', 'gf', 680, 0.001, 'linear')
		doTweenY('gfTWeenY', 'gf', 360, 0.001, 'linear')

	end

	if getProperty('curStep') == 864 then

		--Moves EXE

		setProperty('dad.x', -100)
		setProperty('dad.y', 175)

		setProperty('black.alpha', 0)

		setProperty('camHUD.visible', true) 

		setProperty('cameraSpeed', 2.2);

		setProperty('fakersky.visible', false)
		setProperty('mountains.visible', false)
		setProperty('grass.visible', false)
		setProperty('tree2.visible', false)
		setProperty('pillar2.visible', false)
		setProperty('plant.visible', false)
		setProperty('tree1.visible', false)
		setProperty('pillar1.visible', false)
		setProperty('flower1.visible', false)
		setProperty('flower2.visible', false)
	
		--Turn to EXE Stage 

		setProperty('sky.visible', true)
		setProperty('backtrees.visible', true)
		setProperty('deadtrees.visible', true)
		setProperty('ground.visible', true)
		setProperty('ExeAnimatedBG_Assets.visible', true)
		setProperty('TailsCorpse.visible', true)

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