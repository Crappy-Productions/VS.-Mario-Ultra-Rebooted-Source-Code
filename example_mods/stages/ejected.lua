function onCreate()
	-- background shit
	makeLuaSprite('sky', 'ejected/sky', -2650, -3100);
	setScrollFactor('sky', 0.9, 0.9);
	
	makeLuaSprite('cloudsfg', 'ejected/fgClouds', -2650, -100);
	setScrollFactor('cloudsfg', 0.7, 0.7);
	
	makeAnimatedLuaSprite('buildingA', 'ejected/buildingA', -200, -2000)
	luaSpriteAddAnimationByPrefix('buildingA', 'buildingA', 'buildingA', 24, true)
	scaleObject('buildingA', 1, 1);
	setScrollFactor('buildingA', 1.3, 1);

	makeAnimatedLuaSprite('buildingA2', 'ejected/buildingA2', -200, -2600)
	luaSpriteAddAnimationByPrefix('buildingA2', 'buildingA2', 'buildingA2', 24, true)
	scaleObject('buildingA2', 1, 1);
	setScrollFactor('buildingA2', 1.3, 1);

	makeAnimatedLuaSprite('buildingB', 'ejected/buildingB', -1090, -930)
	luaSpriteAddAnimationByPrefix('buildingB', 'buildingB', 'buildingB', 24, true)
	scaleObject('buildingB', 1, 1);
	setScrollFactor('buildingB', 1.3, 1);

	makeAnimatedLuaSprite('buildingB2', 'ejected/buildingB2', 1060, -930)
	luaSpriteAddAnimationByPrefix('buildingB2', 'buildingB2', 'buildingB2', 24, true)
	scaleObject('buildingB2', 1, 1);
	setScrollFactor('buildingB2', 1.3, 1);

	makeAnimatedLuaSprite('scrollingClouds', 'ejected/scrollingClouds', -1260, -930)
	luaSpriteAddAnimationByPrefix('scrollingClouds', 'scrollingClouds', 'scrollingClouds', 24, true)
	scaleObject('scrollingClouds', 1, 1);

	makeAnimatedLuaSprite('speedLines', 'ejected/speedLines', -560, -930)
	luaSpriteAddAnimationByPrefix('speedLines', 'speedLines', 'speedLines', 24, true)
	scaleObject('speedLines', 1, 1);

	addLuaSprite('sky', false);

	addLuaSprite('cloudsfg', false);

	addLuaSprite('buildingB2', false);
	 objectPlayAnimation('buildingB2', 'buildingB2');

	addLuaSprite('buildingA', false);
	 objectPlayAnimation('buildingA', 'buildingA');

	addLuaSprite('buildingA2', false);
	 objectPlayAnimation('buildingA2', 'buildingA2');

	addLuaSprite('buildingB', false);
	 objectPlayAnimation('buildingB', 'buildingB');

	addLuaSprite('speedLines', false);
	 objectPlayAnimation('speedLines', 'speedLines');

	addLuaSprite('scrollingClouds', true);
	 objectPlayAnimation('scrollingClouds', 'scrollingClouds');
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end