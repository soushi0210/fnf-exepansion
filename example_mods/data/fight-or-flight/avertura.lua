function onCreate()
	makeAnimatedLuaSprite('black bg','black fadeout',0,0);  --sprite stuff
	scaleObject('black bg',5,5);
	setScrollFactor('black bg',0,0);
	setObjectCamera('black bg','other');
	makeLuaSprite('titlecircle','Circle-fight-or-flight',1000,0);
	setObjectCamera('titlecircle','other');
	setScrollFactor('titlecircle', 0, 0);
	makeLuaSprite('Text-fight-or-flight','Text-fight-or-flight',-300,-0);
	setObjectCamera('Text-fight-or-flight','other');
	setScrollFactor('Text-fight-or-flight', 0, 0);



	addLuaSprite('black bg',true);
	addLuaSprite('titlecircle',true);
	addLuaSprite('text2',true);
	addLuaSprite('Text-fight-or-flight',true);

	doTweenX('movecircle','titlecircle','0','0.33','linear'); -- cool startcircle animation shit
	doTweenX('movetext','Text-fight-or-flight','0','0.3','linear');
	runTimer('timer1', 0.35);
end
	function onTimerCompleted(tag)
		if tag == 'timer1' then
	doTweenX('movetext','text2','740','0.3','linear');
	runTimer('timer2',0.7);
else if tag == 'timer2' then
	addAnimationByPrefix('black bg','bye','black tween',60,false); -- I SWEAR I TRIED TO USE AN ALPHA TWEEN IT JUST WASNT WORKING FOR SOME REASON
	runTimer('timer3',1);
else
	removeLuaSprite('black bg',false);
	doTweenX('moveText-fight-or-flightbye','Text-fight-or-flight','-1400','0.2','linear');
	doTweenX('movecirclebye','titlecircle','1200','0.2','linear');
	doTweenX('movetext','text2','1600','0.2','linear');
	end
	end
end