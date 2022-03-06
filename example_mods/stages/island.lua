function onCreate()
	-- background shit
	makeLuaSprite('sky', 'sky', -290, -220);
	setScrollFactor('sky', 0.9, 0.9);

	makeLuaSprite('back', 'back', -130, -340);
	setScrollFactor('back', 0.9, 0.9);

	makeAnimatedLuaSprite('boshi', 'boshi',720,250)addAnimationByPrefix('boshi', 'dance', 'boshi',24,true)
	objectPlayAnimation('boshi','dance',false)
	setScrollFactor('boshi', 1.0, 1.0);

	makeAnimatedLuaSprite('egg', 'egg',1350,335)addAnimationByPrefix('egg', 'bounce', 'bounce',35,true)
	objectPlayAnimation('egg','bounce',false)	
	setScrollFactor('egg', 1.0, 1.0);

	makeLuaSprite('middle', 'middle', -245, 130);
	setScrollFactor('middle', 1.0, 1.0);

	makeLuaSprite('front_bushes', 'front_bushes', -150, 745);
	setScrollFactor('front_bushes', 1.1, 1.1);

	addLuaSprite('sky', false);
	addLuaSprite('back', false);
	addLuaSprite('boshi', false);
	addLuaSprite('egg', false);
	addLuaSprite('middle', false);
	addLuaSprite('front_bushes', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end