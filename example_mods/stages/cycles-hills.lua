function onCreate()
	makeLuaSprite('sky', 'LordXStage/sky', -631.8, -493.15);
	setScrollFactor('sky', 0.9, 0.9);
	addLuaSprite('sky', false);	

	makeLuaSprite('hills1', 'LordXStage/hills1', -631.8, -493.15);
	setScrollFactor('hills1', 0.9, 0.9);
	addLuaSprite('hills1', false);	

	makeLuaSprite('hills2', 'LordXStage/hills2', -631.8, -493.15);
	setScrollFactor('hills2', 0.9, 0.9);
	addLuaSprite('hills2', false);	

	makeLuaSprite('floor', 'LordXStage/floor', -631.8, -493.15);
	setScrollFactor('floor', 0.9, 0.9);
	addLuaSprite('floor', false);	

	makeLuaSprite('smallflower', 'LordXStage/smallflower', -631.8, -493.15);
	setScrollFactor('smallflower', 0.9, 0.9);
	addLuaSprite('smallflower', false);	

	makeAnimatedLuaSprite('NotKnuckles_Assets','LordXStage/NotKnuckles_Assets', 1446,-590)
	addAnimationByPrefix('NotKnuckles_Assets','Notknuckles','Notknuckles',24,true)
	addLuaSprite('NotKnuckles_Assets',false)
	objectPlayAnimation('NotKnuckles_Assets','Notknuckles',false)

	makeAnimatedLuaSprite('WeirdAssFlower_Assets','LordXStage/WeirdAssFlower_Assets', 1446,-590)
	addAnimationByPrefix('WeirdAssFlower_Assets','flower','flower',24,true)
	addLuaSprite('WeirdAssFlower_Assets',false)
	objectPlayAnimation('WeirdAssFlower_Assets','flower',false)

	makeLuaSprite('smallflowe2', 'LordXStage/smallflowe2', -631.8, -493.15);
	setScrollFactor('smallflowe2', 0.9, 0.9);
	addLuaSprite('smallflowe2', true);	

	makeLuaSprite('tree', 'LordXStage/tree', -631.8, -493.15);
	setScrollFactor('tree', 0.9, 0.9);
	addLuaSprite('tree', true);	
end


