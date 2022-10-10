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
end

