function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	
    precacheImage('slash_warning_sheet');
	precacheSound('Dodgue');
end

function onEvent(name, value1, value2)
    if name == "dodguesl4sh" then
    --Get Dodge time
    DodgeTime = (value1);
	
    --Make Dodge Sprite
	makeAnimatedLuaSprite('slash_warning_sheet', 'slash_warning_sheet', 400, 200);
    luaSpriteAddAnimationByPrefix('slash_warning_sheet', 'slash warning', 'slash warning', 25, true);
	luaSpritePlayAnimation('slash_warning_sheet', 'slash warning');
	setObjectCamera('slash_warning_sheet', 'other');
	scaleLuaSprite('slash_warning_sheet', 1.50, 1.50); 
    addLuaSprite('slash_warning_sheet', true); 
	
	--Set values so you can dodge
	canDodge = true;
	runTimer('Died', DodgeTime);
	
	end
end

function onUpdate()
   if canDodge == true and keyJustPressed('space') then
   
   Dodged = true;
   playSound('Dodgue', 0.2);
   characterPlayAnim('boyfriend', 'dodge', true);
   setProperty('boyfriend.specialAnim', true);
   removeLuaSprite('slash_warning_sheet');
   canDodge = false
   
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   setProperty('health', 0);
   
   elseif tag == 'Died' and Dodged == true then
   Dodged = false
   
   end
end