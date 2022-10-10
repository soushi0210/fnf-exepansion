package;

import flixel.util.FlxTimer;
import flixel.input.gamepad.FlxGamepad;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;
import flixel.addons.transition.FlxTransitionableState;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import lime.utils.Assets;


#if windows
import Discord.DiscordClient;
#end

using StringTools;

class GalleryState extends MusicBeatState // REWRITE FREEPLAY!?!?!? HELL YEA!!!!!
{
	var whiteshit:FlxSprite;

	var curSelected:Int = 0;

	var imageArray:Array<String> = ["a small error","divide","gamerX","Marstarbro","Razencro","Sunkeh"];

	var boxgrp:FlxTypedSpriteGroup<FlxSprite>;

	var bg:FlxSprite;

	var cdman:Bool = true;

	var fuck:Int = 0;

	var songtext:FlxText;
	var prevsongtext:FlxText;

	override function create()
	{
		whiteshit = new FlxSprite().makeGraphic(1280, 720, FlxColor.WHITE);
		whiteshit.alpha = 0;

		bg = new FlxSprite().loadGraphic(Paths.image('backgroundlool'));
		bg.screenCenter();
		bg.setGraphicSize(1280, 720);
		add(bg);

		boxgrp = new FlxTypedSpriteGroup<FlxSprite>();

		songtext = new FlxText(0, FlxG.height - 100, imageArray[curSelected], 25);
		songtext.setFormat("Sonic CD Menu Font Regular", 25, FlxColor.fromRGB(255, 255, 255));
		songtext.x = (FlxG.width / 2) - (25 / 2 * imageArray[curSelected].length);
		add(songtext);

		FlxG.log.add('sexo: ' + (songtext.width / imageArray[curSelected].length));

		prevsongtext = new FlxText(0, FlxG.height - 100, imageArray[curSelected], 25);
		prevsongtext.x = (FlxG.width / 2) - (25 / 2 * imageArray[curSelected].length);
		prevsongtext.setFormat("Sonic CD Menu Font Regular", 25, FlxColor.fromRGB(255, 255, 255));
		
		add(prevsongtext);

		for (i in 0...imageArray.length)
		{
			
			FlxG.log.add(imageArray[i] + ' found');
	
			var box:FlxSprite = new FlxSprite(fuck * 780, 0).loadGraphic(Paths.image('FreeBox'));
			boxgrp.add(box);

			var char:FlxSprite = new FlxSprite(fuck * 780, 0).loadGraphic(Paths.image('cameostuff/' + imageArray[fuck].toLowerCase()));
			boxgrp.add(char);

			var daStatic:FlxSprite = new FlxSprite();
			daStatic.frames = Paths.getSparrowAtlas('daSTAT');	
			daStatic.alpha = 0.2;	
			daStatic.setGraphicSize(620, 465);			
			daStatic.setPosition((fuck * 780) + 440, 211);	
			daStatic.animation.addByPrefix('static','staticFLASH', 24, true);			
			boxgrp.add(daStatic);
			daStatic.animation.play('static');

			fuck += 1;
		}

		if (imageArray[0] == 'lol')
		{
			remove(songtext);
			remove(prevsongtext);
		}
		
		add(boxgrp);

		 #if windows
		 // Updating Discord Rich Presence
		 DiscordClient.changePresence("In the Freeplay Menu", null);
		 #end

		add(whiteshit);

		super.create();
	}



	override function update(elapsed:Float)
	{
		super.update(elapsed);

		var upP = FlxG.keys.justPressed.LEFT || FlxG.keys.justPressed.A;
		var downP = FlxG.keys.justPressed.RIGHT || FlxG.keys.justPressed.D;
		var accepted = controls.ACCEPT;
		
		
		var gamepad:FlxGamepad = FlxG.gamepads.lastActive;

		if (gamepad != null)
		{
			if (gamepad.justPressed.DPAD_UP)
			{
				changeSelection(-1);
			}
			if (gamepad.justPressed.DPAD_DOWN)
			{
				changeSelection(1);
			}
		}

		if (cdman)
		{
			if (upP)
			{
				changeSelection(-1);
			}
			if (downP)
			{
				changeSelection(1);
			}
		}
		

		
		if (controls.BACK)
		{
			FlxG.switchState(new ExtraState());
		}
		
	}

	
	function changeSelection(change:Int = 0)
	{

		#if !switch
		// NGio.logEvent('Fresh');
		#end
	
		if (change == 1 && curSelected != imageArray.length - 1) 
		{
			cdman = false;
			FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);
			FlxTween.tween(boxgrp ,{x: boxgrp.x - 780}, 0.2, {ease: FlxEase.expoOut, onComplete: function(sus:FlxTween)
				{
					cdman = true;
				}
			});
			
		}
		else if (change == -1 && curSelected != 0) 
		{
			cdman = false;
			FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);
			FlxTween.tween(boxgrp ,{x: boxgrp.x + 780}, 0.2, {ease: FlxEase.expoOut, onComplete: function(sus:FlxTween)
				{
					cdman = true;
				}
			});

		}
		if ((change == 1 && curSelected != imageArray.length - 1) || (change == -1 && curSelected > 0)) // This is a.
		{
			songtext.alpha = 0;
			songtext.text = imageArray[curSelected + change];
			if (imageArray[curSelected + change] == 'black-sun') songtext.text = 'black sun';
			FlxTween.tween(songtext ,{alpha: 1, x: (FlxG.width / 2) - (25 / 2 * imageArray[curSelected + change].length)}, 0.2, {ease: FlxEase.expoOut});
			FlxTween.tween(prevsongtext ,{alpha: 0, x: (FlxG.width / 2) - (25 / 2 * imageArray[curSelected + change].length)}, 0.2, {ease: FlxEase.expoOut});
		}

		curSelected += change;
		if (curSelected < 0) curSelected = 0;
		else if (curSelected > imageArray.length - 1) curSelected = imageArray.length - 1;
		
		// NGio.logEvent('Fresh');
		

	 	
	}
	
}